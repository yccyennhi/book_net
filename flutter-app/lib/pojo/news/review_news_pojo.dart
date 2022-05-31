import 'package:book_net/pojo/book/book_pojo.dart';
import 'package:book_net/pojo/news/base_news_pojo.dart';

import '../book/review_pojo.dart';
import '../user/user_pojo.dart';
import 'comment_pojo.dart';

class ReviewNewsPojo extends BaseNewsPojo {
  ReviewNewsPojo({
    required String id,
    required UserPojo user,
    required int type,
    required String caption,
    required int numberOfLikes,
    required List<CommentPojo> commentList,
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

  BookPojo book;

  String get bookImageUrl => book.imageUrl;
  String get bookName => book.name;
  String get bookAuthor => book.author;
  String get bookDescription => book.descrition;
  double get bookAvgRating => book.rate;
  int get bookNumberOfRating => book.numberOfRating;

  // factory ReviewNewsPojo.fromJson(Map<String, dynamic> json) {

  // }
}

// Use for UI testing
final BookPojo bookTestModel = BookPojo(
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
