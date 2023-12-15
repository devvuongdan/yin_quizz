// ignore_for_file: public_member_api_docs, avoid_print

import 'dart:convert';

import 'package:backend/exceptions/database_exception.dart';
import 'package:backend/exceptions/invalid_input_exception.dart';
import 'package:backend/exceptions/notfound_exception.dart';
import 'package:backend/features/tasks/model/task.dart';
import 'package:backend/features/tasks/repository/task_repository.dart';
import 'package:backend/features/tasks/task_dto/task_dto.dart';
import 'package:backend/features/tasks/task_dto/update_task_dto.dart';
import 'package:backend/helpers/api_helper.dart';
import 'package:backend/response/result.dart';
import 'package:either_dart/either.dart';

class TaskController {
  TaskController(this._repository);

  final TaskRepository _repository;

  Future<Either<YinFailure, YinTask>> createTask({
    required String body,
    required String userId,
  }) async {
    final exceptions = <Type, int>{
      InvalidInputException: 400,
      DataBaseException: 500,
    };

    try {
      final dto = TaskDto.fromJson(
        jsonDecode(body) as Map<String, dynamic>,
      );
      final task = await _repository.createTask(dto: dto, userId: userId);

      return Right(task);
    } catch (e, s) {
      return APIHelper.handleException(
        exceptions: exceptions,
        e: e,
        s: s,
      );
    }
  }

  Future<Either<YinFailure, YinTask>> updateTask({
    required String body,
    required String userId,
  }) async {
    final exceptions = <Type, int>{
      NotFoundException: 404,
      InvalidInputException: 400,
      DataBaseException: 500,
    };
    try {
      final dto = UpdateTaskDto.fromJson(
        jsonDecode(body) as Map<String, dynamic>,
      );

      if (dto.id.isEmpty) {
        throw InvalidInputException();
      }
      final result = await _repository.updateTask(
        dto: dto,
        userId: userId,
      );
      return Right(result);
    } catch (e, s) {
      return APIHelper.handleException(
        exceptions: exceptions,
        e: e,
        s: s,
      );
    }
  }

  Future<Either<YinFailure, String>> deleteTask({
    required String userId,
    required String body,
  }) async {
    final exceptions = <Type, int>{
      NotFoundException: 404,
      InvalidInputException: 400,
      DataBaseException: 500,
    };
    try {
      final taskId =
          (jsonDecode(body) as Map<String, dynamic>)['id'].toString();

      if (taskId.isEmpty) {
        throw InvalidInputException();
      }
      final result = await _repository.deleteTask(
        userId: userId,
        taskId: taskId,
      );
      return Right(result);
    } catch (e, s) {
      return APIHelper.handleException(
        exceptions: exceptions,
        e: e,
        s: s,
      );
    }
  }

  Future<Either<YinFailure, List<YinTask>>> getTasks({
    required String userId,
    bool Function(YinTask)? condition,
    Map<String, dynamic>? objectToMap,
  }) async {
    final exceptions = <Type, int>{
      NotFoundException: 404,
      DataBaseException: 500,
    };
    try {
      final result = await _repository.getTask(
        userId: userId,
        condition: condition,
        objectToMap: objectToMap,
      );
      return Right(result);
    } catch (e, s) {
      return APIHelper.handleException(
        exceptions: exceptions,
        e: e,
        s: s,
      );
    }
  }
}
