// ignore_for_file: no_default_cases

import 'dart:convert';
import 'dart:io';

import 'package:backend/features/tasks/datasource/tasks_datasource.dart';
import 'package:backend/helpers/database_helper.dart';
import 'package:backend/response/response.dart';
import 'package:backend/response/result.dart';
import 'package:dart_frog/dart_frog.dart';

Future<Response> onRequest(RequestContext context) async {
  switch (context.request.method) {
    case HttpMethod.delete:
      return _onDeleteTaskBy(context);
    default:
      return Response.json(
        statusCode: HttpStatus.methodNotAllowed,
        body: YinResponse(
          result: YinFailure(
            errorCode: '405',
            time: DateTime.now(),
            statusCode: HttpStatus.methodNotAllowed,
          ),
          data: {},
        ).toMap(),
      );
  }
}

Future<Response> _onDeleteTaskBy(RequestContext context) async {
  try {
    final db = context.read<PostgresDatabase>();
    final body = await context.request.body();
    await db.delete(
      tableName: TaskDatasource.tableName,
      id: (jsonEncode(body) as Map<String, dynamic>)['id'].toString(),
    );
    return Response.json(
      body: YinResponse(
        result: YinSuccess(
          time: DateTime.now(),
        ),
        data: {
          'id': context.request.headers['id'] ?? '',
        },
      ).toMap(),
    );
  } catch (e) {
    return Response.json(
      statusCode: 501,
      body: YinResponse(
        result: YinFailure(
          errorCode: 'Error: $e',
          time: DateTime.now(),
          statusCode: 501,
        ),
        data: {},
      ).toMap(),
    );
  }
}
