// ignore_for_file: invalid_annotation_target, depend_on_referenced_packages

import 'package:backend/helpers/datetime_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_task_dto.freezed.dart';
part 'update_task_dto.g.dart';

/// {@template user}
/// A class representing a user.
/// {@endtemplate}

@freezed
class UpdateTaskDto with _$UpdateTaskDto {
  /// {@macro user}
  const factory UpdateTaskDto({
    required String id,
    @DateTimeConverter() @DateTimeConverter() required String title,
    required String content,
    @Default(-1) int status,
  }) = _UpdateTaskDto;

  /// {@macro user}
  /// Create a [UpdateTaskDto] from a json object.
  factory UpdateTaskDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateTaskDtoFromJson(json);
}
