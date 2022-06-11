class FeedProvider {
  static final _singleton = FeedProvider._internal();

  factory FeedProvider() {
    return _singleton;
  }

  FeedProvider._internal();
}
