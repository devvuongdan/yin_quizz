// ignore_for_file: invalid_annotation_target, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'insert_user_output.freezed.dart';
part 'insert_user_output.g.dart';

/// {@template InsertYinUserDto}
/// A class representing a InsertYinUserDto.
/// {@endtemplate}
@freezed
class InsertYinUserOutput with _$InsertYinUserOutput {
  /// {@macro InsertYinUserDto}
  const factory InsertYinUserOutput({
    required String id,
    required String username,
  }) = _InsertYinUserOutput;

  /// {@macro InsertYinUserDto}
  /// Create a [InsertYinUserOutput] from a json object.
  factory InsertYinUserOutput.fromJson(Map<String, dynamic> json) =>
      _$InsertYinUserOutputFromJson(json);
}
