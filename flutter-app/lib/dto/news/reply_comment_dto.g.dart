// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reply_comment_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReplyCommentDto _$$_ReplyCommentDtoFromJson(Map<String, dynamic> json) =>
    _$_ReplyCommentDto(
      id: json['id'] as String,
      content: json['content'] as String,
      commentUser:
          UserDto.fromJson(json['commentUser'] as Map<String, dynamic>),
      createDate: json['createDate'] as int,
    );

Map<String, dynamic> _$$_ReplyCommentDtoToJson(_$_ReplyCommentDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'commentUser': instance.commentUser,
      'createDate': instance.createDate,
    };
