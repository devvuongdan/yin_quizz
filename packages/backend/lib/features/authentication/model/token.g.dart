// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$YinTokenImpl _$$YinTokenImplFromJson(Map<String, dynamic> json) =>
    _$YinTokenImpl(
      userId: json['id'] as String,
      accessToken: json['access_token'] as String,
      createdAt: const DateTimeConverter().fromJson(json['created_at']),
      exp: const DateTimeConverter().fromJson(json['exp']),
    );

Map<String, dynamic> _$$YinTokenImplToJson(_$YinTokenImpl instance) =>
    <String, dynamic>{
      'id': instance.userId,
      'access_token': instance.accessToken,
      'created_at': const DateTimeConverter().toJson(instance.createdAt),
      'exp': const DateTimeConverter().toJson(instance.exp),
    };

_$YinRefreshTokenImpl _$$YinRefreshTokenImplFromJson(
        Map<String, dynamic> json) =>
    _$YinRefreshTokenImpl(
      value: json['value'] as String,
      usedCount: json['used_count'] as int? ?? 10,
    );

Map<String, dynamic> _$$YinRefreshTokenImplToJson(
        _$YinRefreshTokenImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'used_count': instance.usedCount,
    };
