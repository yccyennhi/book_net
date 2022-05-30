// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_pojo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommentPojo _$$_CommentPojoFromJson(Map<String, dynamic> json) =>
    _$_CommentPojo(
      id: json['id'] as String,
      content: json['content'] as String,
      replyList: (json['replyList'] as List<dynamic>)
          .map((e) => ReplyCommentPojo.fromJson(e as Map<String, dynamic>))
          .toList(),
      createDate: json['createDate'] as int,
    );

Map<String, dynamic> _$$_CommentPojoToJson(_$_CommentPojo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'replyList': instance.replyList,
      'createDate': instance.createDate,
    };
