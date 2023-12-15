// ignore_for_file:  sort_constructors_first, avoid_dynamic_calls, avoid_print
// ignore_for_file: public_member_api_docs

import 'package:backend/exceptions/invalid_input_exception.dart';
import 'package:backend/exceptions/notfound_exception.dart';
import 'package:backend/features/users/model/insert_user_dto/insert_user_dto.dart';
import 'package:backend/features/users/model/update_user_dto/update_user_dto.dart';
import 'package:backend/features/users/model/user.dart';
import 'package:backend/helpers/database_helper.dart';
import 'package:backend/services/encrypt.dart';
import 'package:uuid/uuid.dart';

class UserDataSource {
  static const tableName = 'YinUser';
  final PostgresDatabase _database;
  const UserDataSource(
    this._database,
  );

  Future<YinUser> insertUser({
    required InsertYinUserDto dto,
  }) async {
    try {
      final newUser = YinUser(
        id: const Uuid().v4(),
        username: dto.username ?? '',
        password: dto.password ?? '',
        givenName: 'User',
        createdAt: DateTime.now(),
        updateAt: DateTime.now(),
        updatePwAt: DateTime.now(),
      );
      await _database.createTableIfNotExist(
        tableName: tableName,
        objectToMap: newUser.toJson(),
      );
      final userDb = await getUserByUsername(dto.username ?? '');
      if (userDb != null) {
        throw UsernameExistException();
      }

      final userDbX = await getUserById(newUser.id);
      if (userDbX != null) {
        throw DuplicateUidException();
      }

      await _database.insert(
        tableName: tableName,
        objectToMap: newUser.toJson(),
      );
      return newUser;
    } catch (_) {
      rethrow;
    }
  }

  Future<YinUser> updateUser({
    required UpdateYinUserDto dto,
    required String id,
  }) async {
    try {
      final user = await getUserById(id);

      if (user != null) {
        final newUser = user.copyWith(
          givenName: dto.givenName ?? '',
          password: EncryptUtil.generateMd5(dto.password ?? ''),
          updateAt: DateTime.now(),
          updatePwAt:
              EncryptUtil.generateMd5(dto.password ?? '') != user.password
                  ? DateTime.now()
                  : user.updatePwAt,
        );
        await _database.update(
          tableName: tableName,
          objectToMap: newUser.toJson(),
        );
        return newUser;
      } else {
        throw NotFoundException();
      }
    } catch (_) {
      rethrow;
    }
  }

  Future<YinUser?> getUserById(String id) async {
    try {
      final users = await getUsers();
      final index = users.indexWhere((element) => element.id == id);
      if (index > -1) {
        return users[index];
      } else {
        return null;
      }
    } catch (_) {
      rethrow;
    }
  }

  Future<YinUser?> getUserByUsername(String username) async {
    try {
      final users = await getUsers();

      final index = users.indexWhere((element) => element.username == username);
      if (index > -1) {
        return users[index];
      } else {
        return null;
      }
    } catch (_) {
      rethrow;
    }
  }

  Future<List<YinUser>> getUsers() async {
    try {
      final result = await _database.select(tableName: tableName);
      final users = result.map((e) {
        return YinUser.fromJson(e);
      }).toList();
      return users;
    } catch (_) {
      rethrow;
    }
  }

  Future<String> deleteUser(String id) async {
    try {
      final result = await _database.delete(tableName: tableName, id: id);

      return result;
    } catch (_) {
      rethrow;
    }
  }
}
