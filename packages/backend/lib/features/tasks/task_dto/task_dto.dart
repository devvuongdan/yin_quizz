// ignore_for_file: invalid_annotation_target, depend_on_referenced_packages

import 'package:backend/helpers/datetime_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_dto.freezed.dart';
part 'task_dto.g.dart';

/// {@template user}
/// A class representing a user.
/// {@endtemplate}

@freezed
class TaskDto with _$TaskDto {
  /// {@macro user}
  const factory TaskDto({
    @DateTimeConverter() @DateTimeConverter() required String title,
    required String content,
    @Default(-1) int status,
  }) = _TaskDto;

  /// {@macro user}
  /// Create a [TaskDto] from a json object.
  factory TaskDto.fromJson(Map<String, dynamic> json) =>
      _$TaskDtoFromJson(json);
}
