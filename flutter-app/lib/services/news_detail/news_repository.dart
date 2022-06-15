import 'package:dio/dio.dart';

import '../../constants/endpoints.dart';
import '../http_header_option.dart';

class NewsDetailRepository {
  static final _singleton = NewsDetailRepository._internal();

  factory NewsDetailRepository() {
    return _singleton;
  }

  NewsDetailRepository._internal();

  Future<Response> reactNews(String userId, String newsId, int newsType) async {
    Dio _dio = Dio();
    Response response = await _dio.post(
      AppEndpoints.reactEndPoint,
      options: HttpHeaderOption().options,
      data: {
        "newsId": newsId,
        "userId": userId,
        "newsType": newsType,
      },
    );

    return response;
  }

  Future<Response> createComment(
      String userId, String newsId, int newsType, String content) async {
    Dio _dio = Dio();
    Response response = await _dio.post(
      AppEndpoints.createCommentEndPoint,
      options: HttpHeaderOption().options,
      data: {
        "newsId": newsId,
        "userId": userId,
        "newsType": newsType,
        "content": content,
      },
    );

    return response;
  }

  Future<Response> createReplyComment(String userId, String newsId,
      int newsType, String content, String commentId) async {
    Dio _dio = Dio();
    Response response = await _dio.post(
      AppEndpoints.createReplyCommentEndPoint,
      options: HttpHeaderOption().options,
      data: {
        "newsId": newsId,
        "userId": userId,
        "newsType": newsType,
        "content": content,
        "commentId": commentId,
      },
    );

    return response;
  }
}
