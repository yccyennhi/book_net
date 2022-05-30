import 'package:book_net/pojo/news/base_news_pojo.dart';
import '../user/user_pojo.dart';
import 'comment_pojo.dart';

class PostNewsPojo extends BaseNewsPojo {
  PostNewsPojo({
    required String id,
    required UserPojo user,
    required int type,
    required String caption,
    required this.imageUrl,
    required int numberOfLikes,
    required List<CommentPojo> commentList,
    required int createDate,
  }) : super(
            id: id,
            user: user,
            type: type,
            caption: caption,
            numberOfLikes: numberOfLikes,
            commentList: commentList,
            createDate: createDate);

  String imageUrl;

  // factory PostNewsPojo.fromJson(Map<String, dynamic> json) {

  // }
}
