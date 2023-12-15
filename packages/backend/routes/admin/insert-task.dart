// ignore_for_file: no_default_cases

import 'dart:convert';
import 'dart:io';
import 'package:backend/features/tasks/datasource/tasks_datasource.dart';
import 'package:backend/features/tasks/model/task.dart';
import 'package:backend/features/tasks/task_dto/task_dto.dart';
import 'package:backend/helpers/database_helper.dart';
import 'package:backend/response/response.dart';
import 'package:backend/response/result.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:uuid/uuid.dart';

Future<Response> onRequest(RequestContext context) async {
  switch (context.request.method) {
    case HttpMethod.post:
      return _onCreateNewTask(context);
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

Future<Response> _onCreateNewTask(RequestContext context) async {
  try {
    final body = await context.request.body();
    final db = context.read<PostgresDatabase>();
    final dto = TaskDto.fromJson(
      jsonDecode(body) as Map<String, dynamic>,
    );
    final newTask = YinTask(
      id: const Uuid().v4(),
      userId: '9aad75a7-1a6f-4da7-98d1-ee0945c944f8',
      createdAt: DateTime.now(),
      updateAt: DateTime.now(),
      title: dto.title,
      content: dto.content,
      status: dto.status,
    );
    await db.insert(
      tableName: TaskDatasource.tableName,
      objectToMap: newTask.toJson(),
    );
    return Response.json(
      body: YinResponse(
        result: YinSuccess(
          time: DateTime.now(),
        ),
        data: newTask.toJson(),
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
