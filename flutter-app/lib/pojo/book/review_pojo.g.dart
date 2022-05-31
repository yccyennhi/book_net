// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_pojo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReviewPojo _$$_ReviewPojoFromJson(Map<String, dynamic> json) =>
    _$_ReviewPojo(
      id: json['id'] as String,
      user: UserPojo.fromJson(json['user'] as Map<String, dynamic>),
      content: json['content'] as String,
      rate: json['rate'] as int,
      createDate: json['createDate'] as int,
    );

Map<String, dynamic> _$$_ReviewPojoToJson(_$_ReviewPojo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'content': instance.content,
      'rate': instance.rate,
      'createDate': instance.createDate,
    };
