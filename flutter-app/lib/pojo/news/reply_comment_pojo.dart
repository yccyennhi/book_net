import 'package:freezed_annotation/freezed_annotation.dart';

import '../user/user_pojo.dart';

part 'reply_comment_pojo.freezed.dart';
part 'reply_comment_pojo.g.dart';

@freezed
class ReplyCommentPojo with _$ReplyCommentPojo {
  factory ReplyCommentPojo(
      {required String id,
      required String content,
      required UserPojo commentUser,
      required int createDate}) = _ReplyCommentPojo;

  factory ReplyCommentPojo.fromJson(Map<String, dynamic> json) =>
      _$ReplyCommentPojoFromJson(json);
}
