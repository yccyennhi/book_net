import 'package:dio/dio.dart';

import '../../constants/endpoints.dart';
import 'feed_repository.dart';

class FeedProvider {
  static final _singleton = FeedProvider._internal();

  factory FeedProvider() {
    return _singleton;
  }

  FeedProvider._internal();

  Future<void> createPostNews(
      String userId, String caption, List<String> imagesUrl) async {
    await FeedRepository().createPostNews(userId, caption, imagesUrl);
    return;
  }
}
