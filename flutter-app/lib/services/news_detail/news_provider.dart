import 'package:book_net/dto/news/reply_comment_dto.dart';
import 'package:book_net/services/news_detail/news_repository.dart';
import 'package:book_net/view_models/user/curr_user.dart';
import 'package:dio/dio.dart';

import '../../dto/news/comment_dto.dart';

class NewsDetailProvider {
  static final _singleton = NewsDetailProvider._internal();

  factory NewsDetailProvider() {
    return _singleton;
  }

  NewsDetailProvider._internal();

  Future<List<String>> reactNews(String newsId, int newsType) async {
    Response response = await NewsDetailRepository()
        .reactNews(CurrUserData().userId, newsId, newsType);

    List<String> userIdLikeList = response.data["data"];
    return userIdLikeList;
  }

  Future<CommentDto> createComment(
      String newsId, int newsType, String content) async {
    Response response = await NewsDetailRepository()
        .createComment(CurrUserData().userId, newsId, newsType, content);

    CommentDto comment = CommentDto.fromJson(response.data["data"]);
    return comment;
  }

  Future<ReplyCommentDto> createReplyComment(
      String newsId, int newsType, String content, String commendId) async {
    Response response = await NewsDetailRepository().createReplyComment(
        CurrUserData().userId, newsId, newsType, content, commendId);

    ReplyCommentDto comment = ReplyCommentDto.fromJson(response.data["data"]);
    return comment;
  }
}
