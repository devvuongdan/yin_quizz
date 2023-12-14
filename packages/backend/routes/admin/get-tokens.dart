// ignore_for_file: no_default_cases

import 'dart:io';
import 'package:backend/features/authentication/datasource/authentication_datasource.dart';
import 'package:backend/helpers/database_helper.dart';
import 'package:backend/response/response.dart';
import 'package:backend/response/result.dart';
import 'package:dart_frog/dart_frog.dart';

Future<Response> onRequest(RequestContext context) async {
  switch (context.request.method) {
    case HttpMethod.get:
      return _onGetTokens(context);
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

Future<Response> _onGetTokens(RequestContext context) async {
  try {
    final db = context.read<PostgresDatabase>();
    final response =
        await db.select(tableName: AuthenticationDatasource.tableName);
    return Response.json(
      body: YinResponse(
        result: YinSuccess(
          time: DateTime.now(),
        ),
        dataList: response,
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
