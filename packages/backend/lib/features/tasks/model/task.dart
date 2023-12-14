// ignore_for_file: invalid_annotation_target, depend_on_referenced_packages

import 'package:backend/helpers/datetime_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'task.freezed.dart';
part 'task.g.dart';

/// {@template user}
/// A class representing a user.
/// {@endtemplate}

@freezed
class YinTask with _$YinTask {
  /// {@macro user}
  const factory YinTask({
    required String id,
    @JsonKey(name: 'user_id') required String userId,
    @DateTimeConverter()
    @JsonKey(name: 'created_at')
    required DateTime createdAt,
    @DateTimeConverter()
    @JsonKey(name: 'updated_at')
    required DateTime updateAt,
    required String title,
    required String content,
    @Default(-1) int status,
  }) = _YinTask;

  /// {@macro user}
  /// Create a [YinTask] from a json object.
  factory YinTask.fromJson(Map<String, dynamic> json) =>
      _$YinTaskFromJson(json);
}
