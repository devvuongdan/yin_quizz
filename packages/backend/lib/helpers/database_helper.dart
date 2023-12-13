// ignore_for_file: public_member_api_docs, sort_constructors_first, avoid_dynamic_calls, inference_failure_on_collection_literal, lines_longer_than_80_chars
import 'package:postgres/postgres.dart';

class PostgresDatabase {
  final Connection connection;
  PostgresDatabase({
    required this.connection,
  });

  ///
  Future<Result> createTableIfNotExist({
    required String tableName,
    required Map<String, dynamic> objectToMap,
  }) async {
    final parameters = objectToMap;
    final queries = <String>[];
    for (final key in parameters.keys) {
      switch (parameters[key].runtimeType) {
        case int:
          queries.add(' $key INTEGER NOT NULL ');
        case bool:
          queries.add(' $key BOOL NOT NULL ');
        default:
          queries.add(' $key TEXT NOT NULL ');
      }
    }

    final queryString = '''
    CREATE TABLE IF NOT EXISTS $tableName (
    ${queries.join(",")}
    )
    ''';

    final result = await connection.execute(
      queryString,
    );
    return result;
  }

  ///
  Future<Result> insert({
    required String tableName,
    required Map<String, dynamic> objectToMap,
  }) async {
    try {
      await createTableIfNotExist(
        tableName: tableName,
        objectToMap: objectToMap,
      );
      final keyString = objectToMap.keys.join(',');
      final keyParams = <String>[];
      final valueParams = [];
      for (var i = 0; i <= objectToMap.keys.length - 1; i++) {
        keyParams.add(r'$' '${i + 1}');
        valueParams.add(objectToMap[objectToMap.keys.toList()[i]]);
      }

      objectToMap.keys.map((e) => '@$e').toList().join(',');
      final queryString =
          'INSERT INTO $tableName ( $keyString ) VALUES ( ${keyParams.join(",")} )';

      final result = await connection.execute(
        queryString,
        parameters: valueParams,
      );

      return result;
    } catch (e) {
      throw UnimplementedError();
    }
  }

  Future<List<Map<String, dynamic>>> select({
    required String tableName,
  }) async {
    final result = await connection.execute(
      'SELECT * FROM $tableName',
    );
    return result.map((element) => element.toColumnMap()).toList();
  }
}
