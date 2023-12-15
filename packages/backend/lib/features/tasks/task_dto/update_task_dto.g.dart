// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_task_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateTaskDtoImpl _$$UpdateTaskDtoImplFromJson(Map<String, dynamic> json) =>
    _$UpdateTaskDtoImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      status: json['status'] as int? ?? -1,
    );

Map<String, dynamic> _$$UpdateTaskDtoImplToJson(_$UpdateTaskDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'status': instance.status,
    };
