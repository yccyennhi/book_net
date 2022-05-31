import 'package:book_net/pojo/book/review_pojo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_pojo.freezed.dart';
part 'book_pojo.g.dart';

@freezed
class BookPojo with _$BookPojo {
  const factory BookPojo({
    required String id,
    required String imageUrl,
    required String author,
    required String name,
    required String descrition,
    required int numberOfPages,
    required double rate,
    required int numberOfRating,
    required List<ReviewPojo> reviewList,
    required int numberOfDownloads,
  }) = _BookPojo;

  factory BookPojo.fromJson(Map<String, dynamic> json) =>
      _$BookPojoFromJson(json);
}
