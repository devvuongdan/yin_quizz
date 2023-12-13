// ignore_for_file:  sort_constructors_first, avoid_dynamic_calls, avoid_print
// ignore_for_file: public_member_api_docs

import 'package:backend/configs/constants.dart';
import 'package:backend/exceptions/database_exception.dart';
import 'package:backend/exceptions/invalid_input_exception.dart';
import 'package:backend/exceptions/unknown_exception.dart';
import 'package:backend/features/users/model/insert_user_dto/insert_user_dto.dart';
import 'package:backend/features/users/model/user.dart';
import 'package:backend/helpers/database_helper.dart';
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
        tableName: 'yinuser',
        objectToMap: newUser.toJson(),
      );
      final userDb = await getUserByUsername(dto.username ?? '');
      if (userDb != null) {
        throw InvalidInputException(
          errorCode: '${Strings.invalidUsernameErrorCode} : Username existed',
          time: DateTime.now(),
        );
      }

      final userDbX = await getUserByUsername(dto.username ?? '');
      if (userDbX != null) {
        throw UnknownException(
          errorCode: 'random-user-id-existed: ${newUser.id}',
          time: DateTime.now(),
        );
      }

      await _database.insert(
        tableName: tableName,
        objectToMap: newUser.toJson(),
      );
      return newUser;
    } on InvalidInputException catch (_) {
      rethrow;
    } on UnknownException catch (_) {
      rethrow;
    } catch (e, _) {
      print(e);
      print(_);
      throw DataBaseException(
        time: DateTime.now(),
      );
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
    } catch (e) {
      print(e);
      throw DataBaseException(
        time: DateTime.now(),
      );
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
    } catch (e) {
      print(e);
      throw DataBaseException(
        time: DateTime.now(),
      );
    }
  }

  Future<List<YinUser>> getUsers() async {
    try {
      final result = await _database.select(tableName: tableName);
      final users = result.map((e) {
        return YinUser.fromJson(e);
      }).toList();
      return users;
    } catch (e, _) {
      print(e);
      print(_);
      throw DataBaseException(
        time: DateTime.now(),
      );
    }
  }
}
