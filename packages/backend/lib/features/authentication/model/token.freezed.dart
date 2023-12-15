// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

YinToken _$YinTokenFromJson(Map<String, dynamic> json) {
  return _YinToken.fromJson(json);
}

/// @nodoc
mixin _$YinToken {
  ///UserID
  @JsonKey(name: 'id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'access_token')
  String get accessToken =>
      throw _privateConstructorUsedError; // @JsonKey(name: 'refresh_token') required YinRefreshToken refreshToken,
  @DateTimeConverter()
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @DateTimeConverter()
  @JsonKey(name: 'exp')
  DateTime get exp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $YinTokenCopyWith<YinToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YinTokenCopyWith<$Res> {
  factory $YinTokenCopyWith(YinToken value, $Res Function(YinToken) then) =
      _$YinTokenCopyWithImpl<$Res, YinToken>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String userId,
      @JsonKey(name: 'access_token') String accessToken,
      @DateTimeConverter() @JsonKey(name: 'created_at') DateTime createdAt,
      @DateTimeConverter() @JsonKey(name: 'exp') DateTime exp});
}

/// @nodoc
class _$YinTokenCopyWithImpl<$Res, $Val extends YinToken>
    implements $YinTokenCopyWith<$Res> {
  _$YinTokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? accessToken = null,
    Object? createdAt = null,
    Object? exp = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      exp: null == exp
          ? _value.exp
          : exp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$YinTokenImplCopyWith<$Res>
    implements $YinTokenCopyWith<$Res> {
  factory _$$YinTokenImplCopyWith(
          _$YinTokenImpl value, $Res Function(_$YinTokenImpl) then) =
      __$$YinTokenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String userId,
      @JsonKey(name: 'access_token') String accessToken,
      @DateTimeConverter() @JsonKey(name: 'created_at') DateTime createdAt,
      @DateTimeConverter() @JsonKey(name: 'exp') DateTime exp});
}

