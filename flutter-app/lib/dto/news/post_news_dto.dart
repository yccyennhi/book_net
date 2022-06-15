import 'package:book_net/dto/news/base_news_dto.dart';
import '../user/user_dto.dart';
import 'comment_dto.dart';

class PostNewsDto extends BaseNewsDto {
  PostNewsDto({
    required String id,
    required UserDto user,
    required int type,
    required String caption,
    required this.imageUrl,
    required List<String> likeUserIdList,
    required List<CommentDto> commentList,
    required int createDate,
  }) : super(
            id: id,
            user: user,
            type: type,
            caption: caption,
            likeUserIdList: likeUserIdList,
            commentList: commentList,
            createDate: createDate);

  String imageUrl;

  // factory PostNewsDto.fromJson(Map<String, dynamic> json) {

  // }
}
