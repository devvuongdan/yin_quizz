// ignore_for_file:  sort_constructors_first
// ignore_for_file: public_member_api_docs

import 'package:backend/exceptions/notfound_exception.dart';
import 'package:backend/features/tasks/model/task.dart';
import 'package:backend/features/tasks/task_dto/task_dto.dart';
import 'package:backend/features/tasks/task_dto/update_task_dto.dart';
import 'package:backend/helpers/database_helper.dart';
import 'package:uuid/uuid.dart';

class TaskDatasource {
  static const tableName = 'TaskDatasource';
  final PostgresDatabase _database;
  TaskDatasource(
    this._database,
  );

  Future<YinTask> insertTask({
    required String userId,
    required TaskDto dto,
  }) async {
    try {
      final newTask = YinTask(
        id: const Uuid().v4(),
        userId: userId,
        createdAt: DateTime.now(),
        updateAt: DateTime.now(),
        title: dto.title,
        content: dto.content,
      );
      await _database.createTableIfNotExist(
        tableName: tableName,
        objectToMap: newTask.toJson(),
      );
      await _database.insert(
        tableName: tableName,
        objectToMap: newTask.toJson(),
      );
      return newTask;
    } catch (_) {
      rethrow;
    }
  }

  Future<YinTask> updateTask({
    required String userId,
    required UpdateTaskDto dto,
  }) async {
    try {
      final taskDbs = await getTasks(userId: userId);
      final idx = taskDbs.indexWhere((element) => element.id == dto.id);
      if (idx > -1) {
        final newTask = taskDbs[idx].copyWith(
          title: dto.title,
          content: dto.content,
          status: dto.status,
          updateAt: DateTime.now(),
        );

        await _database.update(
          tableName: tableName,
          objectToMap: newTask.toJson(),
        );
        return newTask;
      } else {
        throw NotFoundException();
      }
    } catch (_) {
      rethrow;
    }
  }

  Future<List<YinTask>> getTasks({
    required String userId,
    Map<String, dynamic>? objectToMap,
  }) async {
    try {
      if (objectToMap != null) {
        await _database.createTableIfNotExist(
          tableName: tableName,
          objectToMap: objectToMap,
        );
      }
      final result = await _database.select(tableName: tableName);
      final tasks = result.map((e) {
        return YinTask.fromJson(e);
      }).toList();
      return tasks..retainWhere((element) => element.userId == userId);
    } catch (_) {
      rethrow;
    }
  }

  Future<String> deleteTask({
    required String userId,
    required String taskId,
  }) async {
    try {
      final result = await _database.delete(tableName: tableName, id: taskId);

      return result;
    } catch (_) {
      rethrow;
    }
  }
}
