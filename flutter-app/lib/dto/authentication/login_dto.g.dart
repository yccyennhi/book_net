// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginDto _$$_LoginDtoFromJson(Map<String, dynamic> json) => _$_LoginDto(
      id: json['id'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      accessToken: json['accessToken'] as String,
      tokenType: json['tokenType'] as String,
    );

Map<String, dynamic> _$$_LoginDtoToJson(_$_LoginDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'accessToken': instance.accessToken,
      'tokenType': instance.tokenType,
    };
