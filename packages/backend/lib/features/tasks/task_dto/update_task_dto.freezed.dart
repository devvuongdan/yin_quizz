// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_task_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateTaskDto _$UpdateTaskDtoFromJson(Map<String, dynamic> json) {
  return _UpdateTaskDto.fromJson(json);
}

/// @nodoc
mixin _$UpdateTaskDto {
  String get id => throw _privateConstructorUsedError;
  @DateTimeConverter()
  @DateTimeConverter()
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateTaskDtoCopyWith<UpdateTaskDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateTaskDtoCopyWith<$Res> {
  factory $UpdateTaskDtoCopyWith(
          UpdateTaskDto value, $Res Function(UpdateTaskDto) then) =
      _$UpdateTaskDtoCopyWithImpl<$Res, UpdateTaskDto>;
  @useResult
  $Res call(
      {String id,
      @DateTimeConverter() @DateTimeConverter() String title,
      String content,
      int status});
}

/// @nodoc
class _$UpdateTaskDtoCopyWithImpl<$Res, $Val extends UpdateTaskDto>
    implements $UpdateTaskDtoCopyWith<$Res> {
  _$UpdateTaskDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$UpdateTaskDtoImplCopyWith<$Res>
    implements $UpdateTaskDtoCopyWith<$Res> {
  factory _$$UpdateTaskDtoImplCopyWith(
          _$UpdateTaskDtoImpl value, $Res Function(_$UpdateTaskDtoImpl) then) =
      __$$UpdateTaskDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @DateTimeConverter() @DateTimeConverter() String title,
      String content,
      int status});
}

/// @nodoc
class __$$UpdateTaskDtoImplCopyWithImpl<$Res>
    extends _$UpdateTaskDtoCopyWithImpl<$Res, _$UpdateTaskDtoImpl>
    implements _$$UpdateTaskDtoImplCopyWith<$Res> {
  __$$UpdateTaskDtoImplCopyWithImpl(
      _$UpdateTaskDtoImpl _value, $Res Function(_$UpdateTaskDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? status = null,
  }) {
    return _then(_$UpdateTaskDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$UpdateTaskDtoImpl implements _UpdateTaskDto {
  const _$UpdateTaskDtoImpl(
      {required this.id,
      @DateTimeConverter() @DateTimeConverter() required this.title,
      required this.content,
      this.status = -1});

  factory _$UpdateTaskDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateTaskDtoImplFromJson(json);

  @override
  final String id;
  @override
  @DateTimeConverter()
  @DateTimeConverter()
  final String title;
  @override
  final String content;
  @override
  @JsonKey()
  final int status;

  @override
  String toString() {
    return 'UpdateTaskDto(id: $id, title: $title, content: $content, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTaskDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, content, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTaskDtoImplCopyWith<_$UpdateTaskDtoImpl> get copyWith =>
      __$$UpdateTaskDtoImplCopyWithImpl<_$UpdateTaskDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateTaskDtoImplToJson(
      this,
    );
  }
}

abstract class _UpdateTaskDto implements UpdateTaskDto {
  const factory _UpdateTaskDto(
      {required final String id,
      @DateTimeConverter() @DateTimeConverter() required final String title,
      required final String content,
      final int status}) = _$UpdateTaskDtoImpl;

  factory _UpdateTaskDto.fromJson(Map<String, dynamic> json) =
      _$UpdateTaskDtoImpl.fromJson;

  @override
  String get id;
  @override
  @DateTimeConverter()
  @DateTimeConverter()
  String get title;
  @override
  String get content;
  @override
  int get status;
  @override
  @JsonKey(ignore: true)
  _$$UpdateTaskDtoImplCopyWith<_$UpdateTaskDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
