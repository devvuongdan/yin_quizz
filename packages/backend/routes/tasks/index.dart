// ignore_for_file: no_default_cases

import 'package:backend/features/tasks/controller/task_controller.dart';
import 'package:backend/features/tasks/model/task.dart';
import 'package:backend/features/users/model/user.dart';
import 'package:backend/response/response.dart';
import 'package:backend/response/result.dart';
import 'package:dart_frog/dart_frog.dart';

Future<Response> onRequest(RequestContext context) async {
  switch (context.request.method) {
    case HttpMethod.get:
      return _onGet(context);
    case HttpMethod.post:
      return _onPost(context);

    default:
      return Response(body: 'Welcome to Yin Quizz!');
  }
}

Future<Response> _onPost(RequestContext context) async {
  final user = context.read<YinUser>();
  final body = await context.request.body();
  final controller = context.read<TaskController>();
  final response = await controller.createTask(
    userId: user.id,
    body: body,
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

Future<Response> _onGet(RequestContext context) async {
  final user = context.read<YinUser>();
  final controller = context.read<TaskController>();
  final emptyTask = YinTask(
    content: '',
    title: '',
    createdAt: DateTime.now(),
    updateAt: DateTime.now(),
    id: '',
    userId: '',
  );
  final response = await controller.getTasks(
    userId: user.id,
    objectToMap: emptyTask.toJson(),
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
        dataList: response.right.map((e) => e.toJson()).toList(),
      ).toMap(),
    );
  }
}
