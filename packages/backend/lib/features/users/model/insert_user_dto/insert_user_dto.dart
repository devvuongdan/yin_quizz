// ignore_for_file: invalid_annotation_target, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'insert_user_dto.freezed.dart';
part 'insert_user_dto.g.dart';

/// {@template InsertYinUserDto}
/// A class representing a InsertYinUserDto.
/// {@endtemplate}
@freezed
class InsertYinUserDto with _$InsertYinUserDto {
  /// {@macro InsertYinUserDto}
  const factory InsertYinUserDto({
    required String? username,
    @Default('') @JsonKey(includeToJson: false) String? password,
  }) = _InsertYinUserDto;

  /// {@macro InsertYinUserDto}
  /// Create a [InsertYinUserDto] from a json object.
  factory InsertYinUserDto.fromJson(Map<String, dynamic> json) =>
      _$InsertYinUserDtoFromJson(json);
}
