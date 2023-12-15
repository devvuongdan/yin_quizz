// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'refresh_token_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RefreshTokenDto _$RefreshTokenDtoFromJson(Map<String, dynamic> json) {
  return _RefreshTokenDto.fromJson(json);
}

/// @nodoc
mixin _$RefreshTokenDto {
  @JsonKey(name: 'refresh_token')
  String? get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RefreshTokenDtoCopyWith<RefreshTokenDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefreshTokenDtoCopyWith<$Res> {
  factory $RefreshTokenDtoCopyWith(
          RefreshTokenDto value, $Res Function(RefreshTokenDto) then) =
      _$RefreshTokenDtoCopyWithImpl<$Res, RefreshTokenDto>;
  @useResult
  $Res call({@JsonKey(name: 'refresh_token') String? refreshToken});
}

/// @nodoc
class _$RefreshTokenDtoCopyWithImpl<$Res, $Val extends RefreshTokenDto>
    implements $RefreshTokenDtoCopyWith<$Res> {
  _$RefreshTokenDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshToken = freezed,
  }) {
    return _then(_value.copyWith(
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RefreshTokenDtoImplCopyWith<$Res>
    implements $RefreshTokenDtoCopyWith<$Res> {
  factory _$$RefreshTokenDtoImplCopyWith(_$RefreshTokenDtoImpl value,
          $Res Function(_$RefreshTokenDtoImpl) then) =
      __$$RefreshTokenDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'refresh_token') String? refreshToken});
}

/// @nodoc
class __$$RefreshTokenDtoImplCopyWithImpl<$Res>
    extends _$RefreshTokenDtoCopyWithImpl<$Res, _$RefreshTokenDtoImpl>
    implements _$$RefreshTokenDtoImplCopyWith<$Res> {
  __$$RefreshTokenDtoImplCopyWithImpl(
      _$RefreshTokenDtoImpl _value, $Res Function(_$RefreshTokenDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshToken = freezed,
  }) {
    return _then(_$RefreshTokenDtoImpl(
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RefreshTokenDtoImpl implements _RefreshTokenDto {
  const _$RefreshTokenDtoImpl(
      {@JsonKey(name: 'refresh_token') required this.refreshToken});

  factory _$RefreshTokenDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RefreshTokenDtoImplFromJson(json);

  @override
  @JsonKey(name: 'refresh_token')
  final String? refreshToken;

  @override
  String toString() {
    return 'RefreshTokenDto(refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshTokenDtoImpl &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, refreshToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RefreshTokenDtoImplCopyWith<_$RefreshTokenDtoImpl> get copyWith =>
      __$$RefreshTokenDtoImplCopyWithImpl<_$RefreshTokenDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RefreshTokenDtoImplToJson(
      this,
    );
  }
}

abstract class _RefreshTokenDto implements RefreshTokenDto {
  const factory _RefreshTokenDto(
      {@JsonKey(name: 'refresh_token')
      required final String? refreshToken}) = _$RefreshTokenDtoImpl;

  factory _RefreshTokenDto.fromJson(Map<String, dynamic> json) =
      _$RefreshTokenDtoImpl.fromJson;

  @override
  @JsonKey(name: 'refresh_token')
  String? get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$$RefreshTokenDtoImplCopyWith<_$RefreshTokenDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
