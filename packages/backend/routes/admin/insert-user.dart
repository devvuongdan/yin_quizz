// ignore_for_file: no_default_cases

import 'dart:convert';
import 'dart:io';
import 'package:backend/exceptions/invalid_input_exception.dart';
import 'package:backend/features/users/datasource/user_datasource.dart';
import 'package:backend/features/users/model/insert_user_dto/insert_user_dto.dart';
import 'package:backend/features/users/model/user.dart';
import 'package:backend/helpers/database_helper.dart';
import 'package:backend/response/response.dart';
import 'package:backend/response/result.dart';
import 'package:backend/services/encrypt.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:uuid/uuid.dart';

Future<Response> onRequest(RequestContext context) async {
  switch (context.request.method) {
    case HttpMethod.post:
      return _onInsertUser(context);
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

Future<Response> _onInsertUser(RequestContext context) async {
  try {
    final body = await context.request.body();
    final db = context.read<PostgresDatabase>();
    final dto = InsertYinUserDto.fromJson(
      jsonDecode(body) as Map<String, dynamic>,
    );
    final newUser = YinUser(
      id: const Uuid().v4(),
      username: dto.username ?? '',
      password: EncryptUtil.generateMd5(dto.password ?? ''),
      givenName: 'User',
      createdAt: DateTime.now(),
      updateAt: DateTime.now(),
      updatePwAt: DateTime.now(),
    );
    final userDb = await db.select(tableName: UserDataSource.tableName);
    if (userDb.indexWhere((element) => element['username'] == dto.username) !=
        -1) {
      throw UsernameExistException();
    }

    if (userDb.indexWhere((element) => element['id'] == newUser.id) != -1) {
      throw DuplicateUidException();
    }
    await db.insert(
      tableName: UserDataSource.tableName,
      objectToMap: newUser.toJson(),
    );
    return Response.json(
      body: YinResponse(
        result: YinSuccess(
          time: DateTime.now(),
        ),
        data: newUser.toJson(),
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
