// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'dart:io';

import 'package:backend/configs/constants.dart';
import 'package:backend/exceptions/database_exception.dart';
import 'package:backend/exceptions/invalid_input_exception.dart';
import 'package:backend/exceptions/notfound_exception.dart';
import 'package:backend/features/authentication/model/login_dto/login_dto.dart';
import 'package:backend/features/authentication/model/token.dart';
import 'package:backend/features/authentication/repository/authentication_repository.dart';
import 'package:backend/features/users/model/user.dart';
import 'package:backend/features/users/repository/user_repository.dart';
import 'package:backend/response/result.dart';
import 'package:backend/services/encrypt.dart';
import 'package:backend/services/jwt_service.dart';
import 'package:either_dart/either.dart';

import 'package:backend/features/users/model/insert_user_dto/insert_user_dto.dart';

class AuthenticationController {
  final UserRepository userRepository;
  final AuthenticationRepository authenticationRepository;

  AuthenticationController({
    required this.userRepository,
    required this.authenticationRepository,
  });

  Future<Either<YinFailure, YinToken>> doLogin(String body) async {
    final exceptions = <Type, int>{
      InvalidInputException: 400,
      InvalidUsernameException: 400,
      InvalidPasswordException: 400,
      DataBaseException: 500,
    };
    try {
      final dto = LoginDto.fromJson(
        jsonDecode(body) as Map<String, dynamic>,
      );
      if ((dto.username ?? '').length < 6) {
        throw InvalidUsernameException();
      }
      if ((dto.password ?? '').length < 6 || (dto.password ?? '').length > 20) {
        throw InvalidPasswordException();
      }
      final users = await userRepository.getUsers();
      final idx = users.indexWhere((user) => user.username == dto.username);
      if (idx < 0) {
        throw InvalidUsernameException();
      } else {
        if (users[idx].password !=
            EncryptUtil.generateMd5(dto.password ?? '')) {
          throw IncorectPasswordException();
        } else {
          //gentoken
          final now = DateTime.now();
          final map = <String, dynamic>{
            'id': users[idx].id,
            'username': users[idx].username,
            'password': users[idx].password,
            'exp': now.add(const Duration(hours: 1)).toIso8601String(),
          };
          final accessToken = JWTService(AppConstant.env).sign(map);
          // final refreshToken = JWTService(AppConstant.env).sign(
          //   map,
          //   key: AppConstant.env['JWT_SECRET_REFRESH_TOKEN'],
          // );

          final newToken = YinToken(
            userId: users[idx].id,
            accessToken: accessToken,
            // refreshToken: YinRefreshToken(value: refreshToken),
            createdAt: now,
            exp: now.add(const Duration(hours: 1)),
          );

          final dbTokens = await authenticationRepository.getTokens(
            objectToMap: newToken.toJson(),
          );
          final idx2 = dbTokens
              .indexWhere((element) => element.userId == newToken.userId);
          if (idx2 < 0) {
            //insert
            await authenticationRepository.insertToken(
              userId: users[idx].id,
              newToken: newToken,
            );
          } else {
            final updateToken = dbTokens[idx2].copyWith(
              accessToken: accessToken,
              createdAt: DateTime.now(),
            );
            //update
            await authenticationRepository.updateToken(
              userId: users[idx].id,
              newToken: updateToken,
            );
            return Right(updateToken);
          }

          //renewToken
          return Right(newToken);
        }
      }
    } catch (e) {
      return Left(
        YinFailure(
          time: DateTime.now(),
          errorCode: exceptions.keys.contains(e.runtimeType)
              ? 'Error: ${e.runtimeType}!'
              : 'Un-Handled-Exception!',
          statusCode: exceptions.keys.contains(e.runtimeType)
              ? (exceptions[e.runtimeType] ?? 500)
              : 501,
        ),
      );
    }
  }

  Future<Either<YinFailure, bool>> doLogout({
    required Map<String, dynamic> headers,
  }) async {
    final exceptions = <Type, int>{
      NotFoundException: 404,
      DataBaseException: 500,
    };
    try {
      final authHeader = headers[HttpHeaders.authorizationHeader] ?? '';
      final token = authHeader.toString().replaceFirst('Bearer ', '');
      final dbTokens = await authenticationRepository.getTokens();
      final idx =
          dbTokens.indexWhere((element) => element.accessToken == token);
      if (idx > -1) {
        await authenticationRepository.deleteToken(dbTokens[idx].userId);
        return const Right(true);
      } else {
        throw NotFoundException();
      }
    } catch (e) {
      return Left(
        YinFailure(
          time: DateTime.now(),
          errorCode: exceptions.keys.contains(e.runtimeType)
              ? 'Error: ${e.runtimeType}!'
              : 'Un-Handled-Exception!',
          statusCode: exceptions.keys.contains(e.runtimeType)
              ? (exceptions[e.runtimeType] ?? 500)
              : 501,
        ),
      );
    }
  }

  ///ADMIN
  Future<Either<YinFailure, List<YinToken>>> getTokens() async {
    final exceptions = <Type, int>{
      NotFoundException: 404,
      DataBaseException: 500,
    };
    try {
      final tokens = await authenticationRepository.getTokens();

      return Right(tokens);
    } catch (e) {
      return Left(
        YinFailure(
          time: DateTime.now(),
          errorCode: exceptions.keys.contains(e.runtimeType)
              ? 'Error: ${e.runtimeType}!'
              : 'Un-Handled-Exception!',
          statusCode: exceptions.keys.contains(e.runtimeType)
              ? (exceptions[e.runtimeType] ?? 500)
              : 501,
        ),
      );
    }
  }

  Future<Either<YinFailure, YinUser>> doRegister({
    required String body,
  }) async {
    final exceptions = <Type, int>{
      InvalidInputException: 400,
      InvalidUsernameException: 400,
      UsernameExistException: 400,
      InvalidPasswordException: 400,
      DataBaseException: 500,
    };

    try {
      final dto = InsertYinUserDto.fromJson(
        jsonDecode(body) as Map<String, dynamic>,
      );
      final user = await userRepository.createUserProfile(dto: dto);

      return Right(user);
    } catch (e) {
      return Left(
        YinFailure(
          time: DateTime.now(),
          errorCode: exceptions.keys.contains(e.runtimeType)
              ? 'Error: ${e.runtimeType}!'
              : 'Un-Handled-Exception!',
          statusCode: exceptions.keys.contains(e.runtimeType)
              ? (exceptions[e.runtimeType] ?? 500)
              : 501,
        ),
      );
    }
  }
}
