// ignore_for_file:  sort_constructors_first, avoid_print, unused_catch_clause
// ignore_for_file: public_member_api_docs

import 'package:backend/exceptions/invalid_input_exception.dart';
import 'package:backend/exceptions/notfound_exception.dart';
import 'package:backend/features/users/datasource/user_datasource.dart';
import 'package:backend/features/users/model/insert_user_dto/insert_user_dto.dart';
import 'package:backend/features/users/model/update_user_dto/update_user_dto.dart';
import 'package:backend/features/users/model/user.dart';
import 'package:backend/services/encrypt.dart';

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
        throw InvalidUsernameException();
      }
      if ((dto.password ?? '').length < 6 || (dto.password ?? '').length > 20) {
        throw InvalidPasswordException();
      }
      final userDB = await _dataSource.insertUser(
        dto:
            dto.copyWith(password: EncryptUtil.generateMd5(dto.password ?? '')),
      );
      return userDB;
    } catch (e) {
      rethrow;
    }
  }

  ///
  Future<YinUser> updateUserProfile({
    required UpdateYinUserDto dto,
    required String id,
  }) async {
    try {
      //Validate input:
      if ((dto.password ?? '').length < 6) {
        throw InvalidPasswordException();
      }
      final userDB = await _dataSource.updateUser(dto: dto, id: id);
      return userDB;
    } catch (e) {
      rethrow;
    }
  }

  Future<List<YinUser>> getUsers() async {
    try {
      final users = await _dataSource.getUsers();
      return users;
    } catch (e) {
      rethrow;
    }
  }

  Future<String> deleteUserByID(String id) async {
    try {
      final users = await getUsers();
      final idx = users.indexWhere((element) => element.id == id);
      if (idx < 0) {
        throw NotFoundException();
      } else {
        final result = await _dataSource.deleteUser(id);
        return result;
      }
    } catch (e) {
      rethrow;
    }
  }
}
