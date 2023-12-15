// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$YinUserImpl _$$YinUserImplFromJson(Map<String, dynamic> json) =>
    _$YinUserImpl(
      id: json['id'] as String,
      username: json['username'] as String,
      givenName: json['given_name'] as String,
      createdAt: const DateTimeConverter().fromJson(json['created_at']),
      updateAt: const DateTimeConverter().fromJson(json['updated_at']),
      updatePwAt: const DateTimeConverter().fromJson(json['updated_pw_at']),
      password: json['password'] as String? ?? '',
    );

Map<String, dynamic> _$$YinUserImplToJson(_$YinUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'given_name': instance.givenName,
      'created_at': const DateTimeConverter().toJson(instance.createdAt),
      'updated_at': const DateTimeConverter().toJson(instance.updateAt),
      'updated_pw_at': const DateTimeConverter().toJson(instance.updatePwAt),
      'password': instance.password,
    };