/// @nodoc
class __$$YinTokenImplCopyWithImpl<$Res>
    extends _$YinTokenCopyWithImpl<$Res, _$YinTokenImpl>
    implements _$$YinTokenImplCopyWith<$Res> {
  __$$YinTokenImplCopyWithImpl(
      _$YinTokenImpl _value, $Res Function(_$YinTokenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? accessToken = null,
    Object? createdAt = null,
    Object? exp = null,
  }) {
    return _then(_$YinTokenImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      exp: null == exp
          ? _value.exp
          : exp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$YinTokenImpl implements _YinToken {
  const _$YinTokenImpl(
      {@JsonKey(name: 'id') required this.userId,
      @JsonKey(name: 'access_token') required this.accessToken,
      @DateTimeConverter() @JsonKey(name: 'created_at') required this.createdAt,
      @DateTimeConverter() @JsonKey(name: 'exp') required this.exp});

  factory _$YinTokenImpl.fromJson(Map<String, dynamic> json) =>
      _$$YinTokenImplFromJson(json);

  ///UserID
  @override
  @JsonKey(name: 'id')
  final String userId;
  @override
  @JsonKey(name: 'access_token')
  final String accessToken;
// @JsonKey(name: 'refresh_token') required YinRefreshToken refreshToken,
  @override
  @DateTimeConverter()
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'exp')
  final DateTime exp;

  @override
  String toString() {
    return 'YinToken(userId: $userId, accessToken: $accessToken, createdAt: $createdAt, exp: $exp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$YinTokenImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.exp, exp) || other.exp == exp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, accessToken, createdAt, exp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$YinTokenImplCopyWith<_$YinTokenImpl> get copyWith =>
      __$$YinTokenImplCopyWithImpl<_$YinTokenImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$YinTokenImplToJson(
      this,
    );
  }
}

abstract class _YinToken implements YinToken {
  const factory _YinToken(
      {@JsonKey(name: 'id') required final String userId,
      @JsonKey(name: 'access_token') required final String accessToken,
      @DateTimeConverter()
      @JsonKey(name: 'created_at')
      required final DateTime createdAt,
      @DateTimeConverter()
      @JsonKey(name: 'exp')
      required final DateTime exp}) = _$YinTokenImpl;

  factory _YinToken.fromJson(Map<String, dynamic> json) =
      _$YinTokenImpl.fromJson;

  @override

  ///UserID
  @JsonKey(name: 'id')
  String get userId;
  @override
  @JsonKey(name: 'access_token')
  String get accessToken;
  @override // @JsonKey(name: 'refresh_token') required YinRefreshToken refreshToken,
  @DateTimeConverter()
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'exp')
  DateTime get exp;
  @override
  @JsonKey(ignore: true)
  _$$YinTokenImplCopyWith<_$YinTokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

YinRefreshToken _$YinRefreshTokenFromJson(Map<String, dynamic> json) {
  return _YinRefreshToken.fromJson(json);
}

/// @nodoc
mixin _$YinRefreshToken {
  @JsonKey(name: 'value')
  String get value => throw _privateConstructorUsedError;
  @JsonKey(name: 'used_count')
  int get usedCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $YinRefreshTokenCopyWith<YinRefreshToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YinRefreshTokenCopyWith<$Res> {
  factory $YinRefreshTokenCopyWith(
          YinRefreshToken value, $Res Function(YinRefreshToken) then) =
      _$YinRefreshTokenCopyWithImpl<$Res, YinRefreshToken>;
  @useResult
  $Res call(
      {@JsonKey(name: 'value') String value,
      @JsonKey(name: 'used_count') int usedCount});
}

/// @nodoc
class _$YinRefreshTokenCopyWithImpl<$Res, $Val extends YinRefreshToken>
    implements $YinRefreshTokenCopyWith<$Res> {
  _$YinRefreshTokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? usedCount = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      usedCount: null == usedCount
          ? _value.usedCount
          : usedCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$YinRefreshTokenImplCopyWith<$Res>
    implements $YinRefreshTokenCopyWith<$Res> {
  factory _$$YinRefreshTokenImplCopyWith(_$YinRefreshTokenImpl value,
          $Res Function(_$YinRefreshTokenImpl) then) =
      __$$YinRefreshTokenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'value') String value,
      @JsonKey(name: 'used_count') int usedCount});
}

/// @nodoc
class __$$YinRefreshTokenImplCopyWithImpl<$Res>
    extends _$YinRefreshTokenCopyWithImpl<$Res, _$YinRefreshTokenImpl>
    implements _$$YinRefreshTokenImplCopyWith<$Res> {
  __$$YinRefreshTokenImplCopyWithImpl(
      _$YinRefreshTokenImpl _value, $Res Function(_$YinRefreshTokenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? usedCount = null,
  }) {
    return _then(_$YinRefreshTokenImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      usedCount: null == usedCount
          ? _value.usedCount
          : usedCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$YinRefreshTokenImpl implements _YinRefreshToken {
  const _$YinRefreshTokenImpl(
      {@JsonKey(name: 'value') required this.value,
      @JsonKey(name: 'used_count') this.usedCount = 10});

  factory _$YinRefreshTokenImpl.fromJson(Map<String, dynamic> json) =>
      _$$YinRefreshTokenImplFromJson(json);

  @override
  @JsonKey(name: 'value')
  final String value;
  @override
  @JsonKey(name: 'used_count')
  final int usedCount;

  @override
  String toString() {
    return 'YinRefreshToken(value: $value, usedCount: $usedCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$YinRefreshTokenImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.usedCount, usedCount) ||
                other.usedCount == usedCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value, usedCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$YinRefreshTokenImplCopyWith<_$YinRefreshTokenImpl> get copyWith =>
      __$$YinRefreshTokenImplCopyWithImpl<_$YinRefreshTokenImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$YinRefreshTokenImplToJson(
      this,
    );
  }
}

abstract class _YinRefreshToken implements YinRefreshToken {
  const factory _YinRefreshToken(
          {@JsonKey(name: 'value') required final String value,
          @JsonKey(name: 'used_count') final int usedCount}) =
      _$YinRefreshTokenImpl;

  factory _YinRefreshToken.fromJson(Map<String, dynamic> json) =
      _$YinRefreshTokenImpl.fromJson;

  @override
  @JsonKey(name: 'value')
  String get value;
  @override
  @JsonKey(name: 'used_count')
  int get usedCount;
  @override
  @JsonKey(ignore: true)
  _$$YinRefreshTokenImplCopyWith<_$YinRefreshTokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
