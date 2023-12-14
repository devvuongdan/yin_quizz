// ignore_for_file: invalid_annotation_target, depend_on_referenced_packages,

import 'package:backend/helpers/datetime_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'token.freezed.dart';
part 'token.g.dart';

/// {@template user}
/// A class representing a user.
/// {@endtemplate}

@freezed
class YinToken with _$YinToken {
  /// {@macro user}
  const factory YinToken({
    ///UserID
    @JsonKey(name: 'id') required String userId,
    @JsonKey(name: 'access_token') required String accessToken,
    // @JsonKey(name: 'refresh_token') required YinRefreshToken refreshToken,
    @DateTimeConverter()
    @JsonKey(name: 'created_at')
    required DateTime createdAt,
    @DateTimeConverter() @JsonKey(name: 'exp') required DateTime exp,
  }) = _YinToken;

  /// {@macro user}
  /// Create a [YinToken] from a json object.
  factory YinToken.fromJson(Map<String, dynamic> json) =>
      _$YinTokenFromJson(json);
}

@freezed

///
class YinRefreshToken with _$YinRefreshToken {
  /// {@macro user}
  const factory YinRefreshToken({
    @JsonKey(name: 'value') required String value,
    @Default(10) @JsonKey(name: 'used_count') int usedCount,
  }) = _YinRefreshToken;

  /// {@macro user}
  /// Create a [YinToken] from a json object.
  factory YinRefreshToken.fromJson(Map<String, dynamic> json) =>
      _$YinRefreshTokenFromJson(json);
}
