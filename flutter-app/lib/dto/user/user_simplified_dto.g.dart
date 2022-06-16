// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_simplified_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserSimplifiedDto _$$_UserSimplifiedDtoFromJson(Map<String, dynamic> json) =>
    _$_UserSimplifiedDto(
      id: json['id'] as String,
      alias: json['alias'] as String,
      imageUrl: json['urlImage'] as String?,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_UserSimplifiedDtoToJson(
        _$_UserSimplifiedDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'alias': instance.alias,
      'urlImage': instance.imageUrl,
      'name': instance.name,
    };
