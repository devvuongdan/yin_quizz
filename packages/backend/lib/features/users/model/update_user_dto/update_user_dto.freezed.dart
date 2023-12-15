// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateYinUserDto _$UpdateYinUserDtoFromJson(Map<String, dynamic> json) {
  return _UpdateYinUserDto.fromJson(json);
}

/// @nodoc
mixin _$UpdateYinUserDto {
  @JsonKey(name: 'given_name')
  String? get givenName => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateYinUserDtoCopyWith<UpdateYinUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateYinUserDtoCopyWith<$Res> {
  factory $UpdateYinUserDtoCopyWith(
          UpdateYinUserDto value, $Res Function(UpdateYinUserDto) then) =
      _$UpdateYinUserDtoCopyWithImpl<$Res, UpdateYinUserDto>;
  @useResult
  $Res call({@JsonKey(name: 'given_name') String? givenName, String? password});
}

/// @nodoc
class _$UpdateYinUserDtoCopyWithImpl<$Res, $Val extends UpdateYinUserDto>
    implements $UpdateYinUserDtoCopyWith<$Res> {
  _$UpdateYinUserDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? givenName = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      givenName: freezed == givenName
          ? _value.givenName
          : givenName // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateYinUserDtoImplCopyWith<$Res>
    implements $UpdateYinUserDtoCopyWith<$Res> {
  factory _$$UpdateYinUserDtoImplCopyWith(_$UpdateYinUserDtoImpl value,
          $Res Function(_$UpdateYinUserDtoImpl) then) =
      __$$UpdateYinUserDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'given_name') String? givenName, String? password});
}

/// @nodoc
class __$$UpdateYinUserDtoImplCopyWithImpl<$Res>
    extends _$UpdateYinUserDtoCopyWithImpl<$Res, _$UpdateYinUserDtoImpl>
    implements _$$UpdateYinUserDtoImplCopyWith<$Res> {
  __$$UpdateYinUserDtoImplCopyWithImpl(_$UpdateYinUserDtoImpl _value,
      $Res Function(_$UpdateYinUserDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? givenName = freezed,
    Object? password = freezed,
  }) {
    return _then(_$UpdateYinUserDtoImpl(
      givenName: freezed == givenName
          ? _value.givenName
          : givenName // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateYinUserDtoImpl implements _UpdateYinUserDto {
  const _$UpdateYinUserDtoImpl(
      {@JsonKey(name: 'given_name') required this.givenName, this.password});

  factory _$UpdateYinUserDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateYinUserDtoImplFromJson(json);

  @override
  @JsonKey(name: 'given_name')
  final String? givenName;
  @override
  final String? password;

  @override
  String toString() {
    return 'UpdateYinUserDto(givenName: $givenName, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateYinUserDtoImpl &&
            (identical(other.givenName, givenName) ||
                other.givenName == givenName) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, givenName, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateYinUserDtoImplCopyWith<_$UpdateYinUserDtoImpl> get copyWith =>
      __$$UpdateYinUserDtoImplCopyWithImpl<_$UpdateYinUserDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateYinUserDtoImplToJson(
      this,
    );
  }
}

abstract class _UpdateYinUserDto implements UpdateYinUserDto {
  const factory _UpdateYinUserDto(
      {@JsonKey(name: 'given_name') required final String? givenName,
      final String? password}) = _$UpdateYinUserDtoImpl;

  factory _UpdateYinUserDto.fromJson(Map<String, dynamic> json) =
      _$UpdateYinUserDtoImpl.fromJson;

  @override
  @JsonKey(name: 'given_name')
  String? get givenName;
  @override
  String? get password;
  @override
  @JsonKey(ignore: true)
  _$$UpdateYinUserDtoImplCopyWith<_$UpdateYinUserDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
