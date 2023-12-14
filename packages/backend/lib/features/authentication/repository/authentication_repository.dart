// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:backend/features/authentication/datasource/authentication_datasource.dart';
import 'package:backend/features/authentication/model/token.dart';

class AuthenticationRepository {
  final AuthenticationDatasource datasource;

  AuthenticationRepository({
    required this.datasource,
  });

  Future<List<YinToken>> getTokens({
    Map<String, dynamic>? objectToMap,
  }) async {
    try {
      final tokens = await datasource.getTokens(
        objectToMap: objectToMap,
      );

      return tokens;
    } catch (_) {
      rethrow;
    }
  }

  Future<YinToken> insertToken({
    required String userId,
    required YinToken newToken,
  }) async {
    try {
      final token =
          await datasource.insertToken(userId: userId, newToken: newToken);
      return token;
    } catch (_) {
      rethrow;
    }
  }

  Future<YinToken> updateToken({
    required String userId,
    required YinToken newToken,
  }) async {
    try {
      await datasource.updateToken(
        userId: userId,
        newToken: newToken,
      );
      return newToken;
    } catch (_) {
      rethrow;
    }
  }

  Future<String> deleteToken(String userID) async {
    try {
      final result = await datasource.deleteToken(userID);

      return result;
    } catch (_) {
      rethrow;
    }
  }
}
