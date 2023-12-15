// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

YinUser _$YinUserFromJson(Map<String, dynamic> json) {
  return _YinUser.fromJson(json);
}

/// @nodoc
mixin _$YinUser {
  String get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'given_name')
  String get givenName => throw _privateConstructorUsedError;
  @DateTimeConverter()
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @DateTimeConverter()
  @JsonKey(name: 'updated_at')
  DateTime get updateAt => throw _privateConstructorUsedError;
  @DateTimeConverter()
  @JsonKey(name: 'updated_pw_at')
  DateTime get updatePwAt => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $YinUserCopyWith<YinUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YinUserCopyWith<$Res> {
  factory $YinUserCopyWith(YinUser value, $Res Function(YinUser) then) =
      _$YinUserCopyWithImpl<$Res, YinUser>;
  @useResult
  $Res call(
      {String id,
      String username,
      @JsonKey(name: 'given_name') String givenName,
      @DateTimeConverter() @JsonKey(name: 'created_at') DateTime createdAt,
      @DateTimeConverter() @JsonKey(name: 'updated_at') DateTime updateAt,
      @DateTimeConverter() @JsonKey(name: 'updated_pw_at') DateTime updatePwAt,
      String password});
}

/// @nodoc
class _$YinUserCopyWithImpl<$Res, $Val extends YinUser>
    implements $YinUserCopyWith<$Res> {
  _$YinUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? givenName = null,
    Object? createdAt = null,
    Object? updateAt = null,
    Object? updatePwAt = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      givenName: null == givenName
          ? _value.givenName
          : givenName // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updateAt: null == updateAt
          ? _value.updateAt
          : updateAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatePwAt: null == updatePwAt
          ? _value.updatePwAt
          : updatePwAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$YinUserImplCopyWith<$Res> implements $YinUserCopyWith<$Res> {
  factory _$$YinUserImplCopyWith(
          _$YinUserImpl value, $Res Function(_$YinUserImpl) then) =
      __$$YinUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String username,
      @JsonKey(name: 'given_name') String givenName,
      @DateTimeConverter() @JsonKey(name: 'created_at') DateTime createdAt,
      @DateTimeConverter() @JsonKey(name: 'updated_at') DateTime updateAt,
      @DateTimeConverter() @JsonKey(name: 'updated_pw_at') DateTime updatePwAt,
      String password});
}

/// @nodoc
class __$$YinUserImplCopyWithImpl<$Res>
    extends _$YinUserCopyWithImpl<$Res, _$YinUserImpl>
    implements _$$YinUserImplCopyWith<$Res> {
  __$$YinUserImplCopyWithImpl(
      _$YinUserImpl _value, $Res Function(_$YinUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? givenName = null,
    Object? createdAt = null,
    Object? updateAt = null,
    Object? updatePwAt = null,
    Object? password = null,
  }) {
    return _then(_$YinUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      givenName: null == givenName
          ? _value.givenName
          : givenName // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updateAt: null == updateAt
          ? _value.updateAt
          : updateAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatePwAt: null == updatePwAt
          ? _value.updatePwAt
          : updatePwAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$YinUserImpl implements _YinUser {
  const _$YinUserImpl(
      {required this.id,
      required this.username,
      @JsonKey(name: 'given_name') required this.givenName,
      @DateTimeConverter() @JsonKey(name: 'created_at') required this.createdAt,
      @DateTimeConverter() @JsonKey(name: 'updated_at') required this.updateAt,
      @DateTimeConverter()
      @JsonKey(name: 'updated_pw_at')
      required this.updatePwAt,
      this.password = ''});

  factory _$YinUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$YinUserImplFromJson(json);

  @override
  final String id;
  @override
  final String username;
  @override
  @JsonKey(name: 'given_name')
  final String givenName;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'updated_at')
  final DateTime updateAt;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'updated_pw_at')
  final DateTime updatePwAt;
  @override
  @JsonKey()
  final String password;

  @override
  String toString() {
    return 'YinUser(id: $id, username: $username, givenName: $givenName, createdAt: $createdAt, updateAt: $updateAt, updatePwAt: $updatePwAt, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$YinUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.givenName, givenName) ||
                other.givenName == givenName) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updateAt, updateAt) ||
                other.updateAt == updateAt) &&
            (identical(other.updatePwAt, updatePwAt) ||
                other.updatePwAt == updatePwAt) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, username, givenName,
      createdAt, updateAt, updatePwAt, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$YinUserImplCopyWith<_$YinUserImpl> get copyWith =>
      __$$YinUserImplCopyWithImpl<_$YinUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$YinUserImplToJson(
      this,
    );
  }
}

abstract class _YinUser implements YinUser {
  const factory _YinUser(
      {required final String id,
      required final String username,
      @JsonKey(name: 'given_name') required final String givenName,
      @DateTimeConverter()
      @JsonKey(name: 'created_at')
      required final DateTime createdAt,
      @DateTimeConverter()
      @JsonKey(name: 'updated_at')
      required final DateTime updateAt,
      @DateTimeConverter()
      @JsonKey(name: 'updated_pw_at')
      required final DateTime updatePwAt,
      final String password}) = _$YinUserImpl;

  factory _YinUser.fromJson(Map<String, dynamic> json) = _$YinUserImpl.fromJson;

  @override
  String get id;
  @override
  String get username;
  @override
  @JsonKey(name: 'given_name')
  String get givenName;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'updated_at')
  DateTime get updateAt;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'updated_pw_at')
  DateTime get updatePwAt;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$YinUserImplCopyWith<_$YinUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
