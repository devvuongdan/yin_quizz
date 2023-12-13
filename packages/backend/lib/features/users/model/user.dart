// ignore_for_file: invalid_annotation_target, depend_on_referenced_packages

import 'package:backend/helpers/datetime_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

/// {@template user}
/// A class representing a user.
/// {@endtemplate}

@freezed
class YinUser with _$YinUser {
  /// {@macro user}
  const factory YinUser({
    required String id,
    required String username,
    @JsonKey(name: 'given_name') required String givenName,
    @DateTimeConverter()
    @JsonKey(name: 'created_at')
    required DateTime createdAt,
    @DateTimeConverter()
    @JsonKey(name: 'updated_at')
    required DateTime updateAt,
    @DateTimeConverter()
    @JsonKey(name: 'updated_pw_at')
    required DateTime updatePwAt,
    @Default('') @JsonKey(includeToJson: false) String password,
  }) = _YinUser;

  /// {@macro user}
  /// Create a [YinUser] from a json object.
  factory YinUser.fromJson(Map<String, dynamic> json) =>
      _$YinUserFromJson(json);
}
