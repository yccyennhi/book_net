import 'package:book_net/pojo/news/base_news_pojo.dart';
import 'package:book_net/pojo/user/user_pojo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_pojo.freezed.dart';
part 'review_pojo.g.dart';

@freezed
class ReviewPojo with _$ReviewPojo {
  factory ReviewPojo({
    required String id,
    required UserPojo user,
    required String content,
    required int rate,
    required int createDate,
  }) = _ReviewPojo;

  factory ReviewPojo.fromJson(Map<String, dynamic> json) =>
      _$ReviewPojoFromJson(json);
}

// Use for UI testing
final ReviewPojo reviewTestModel = ReviewPojo(
    id: 'id',
    user: userTestModel,
    content: 'Review review',
    rate: 4,
    createDate: 1653286844319);
