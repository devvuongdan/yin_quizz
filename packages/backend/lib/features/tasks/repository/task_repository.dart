// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:backend/features/tasks/datasource/tasks_datasource.dart';
import 'package:backend/features/tasks/model/task.dart';
import 'package:backend/features/tasks/task_dto/task_dto.dart';
import 'package:backend/features/tasks/task_dto/update_task_dto.dart';

class TaskRepository {
  final TaskDatasource _datasource;
  TaskRepository(
    this._datasource,
  );
  Future<List<YinTask>> getTask({
    required String userId,
    bool Function(YinTask task)? condition,
    Map<String, dynamic>? objectToMap,
  }) async {
    try {
      final condition0 = condition ?? (task) => true;
      final originList =
          await _datasource.getTasks(userId: userId, objectToMap: objectToMap);
      final tasks = originList..retainWhere(condition0);
      return tasks;
    } catch (_) {
      rethrow;
    }
  }

  Future<YinTask> createTask({
    required String userId,
    required TaskDto dto,
  }) async {
    try {
      final result = await _datasource.insertTask(userId: userId, dto: dto);

      return result;
    } catch (_) {
      rethrow;
    }
  }

  Future<YinTask> updateTask({
    required String userId,
    required UpdateTaskDto dto,
  }) async {
    try {
      final result = await _datasource.updateTask(
        userId: userId,
        dto: dto,
      );

      return result;
    } catch (_) {
      rethrow;
    }
  }

  Future<String> deleteTask({
    required String userId,
    required String taskId,
  }) async {
    try {
      final result =
          await _datasource.deleteTask(userId: userId, taskId: taskId);

      return result;
    } catch (_) {
      rethrow;
    }
  }
}
