import 'package:dio/dio.dart';

import '../../constants/endpoints.dart';

class FeedRepository {
  static final _singleton = FeedRepository._internal();

  factory FeedRepository() {
    return _singleton;
  }

  FeedRepository._internal();

  Future<Response> createPostNews(
      String userId, String caption, List<String> imagesUrl) async {
    Dio _dio = Dio();
    Response response = await _dio.post(AppEndpoints.signInEndPoint,
        data: {"userId": userId, "caption": caption, "imagesUrl": imagesUrl});
    return response;
  }
}
