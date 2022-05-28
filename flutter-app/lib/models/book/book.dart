import 'package:book_net/models/book/review.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book.freezed.dart';
part 'book.g.dart';

@freezed
class Book with _$Book {
  const factory Book({
    required String id,
    required String imageUrl,
    required String author,
    required String name,
    required String descrition,
    required int numberOfPages,
    required double rate,
    required int numberOfRating,
    required List<Review> reviewList,
    required int numberOfDownloads,
  }) = _Book;

  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);
}
