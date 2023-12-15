// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'insert_user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InsertYinUserDto _$InsertYinUserDtoFromJson(Map<String, dynamic> json) {
  return _InsertYinUserDto.fromJson(json);
}

/// @nodoc
mixin _$InsertYinUserDto {
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false)
  String? get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InsertYinUserDtoCopyWith<InsertYinUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InsertYinUserDtoCopyWith<$Res> {
  factory $InsertYinUserDtoCopyWith(
          InsertYinUserDto value, $Res Function(InsertYinUserDto) then) =
      _$InsertYinUserDtoCopyWithImpl<$Res, InsertYinUserDto>;
  @useResult
  $Res call(
      {String? username, @JsonKey(includeToJson: false) String? password});
}

/// @nodoc
class _$InsertYinUserDtoCopyWithImpl<$Res, $Val extends InsertYinUserDto>
    implements $InsertYinUserDtoCopyWith<$Res> {
  _$InsertYinUserDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InsertYinUserDtoImplCopyWith<$Res>
    implements $InsertYinUserDtoCopyWith<$Res> {
  factory _$$InsertYinUserDtoImplCopyWith(_$InsertYinUserDtoImpl value,
          $Res Function(_$InsertYinUserDtoImpl) then) =
      __$$InsertYinUserDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? username, @JsonKey(includeToJson: false) String? password});
}

/// @nodoc
class __$$InsertYinUserDtoImplCopyWithImpl<$Res>
    extends _$InsertYinUserDtoCopyWithImpl<$Res, _$InsertYinUserDtoImpl>
    implements _$$InsertYinUserDtoImplCopyWith<$Res> {
  __$$InsertYinUserDtoImplCopyWithImpl(_$InsertYinUserDtoImpl _value,
      $Res Function(_$InsertYinUserDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(_$InsertYinUserDtoImpl(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
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
class _$InsertYinUserDtoImpl implements _InsertYinUserDto {
  const _$InsertYinUserDtoImpl(
      {required this.username,
      @JsonKey(includeToJson: false) this.password = ''});

  factory _$InsertYinUserDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$InsertYinUserDtoImplFromJson(json);

  @override
  final String? username;
  @override
  @JsonKey(includeToJson: false)
  final String? password;

  @override
  String toString() {
    return 'InsertYinUserDto(username: $username, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsertYinUserDtoImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InsertYinUserDtoImplCopyWith<_$InsertYinUserDtoImpl> get copyWith =>
      __$$InsertYinUserDtoImplCopyWithImpl<_$InsertYinUserDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InsertYinUserDtoImplToJson(
      this,
    );
  }
}

abstract class _InsertYinUserDto implements InsertYinUserDto {
  const factory _InsertYinUserDto(
          {required final String? username,
          @JsonKey(includeToJson: false) final String? password}) =
      _$InsertYinUserDtoImpl;

  factory _InsertYinUserDto.fromJson(Map<String, dynamic> json) =
      _$InsertYinUserDtoImpl.fromJson;

  @override
  String? get username;
  @override
  @JsonKey(includeToJson: false)
  String? get password;
  @override
  @JsonKey(ignore: true)
  _$$InsertYinUserDtoImplCopyWith<_$InsertYinUserDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
