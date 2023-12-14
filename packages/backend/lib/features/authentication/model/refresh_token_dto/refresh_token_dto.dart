// ignore_for_file: depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'refresh_token_dto.freezed.dart';
part 'refresh_token_dto.g.dart';

/// {@template RefreshTokenDto}
/// A class representing a RefreshTokenDto.
/// {@endtemplate}
@freezed
class RefreshTokenDto with _$RefreshTokenDto {
  /// {@macro RefreshTokenDto}
  const factory RefreshTokenDto({
    @JsonKey(name: 'refresh_token') required String? refreshToken,
  }) = _RefreshTokenDto;

  /// {@macro RefreshTokenDto}
  /// Create a [RefreshTokenDto] from a json object.
  factory RefreshTokenDto.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenDtoFromJson(json);
}
