// ignore_for_file: no_default_cases

import 'dart:convert';
import 'dart:io';

import 'package:backend/features/users/controller/user_controller.dart';
import 'package:backend/features/users/model/insert_user_dto/insert_user_dto.dart';
import 'package:backend/response/response.dart';
import 'package:backend/response/result.dart';
import 'package:dart_frog/dart_frog.dart';

Future<Response> onRequest(RequestContext context) async {
  switch (context.request.method) {
    case HttpMethod.post:
      return _onCreateUser(context);
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
  final controler = context.read<UserControler>();
  final response = await controler.getUsers();
  if (response.isLeft) {
    return Response.json(
      statusCode: response.left.statusCode,
      body: YinResponse(
        result: YinFailure(
          errorCode: response.left.errorCode,
          time: DateTime.now(),
          statusCode: response.left.statusCode,
        ),
        data: {},
      ).toMap(),
    );
  } else {
    return Response.json(
      body: YinResponse(
        result: YinSuccess(
          time: DateTime.now(),
        ),
        dataList: response.right.map((e) => e.toJson()).toList(),
      ).toMap(),
    );
  }
}

Future<Response> _onCreateUser(RequestContext context) async {
  final body = await context.request.body();

  final controler = context.read<UserControler>();
  final response = await controler.createUserProfile(
    dto: InsertYinUserDto.fromJson(
      jsonDecode(body) as Map<String, dynamic>,
    ),
  );
  if (response.isLeft) {
    return Response.json(
      statusCode: response.left.statusCode,
      body: YinResponse(
        result: YinFailure(
          errorCode: response.left.errorCode,
          time: DateTime.now(),
          statusCode: response.left.statusCode,
        ),
        data: {},
      ).toMap(),
    );
  } else {
    return Response.json(
      body: YinResponse(
        result: YinSuccess(
          time: DateTime.now(),
        ),
        data: response.right.toJson(),
      ).toMap(),
    );
  }
}
