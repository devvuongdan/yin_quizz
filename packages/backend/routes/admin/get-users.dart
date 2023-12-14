// ignore_for_file: no_default_cases

import 'dart:io';
import 'package:backend/features/users/datasource/user_datasource.dart';
import 'package:backend/helpers/database_helper.dart';
import 'package:backend/response/response.dart';
import 'package:backend/response/result.dart';
import 'package:dart_frog/dart_frog.dart';

Future<Response> onRequest(RequestContext context) async {
  switch (context.request.method) {
    case HttpMethod.get:
      return _onGetUsers(context);
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

Future<Response> _onGetUsers(RequestContext context) async {
  try {
    final db = context.read<PostgresDatabase>();
    final response = await db.select(tableName: UserDataSource.tableName);
    return Response.json(
      body: YinResponse(
        result: YinSuccess(
          time: DateTime.now(),
        ),
        dataList: response,
      ).toMap(),
    );
  } catch (e, s) {
    return Response.json(
      statusCode: 501,
      body: YinResponse(
        result: YinFailure(
          errorCode: 'Error: $e - $s',
          time: DateTime.now(),
          statusCode: 501,
        ),
        data: {},
      ).toMap(),
    );
  }
}
