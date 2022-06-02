import 'package:freezed_annotation/freezed_annotation.dart';

import '../user/user_dto.dart';

part 'reply_comment_dto.freezed.dart';
part 'reply_comment_dto.g.dart';

@freezed
class ReplyCommentDto with _$ReplyCommentDto {
  factory ReplyCommentDto(
      {required String id,
      required String content,
      required UserDto commentUser,
      required int createDate}) = _ReplyCommentDto;

  factory ReplyCommentDto.fromJson(Map<String, dynamic> json) =>
      _$ReplyCommentDtoFromJson(json);
}
