// ignore_for_file: no_default_cases

import 'dart:io';
import 'package:backend/features/authentication/controller/authentication_controller.dart';
import 'package:backend/response/response.dart';
import 'package:backend/response/result.dart';
import 'package:dart_frog/dart_frog.dart';

Future<Response> onRequest(RequestContext context) async {
  switch (context.request.method) {
    case HttpMethod.post:
      return _onDoLogput(context);
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

Future<Response> _onDoLogput(RequestContext context) async {
  final controler = context.read<AuthenticationController>();
  final headers = context.request.headers;
  final response = await controler.doLogout(headers: headers);
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
        data: {},
      ).toMap(),
    );
  }
}
