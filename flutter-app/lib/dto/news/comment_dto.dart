import 'package:book_net/dto/news/reply_comment_dto.dart';
import 'package:book_net/dto/user/user_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_dto.freezed.dart';
part 'comment_dto.g.dart';

@freezed
class CommentDto with _$CommentDto {
  factory CommentDto(
      {required String id,
      required String content,
      required UserDto commentUser,
      required List<ReplyCommentDto> replyList,
      required int createDate}) = _CommentDto;

  factory CommentDto.fromJson(Map<String, dynamic> json) =>
      _$CommentDtoFromJson(json);
}
