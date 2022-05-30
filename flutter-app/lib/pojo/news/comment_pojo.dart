import 'package:book_net/pojo/news/reply_comment_pojo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_pojo.freezed.dart';
part 'comment_pojo.g.dart';

@freezed
class CommentPojo with _$CommentPojo {
  factory CommentPojo(
      {required String id,
      required String content,
      required List<ReplyCommentPojo> replyList,
      required int createDate}) = _CommentPojo;

  factory CommentPojo.fromJson(Map<String, dynamic> json) =>
      _$CommentPojoFromJson(json);
}
