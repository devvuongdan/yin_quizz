// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$YinTaskImpl _$$YinTaskImplFromJson(Map<String, dynamic> json) =>
    _$YinTaskImpl(
      id: json['id'] as String,
      userId: json['user_id'] as String,
      createdAt: const DateTimeConverter().fromJson(json['created_at']),
      updateAt: const DateTimeConverter().fromJson(json['updated_at']),
      title: json['title'] as String,
      content: json['content'] as String,
      status: json['status'] as int? ?? -1,
    );

Map<String, dynamic> _$$YinTaskImplToJson(_$YinTaskImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'created_at': const DateTimeConverter().toJson(instance.createdAt),
      'updated_at': const DateTimeConverter().toJson(instance.updateAt),
      'title': instance.title,
      'content': instance.content,
      'status': instance.status,
    };
