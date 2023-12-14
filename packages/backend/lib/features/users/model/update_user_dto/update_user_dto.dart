// ignore_for_file: invalid_annotation_target, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_user_dto.freezed.dart';
part 'update_user_dto.g.dart';

/// {@template UpdateYinUserDto}
/// A class representing a UpdateYinUserDto.
/// {@endtemplate}
@freezed
class UpdateYinUserDto with _$UpdateYinUserDto {
  /// {@macro UpdateYinUserDto}
  const factory UpdateYinUserDto({
    @JsonKey(name: 'given_name') required String? givenName,
    String? password,
  }) = _UpdateYinUserDto;

  /// {@macro UpdateYinUserDto}
  /// Create a [UpdateYinUserDto] from a json object.
  factory UpdateYinUserDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateYinUserDtoFromJson(json);
}
