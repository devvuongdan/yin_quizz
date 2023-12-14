// ignore_for_file: no_default_cases

import 'dart:io';

import 'package:backend/features/users/controller/user_controller.dart';
import 'package:backend/response/response.dart';
import 'package:backend/response/result.dart';
import 'package:dart_frog/dart_frog.dart';

Future<Response> onRequest(RequestContext context, String id) async {
  switch (context.request.method) {
    case HttpMethod.get:
      return _onGetUserByID(context, id);
    case HttpMethod.delete:
      return _onDeleteUserByID(context, id);
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

Future<Response> _onGetUserByID(RequestContext context, String id) async {
  final controler = context.read<UserControler>();
  final response = await controler.getUserByID(id);
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
        data: response.right.copyWith(password: '******').toJson(),
      ).toMap(),
    );
  }
}

Future<Response> _onDeleteUserByID(RequestContext context, String id) async {
  final controler = context.read<UserControler>();
  final response = await controler.deleteUserByID(id);
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
        data: {
          'id': response.right,
        },
      ).toMap(),
    );
  }
}
