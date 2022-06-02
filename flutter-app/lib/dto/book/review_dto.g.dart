// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReviewDto _$$_ReviewDtoFromJson(Map<String, dynamic> json) => _$_ReviewDto(
      id: json['id'] as String,
      user: UserDto.fromJson(json['user'] as Map<String, dynamic>),
      content: json['content'] as String,
      rate: json['rate'] as int,
      createDate: json['createDate'] as int,
    );

Map<String, dynamic> _$$_ReviewDtoToJson(_$_ReviewDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'content': instance.content,
      'rate': instance.rate,
      'createDate': instance.createDate,
    };
