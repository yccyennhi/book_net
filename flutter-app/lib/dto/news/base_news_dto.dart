import 'package:book_net/dto/guild/guild_dto.dart';
import 'package:book_net/dto/news/comment_dto.dart';
import 'package:book_net/dto/news/guild_news_dto.dart';
import 'package:book_net/dto/news/post_news_dto.dart';
import 'package:book_net/dto/news/reply_comment_dto.dart';
import 'package:book_net/dto/news/review_news_dto.dart';
import 'package:book_net/dto/user/user_dto.dart';

class BaseNewsDto {
  BaseNewsDto({
    required this.id,
    required this.user,
    required this.type,
    required this.caption,
    required this.numberOfLikes,
    required this.commentList,
    required this.createDate,
  });

  String id;
  UserDto user;
  int type;
  String caption;
  int numberOfLikes;
  List<CommentDto> commentList;
  int createDate;

  String get userAlias => user.alias;
  String get userImageUrl => user.imageUrl;
  // factory BaseNewsDto.fromJson(Map<String, dynamic> json) {

  // }
}

enum NewsType {
  post(1),
  guild(2),
  review(3);

  const NewsType(this.value);
  final int value;

  static NewsType? fromInt(int value) {
    for (NewsType type in NewsType.values) {
      if (type.value == value) {
        return type;
      }
    }
    return null;
  }
}

// Use for UI testing
// PostNewsDto

final List<BaseNewsDto> newsListTest = [
  postNewsTestModel,
  reviewNewsTestModel,
  guildNewsDto
];
final UserDto userTestModel = UserDto(
    id: 'id',
    imageUrl:
        'https://scontent.fsgn2-6.fna.fbcdn.net/v/t1.6435-9/176869830_1722285027979676_4686567485411404858_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=fZSaWooaGbkAX-wW0vZ&_nc_ht=scontent.fsgn2-6.fna&oh=00_AT-bvy-nieiOghaaxPGkoC4xJlsGPGM-D-mrEQ-NsccUtw&oe=62B9088A',
    name: 'Duy Quan',
    alias: 'duyquann',
    gender: true,
    dateOfBirth: '01/01/1999',
    bookShelf: 'bookShelf',
    friendList: ['friendList'],
    guildList: ['guildList'],
    currentPoint: 100,
    highestPoint: 1000);

final List<CommentDto> commentListTestModel = [
  commentTestModel,
  commentTestModel
];

final commentTestModel = CommentDto(
    id: 'id',
    content: 'Commment comment',
    commentUser: userTestModel,
    replyList: [
      replyCommentTestModel,
      replyCommentTestModel,
    ],
    createDate: 1653286844319);

final replyCommentTestModel = ReplyCommentDto(
    id: 'id',
    content: 'Reply Comment',
    commentUser: userTestModel,
    createDate: 1653286844319);

final PostNewsDto postNewsTestModel = PostNewsDto(
    id: 'id',
    user: userTestModel,
    type: NewsType.post.value,
    caption: 'Caption caption',
    numberOfLikes: 1,
    imageUrl:
        'https://scontent.fsgn2-5.fna.fbcdn.net/v/t1.6435-9/123682547_1587251551483025_7141545519838769160_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=e3f864&_nc_ohc=LH3Twa4Bp-UAX84OLUg&_nc_ht=scontent.fsgn2-5.fna&oh=00_AT_eFvjsRaLCX-tXHwYkg1rDDMCjKSrCP0hTMSg9z7Oe_w&oe=62BA406D',
    commentList: commentListTestModel,
    createDate: 1653286844319);

// ReviewNewsDto
final ReviewNewsDto reviewNewsTestModel = ReviewNewsDto(
    id: 'id',
    user: userTestModel,
    type: NewsType.review.value,
    caption: 'Caption caption',
    numberOfLikes: 10,
    commentList: commentListTestModel,
    createDate: 1653286844319,
    book: bookTestModel);

// Guild
const GuildDto guildTestModel = GuildDto(
    id: 'id',
    imageUrl:
        'https://scontent.fsgn2-5.fna.fbcdn.net/v/t1.6435-9/87220350_3114466355253620_8717576024990154752_n.jpg?stp=dst-jpg_s2048x2048&_nc_cat=102&ccb=1-7&_nc_sid=e3f864&_nc_ohc=jxQsnB6ejhgAX-Ce8gl&_nc_ht=scontent.fsgn2-5.fna&oh=00_AT-eTbC5-7_rUX24aTaaFo1xZAp5wnn4FcVgdTCP_9pyWA&oe=62BFF3EA',
    name: 'Đảo mèo',
    descrition: 'Đảo mèo descrition',
    memberList: ['memberList']);

// GuildNewsDto
final GuildNewsDto guildNewsDto = GuildNewsDto(
    id: 'id',
    user: userTestModel,
    type: NewsType.guild.value,
    caption: 'Caption caption',
    numberOfLikes: 60,
    commentList: commentListTestModel,
    createDate: 1653286844319,
    guild: guildTestModel,
    imageUrl:
        'https://scontent.fsgn2-5.fna.fbcdn.net/v/t1.6435-9/123682547_1587251551483025_7141545519838769160_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=e3f864&_nc_ohc=LH3Twa4Bp-UAX84OLUg&_nc_ht=scontent.fsgn2-5.fna&oh=00_AT_eFvjsRaLCX-tXHwYkg1rDDMCjKSrCP0hTMSg9z7Oe_w&oe=62BA406D');
