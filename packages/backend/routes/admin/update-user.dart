// ignore_for_file: no_default_cases

import 'dart:convert';
import 'dart:io';
import 'package:backend/exceptions/notfound_exception.dart';
import 'package:backend/features/users/datasource/user_datasource.dart';
import 'package:backend/features/users/model/user.dart';
import 'package:backend/helpers/database_helper.dart';
import 'package:backend/response/response.dart';
import 'package:backend/response/result.dart';
import 'package:dart_frog/dart_frog.dart';

Future<Response> onRequest(RequestContext context) async {
  switch (context.request.method) {
    case HttpMethod.patch:
      return _onUpdateUser(context);
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

Future<Response> _onUpdateUser(RequestContext context) async {
  try {
    final body = await context.request.body();
    final db = context.read<PostgresDatabase>();
    final dto = YinUser.fromJson(
      jsonDecode(body) as Map<String, dynamic>,
    );

    final userDb = await db.select(tableName: UserDataSource.tableName);
    if (userDb.indexWhere((element) => element['id'] == dto.id) == -1) {
      throw NotFoundException();
    }

    await db.update(
      tableName: UserDataSource.tableName,
      objectToMap: dto.toJson(),
    );
    return Response.json(
      body: YinResponse(
        result: YinSuccess(
          time: DateTime.now(),
        ),
        data: dto.toJson(),
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
