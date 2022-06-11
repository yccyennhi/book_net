class FeedRepository {
  static final _singleton = FeedRepository._internal();

  factory FeedRepository() {
    return _singleton;
  }

  FeedRepository._internal();
}
