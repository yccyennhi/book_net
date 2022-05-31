// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reply_comment_pojo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReplyCommentPojo _$$_ReplyCommentPojoFromJson(Map<String, dynamic> json) =>
    _$_ReplyCommentPojo(
      id: json['id'] as String,
      content: json['content'] as String,
      commentUser:
          UserPojo.fromJson(json['commentUser'] as Map<String, dynamic>),
      createDate: json['createDate'] as int,
    );

Map<String, dynamic> _$$_ReplyCommentPojoToJson(_$_ReplyCommentPojo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'commentUser': instance.commentUser,
      'createDate': instance.createDate,
    };
