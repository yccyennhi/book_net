// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommentDto _$$_CommentDtoFromJson(Map<String, dynamic> json) =>
    _$_CommentDto(
      id: json['id'] as String,
      content: json['content'] as String,
      commentUser:
          UserDto.fromJson(json['commentUser'] as Map<String, dynamic>),
      replyList: (json['replyList'] as List<dynamic>)
          .map((e) => ReplyCommentDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      createDate: json['createDate'] as int,
    );

Map<String, dynamic> _$$_CommentDtoToJson(_$_CommentDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'commentUser': instance.commentUser,
      'replyList': instance.replyList,
      'createDate': instance.createDate,
    };
