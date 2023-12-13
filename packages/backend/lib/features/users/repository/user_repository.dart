// ignore_for_file:  sort_constructors_first, avoid_print, unused_catch_clause
// ignore_for_file: public_member_api_docs

import 'package:backend/configs/constants.dart';
import 'package:backend/exceptions/database_exception.dart';
import 'package:backend/exceptions/invalid_input_exception.dart';
import 'package:backend/exceptions/unknown_exception.dart';
import 'package:backend/features/users/datasource/user_datasource.dart';
import 'package:backend/features/users/model/insert_user_dto/insert_user_dto.dart';
import 'package:backend/features/users/model/user.dart';

/// UserRepository use for validate input from dto
class UserRepository {
  final UserDataSource _dataSource;
  UserRepository(
    this._dataSource,
  );

  ///
  Future<YinUser> createUserProfile({
    required InsertYinUserDto dto,
  }) async {
    try {
      //Validate input:
      if ((dto.username ?? '').length < 6) {
        throw InvalidInputException(
          time: DateTime.now(),
          errorCode: Strings.invalidUsernameErrorCode,
        );
      }
      if ((dto.password ?? '').length < 6) {
        throw InvalidInputException(
          time: DateTime.now(),
          errorCode: Strings.invalidPwErrorCode,
        );
      }
      final userDB = await _dataSource.insertUser(dto: dto);
      return userDB;
    } on DataBaseException catch (databaseException) {
      rethrow;
    } on InvalidInputException catch (ee) {
      rethrow;
    } catch (e) {
      throw UnknownException(time: DateTime.now(), errorCode: e.toString());
    }
  }

  Future<List<YinUser>> getUsers() async {
    try {
      final users = await _dataSource.getUsers();
      return users;
    } on DataBaseException catch (databaseException) {
      rethrow;
    } on InvalidInputException catch (ee) {
      rethrow;
    } catch (e) {
      throw UnknownException(time: DateTime.now(), errorCode: e.toString());
    }
  }
}
