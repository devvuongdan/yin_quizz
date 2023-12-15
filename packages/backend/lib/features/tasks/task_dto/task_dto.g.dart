// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskDtoImpl _$$TaskDtoImplFromJson(Map<String, dynamic> json) =>
    _$TaskDtoImpl(
      title: json['title'] as String,
      content: json['content'] as String,
      status: json['status'] as int? ?? -1,
    );

Map<String, dynamic> _$$TaskDtoImplToJson(_$TaskDtoImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
      'status': instance.status,
    };
