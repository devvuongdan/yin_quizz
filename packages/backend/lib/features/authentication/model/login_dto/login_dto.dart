// ignore_for_file: invalid_annotation_target, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_dto.freezed.dart';
part 'login_dto.g.dart';

/// {@template LoginDto}
/// A class representing a LoginDto.
/// {@endtemplate}
@freezed
class LoginDto with _$LoginDto {
  /// {@macro LoginDto}
  const factory LoginDto({
    required String? username,
    @Default('') @JsonKey(includeToJson: false) String? password,
    @JsonKey(name: 'device_id') String? deviceId,
  }) = _LoginDto;

  /// {@macro LoginDto}
  /// Create a [LoginDto] from a json object.
  factory LoginDto.fromJson(Map<String, dynamic> json) =>
      _$LoginDtoFromJson(json);
}
