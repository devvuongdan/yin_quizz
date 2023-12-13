// ignore_for_file:  sort_constructors_first, avoid_print, lines_longer_than_80_chars
// ignore_for_file: public_member_api_docs

import 'package:backend/configs/constants.dart';
import 'package:backend/exceptions/database_exception.dart';
import 'package:backend/exceptions/invalid_input_exception.dart';
import 'package:backend/exceptions/unknown_exception.dart';
import 'package:backend/features/users/model/insert_user_dto/insert_user_dto.dart';
import 'package:backend/features/users/model/insert_user_dto/insert_user_output.dart';
import 'package:backend/features/users/model/user.dart';
import 'package:backend/features/users/repository/user_repository.dart';
import 'package:backend/response/result.dart';
import 'package:either_dart/either.dart';

class UserControler {
  final UserRepository _repository;
  const UserControler(
    this._repository,
  );

  Future<Either<YinFailure, InsertYinUserOutput>> createUserProfile({
    required InsertYinUserDto dto,
  }) async {
    try {
      final user = await _repository.createUserProfile(dto: dto);
      final output = InsertYinUserOutput(
        id: user.id,
        username: user.username,
      );
      return Right(output);
    } on InvalidInputException catch (_) {
      print(
        'Err: UserControler InvalidInputException ${_.errorCode}',
      );
      return Left(
        YinFailure(
          time: DateTime.now(),
          errorCode: _.errorCode,
          statusCode: 400,
        ),
      );
    } on DataBaseException catch (_) {
      print(
        'Err: UserControler DataBaseException ${_.errorCode}',
      );
      return Left(
        YinFailure(
          time: DateTime.now(),
          errorCode: _.errorCode,
          statusCode: 500,
        ),
      );
    } on UnknownException catch (_) {
      print(
        'Err: UserControler UnknownException ${_.errorCode}',
      );
      return Left(
        YinFailure(
          time: DateTime.now(),
          errorCode: _.errorCode,
          statusCode: 501,
        ),
      );
    } catch (e) {
      print(
        'Err: UserControler UnknownException',
      );
      return Left(
        YinFailure(
          time: DateTime.now(),
          errorCode: e.toString(),
          statusCode: 501,
        ),
      );
    }
  }

  Future<Either<YinFailure, List<YinUser>>> getUsers() async {
    try {
      final users = await _repository.getUsers();
      return Right(users);
    } on InvalidInputException catch (_) {
      print(
        'Err: UserControler InvalidInputException ${_.errorCode}',
      );
      return Left(
        YinFailure(
          time: DateTime.now(),
          errorCode: _.errorCode,
          statusCode: 400,
        ),
      );
    } on DataBaseException catch (_) {
      print(
        'Err: UserControler DataBaseException ${_.errorCode}',
      );
      return Left(
        YinFailure(
          time: DateTime.now(),
          errorCode: _.errorCode,
          statusCode: 500,
        ),
      );
    } on UnknownException catch (_) {
      print(
        'Err: UserControler UnknownException ${_.errorCode}',
      );
      return Left(
        YinFailure(
          time: DateTime.now(),
          errorCode: _.errorCode,
          statusCode: 501,
        ),
      );
    } catch (e) {
      print(
        'Err: UserControler UnknownException',
      );
      return Left(
        YinFailure(
          time: DateTime.now(),
          errorCode: e.toString(),
          statusCode: 501,
        ),
      );
    }
  }

  Future<Either<YinFailure, YinUser>> getUserByID(String id) async {
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
    } on InvalidInputException catch (_) {
      print(
        'Err: UserControler InvalidInputException ${_.errorCode}',
      );
      return Left(
        YinFailure(
          time: DateTime.now(),
          errorCode: _.errorCode,
          statusCode: 400,
        ),
      );
    } on DataBaseException catch (_) {
      print(
        'Err: UserControler DataBaseException ${_.errorCode}',
      );
      return Left(
        YinFailure(
          time: DateTime.now(),
          errorCode: _.errorCode,
          statusCode: 500,
        ),
      );
    } on UnknownException catch (_) {
      print(
        'Err: UserControler UnknownException ${_.errorCode}',
      );
      return Left(
        YinFailure(
          time: DateTime.now(),
          errorCode: _.errorCode,
          statusCode: 501,
        ),
      );
    } catch (e) {
      print(
        'Err: UserControler UnknownException',
      );
      return Left(
        YinFailure(
          time: DateTime.now(),
          errorCode: e.toString(),
          statusCode: 501,
        ),
      );
    }
  }
}
