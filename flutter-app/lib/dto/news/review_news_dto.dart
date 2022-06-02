import 'package:book_net/dto/book/book_dto.dart';
import 'package:book_net/dto/news/base_news_dto.dart';

import '../book/review_dto.dart';
import '../user/user_dto.dart';
import 'comment_dto.dart';

class ReviewNewsDto extends BaseNewsDto {
  ReviewNewsDto({
    required String id,
    required UserDto user,
    required int type,
    required String caption,
    required int numberOfLikes,
    required List<CommentDto> commentList,
    required int createDate,
    required this.book, //TODO: Fix
  }) : super(
            id: id,
            user: user,
            type: type,
            caption: caption,
            numberOfLikes: numberOfLikes,
            commentList: commentList,
            createDate: createDate);

  BookDto book;

  String get bookImageUrl => book.imageUrl;
  String get bookName => book.name;
  String get bookAuthor => book.author;
  String get bookDescription => book.descrition;
  double get bookAvgRating => book.rate;
  int get bookNumberOfRating => book.numberOfRating;

  // factory ReviewNewsDto.fromJson(Map<String, dynamic> json) {

  // }
}

// Use for UI testing
final BookDto bookTestModel = BookDto(
    id: 'id',
    imageUrl:
        'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1522157426l/19063._SY475_.jpg',
    author: 'Markus Zusak',
    name: 'The Book Thief',
    descrition:
        "Librarian's note: An alternate cover edition can be found hereIt is 1939. Nazi Germany. The country is holding its breath.",
    numberOfPages: 552,
    rate: 4.2,
    numberOfRating: 60,
    reviewList: [reviewTestModel],
    numberOfDownloads: 200);
