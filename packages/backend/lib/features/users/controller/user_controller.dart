// ignore_for_file:  sort_constructors_first, avoid_print, lines_longer_than_80_chars
// ignore_for_file: public_member_api_docs

import 'dart:convert';

import 'package:backend/configs/constants.dart';
import 'package:backend/exceptions/database_exception.dart';
import 'package:backend/exceptions/invalid_input_exception.dart';
import 'package:backend/exceptions/notfound_exception.dart';
import 'package:backend/features/users/model/insert_user_dto/insert_user_dto.dart';
import 'package:backend/features/users/model/update_user_dto/update_user_dto.dart';
import 'package:backend/features/users/model/user.dart';
import 'package:backend/features/users/repository/user_repository.dart';
import 'package:backend/helpers/api_helper.dart';
import 'package:backend/response/result.dart';
import 'package:either_dart/either.dart';

///Controller dùng để quy đổi dữ liệu thô (body, header,...)
class UserControler {
  final UserRepository _repository;
  const UserControler(
    this._repository,
  );

  Future<Either<YinFailure, YinUser>> createUserProfile({
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
      final user = await _repository.createUserProfile(dto: dto);

      return Right(user);
    } catch (e, s) {
      return APIHelper.handleException(
        exceptions: exceptions,
        e: e,
        s: s,
      );
    }
  }

  Future<Either<YinFailure, YinUser>> updateUserProfile({
    required String body,
    required String id,
  }) async {
    final exceptions = <Type, int>{
      NotFoundException: 404,
      InvalidInputException: 400,
      InvalidUsernameException: 400,
      UsernameExistException: 400,
      InvalidPasswordException: 400,
      DataBaseException: 500,
    };
    try {
      final dto = UpdateYinUserDto.fromJson(
        jsonDecode(body) as Map<String, dynamic>,
      );
      final result = await _repository.updateUserProfile(dto: dto, id: id);
      return Right(result);
    } catch (e, s) {
      return APIHelper.handleException(
        exceptions: exceptions,
        e: e,
        s: s,
      );
    }
  }

  Future<Either<YinFailure, List<YinUser>>> getUsers() async {
    final exceptions = <Type, int>{
      NotFoundException: 404,
      DataBaseException: 500,
    };
    try {
      final users = await _repository.getUsers();
      return Right(users);
    } catch (e, s) {
      return APIHelper.handleException(
        exceptions: exceptions,
        e: e,
        s: s,
      );
    }
  }

  Future<Either<YinFailure, YinUser>> getUserByID(String id) async {
    final exceptions = <Type, int>{
      NotFoundException: 404,
      DataBaseException: 500,
    };
    try {
      final users = await _repository.getUsers();
      final idx = users.indexWhere((element) => element.id == id);
      if (idx > -1) {
        return Right(users[idx]);
      } else {
        return Left(
          YinFailure(
            time: DateTime.now(),
            errorCode: Strings.notFoundErrorCode,
            statusCode: 404,
          ),
        );
      }
    } catch (e, s) {
      return APIHelper.handleException(
        exceptions: exceptions,
        e: e,
        s: s,
      );
    }
  }

  Future<Either<YinFailure, String>> deleteUserByID(String id) async {
    final exceptions = <Type, int>{
      NotFoundException: 404,
      DataBaseException: 500,
    };
    try {
      final userId = await _repository.deleteUserByID(id);
      return Right(userId);
    } catch (e, s) {
      return APIHelper.handleException(
        exceptions: exceptions,
        e: e,
        s: s,
      );
    }
  }
}
