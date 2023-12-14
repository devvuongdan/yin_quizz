// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:backend/features/authentication/model/token.dart';
import 'package:backend/helpers/database_helper.dart';

class AuthenticationDatasource {
  static const tableName = 'AuthenticationDatasource';
  final PostgresDatabase _database;
  AuthenticationDatasource(
    this._database,
  );

  Future<YinToken> insertToken({
    required String userId,
    required YinToken newToken,
  }) async {
    try {
      await _database.createTableIfNotExist(
        tableName: tableName,
        objectToMap: newToken.toJson(),
      );
      await _database.insert(
        tableName: tableName,
        objectToMap: newToken.toJson(),
      );
      return newToken;
    } catch (_) {
      rethrow;
    }
  }

  Future<YinToken> updateToken({
    required String userId,
    required YinToken newToken,
  }) async {
    try {
      await _database.update(
        tableName: tableName,
        objectToMap: newToken.toJson(),
      );
      return newToken;
    } catch (_) {
      rethrow;
    }
  }

  Future<List<YinToken>> getTokens({
    Map<String, dynamic>? objectToMap,
  }) async {
    try {
      final result = await _database.select(
        tableName: tableName,
        objectToMap: objectToMap,
      );
      final tokens = result.map((e) {
        return YinToken.fromJson(e);
      }).toList();
      return tokens;
    } catch (_) {
      rethrow;
    }
  }

  Future<String> deleteToken(String userID) async {
    try {
      final result = await _database.delete(tableName: tableName, id: userID);

      return result;
    } catch (_) {
      rethrow;
    }
  }
}
