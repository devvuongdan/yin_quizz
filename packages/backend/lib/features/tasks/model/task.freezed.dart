// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

YinTask _$YinTaskFromJson(Map<String, dynamic> json) {
  return _YinTask.fromJson(json);
}

/// @nodoc
mixin _$YinTask {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @DateTimeConverter()
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @DateTimeConverter()
  @JsonKey(name: 'updated_at')
  DateTime get updateAt => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $YinTaskCopyWith<YinTask> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YinTaskCopyWith<$Res> {
  factory $YinTaskCopyWith(YinTask value, $Res Function(YinTask) then) =
      _$YinTaskCopyWithImpl<$Res, YinTask>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'user_id') String userId,
      @DateTimeConverter() @JsonKey(name: 'created_at') DateTime createdAt,
      @DateTimeConverter() @JsonKey(name: 'updated_at') DateTime updateAt,
      String title,
      String content,
      int status});
}

/// @nodoc
class _$YinTaskCopyWithImpl<$Res, $Val extends YinTask>
    implements $YinTaskCopyWith<$Res> {
  _$YinTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? createdAt = null,
    Object? updateAt = null,
    Object? title = null,
    Object? content = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updateAt: null == updateAt
          ? _value.updateAt
          : updateAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$YinTaskImplCopyWith<$Res> implements $YinTaskCopyWith<$Res> {
  factory _$$YinTaskImplCopyWith(
          _$YinTaskImpl value, $Res Function(_$YinTaskImpl) then) =
      __$$YinTaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'user_id') String userId,
      @DateTimeConverter() @JsonKey(name: 'created_at') DateTime createdAt,
      @DateTimeConverter() @JsonKey(name: 'updated_at') DateTime updateAt,
      String title,
      String content,
      int status});
}

/// @nodoc
class __$$YinTaskImplCopyWithImpl<$Res>
    extends _$YinTaskCopyWithImpl<$Res, _$YinTaskImpl>
    implements _$$YinTaskImplCopyWith<$Res> {
  __$$YinTaskImplCopyWithImpl(
      _$YinTaskImpl _value, $Res Function(_$YinTaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? createdAt = null,
    Object? updateAt = null,
    Object? title = null,
    Object? content = null,
    Object? status = null,
  }) {
    return _then(_$YinTaskImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updateAt: null == updateAt
          ? _value.updateAt
          : updateAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$YinTaskImpl implements _YinTask {
  const _$YinTaskImpl(
      {required this.id,
      @JsonKey(name: 'user_id') required this.userId,
      @DateTimeConverter() @JsonKey(name: 'created_at') required this.createdAt,
      @DateTimeConverter() @JsonKey(name: 'updated_at') required this.updateAt,
      required this.title,
      required this.content,
      this.status = -1});

  factory _$YinTaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$YinTaskImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'updated_at')
  final DateTime updateAt;
  @override
  final String title;
  @override
  final String content;
  @override
  @JsonKey()
  final int status;

  @override
  String toString() {
    return 'YinTask(id: $id, userId: $userId, createdAt: $createdAt, updateAt: $updateAt, title: $title, content: $content, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$YinTaskImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updateAt, updateAt) ||
                other.updateAt == updateAt) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, userId, createdAt, updateAt, title, content, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$YinTaskImplCopyWith<_$YinTaskImpl> get copyWith =>
      __$$YinTaskImplCopyWithImpl<_$YinTaskImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$YinTaskImplToJson(
      this,
    );
  }
}

abstract class _YinTask implements YinTask {
  const factory _YinTask(
      {required final String id,
      @JsonKey(name: 'user_id') required final String userId,
      @DateTimeConverter()
      @JsonKey(name: 'created_at')
      required final DateTime createdAt,
      @DateTimeConverter()
      @JsonKey(name: 'updated_at')
      required final DateTime updateAt,
      required final String title,
      required final String content,
      final int status}) = _$YinTaskImpl;

  factory _YinTask.fromJson(Map<String, dynamic> json) = _$YinTaskImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @DateTimeConverter()
  @JsonKey(name: 'updated_at')
  DateTime get updateAt;
  @override
  String get title;
  @override
  String get content;
  @override
  int get status;
  @override
  @JsonKey(ignore: true)
  _$$YinTaskImplCopyWith<_$YinTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
