import 'package:book_net/pojo/guild/guild_pojo.dart';
import 'package:book_net/pojo/news/comment_pojo.dart';
import 'package:book_net/pojo/news/guild_news_pojo.dart';
import 'package:book_net/pojo/news/post_news_pojo.dart';
import 'package:book_net/pojo/news/reply_comment_pojo.dart';
import 'package:book_net/pojo/news/review_news_pojo.dart';
import 'package:book_net/pojo/user/user_pojo.dart';

class BaseNewsPojo {
  BaseNewsPojo({
    required this.id,
    required this.user,
    required this.type,
    required this.caption,
    required this.numberOfLikes,
    required this.commentList,
    required this.createDate,
  });

  String id;
  UserPojo user;
  int type;
  String caption;
  int numberOfLikes;
  List<CommentPojo> commentList;
  int createDate;

  String get userAlias => user.alias;
  String get userImageUrl => user.imageUrl;
  // factory BaseNewsPojo.fromJson(Map<String, dynamic> json) {

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
// PostNewsPojo

final List<BaseNewsPojo> newsListTest = [
  postNewsTestModel,
  reviewNewsTestModel,
  guildNewsPojo
];
final UserPojo userTestModel = UserPojo(
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

final List<CommentPojo> commentListTestModel = [
  CommentPojo(
      id: 'id',
      content: 'Commment comment',
      replyList: [
        ReplyCommentPojo(
            id: 'id', content: 'Reply Comment', createDate: 1653286844319)
      ],
      createDate: 1653286844319)
];
final PostNewsPojo postNewsTestModel = PostNewsPojo(
    id: 'id',
    user: userTestModel,
    type: NewsType.post.value,
    caption: 'Caption caption',
    numberOfLikes: 1,
    imageUrl:
        'https://scontent.fsgn2-5.fna.fbcdn.net/v/t1.6435-9/123682547_1587251551483025_7141545519838769160_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=e3f864&_nc_ohc=LH3Twa4Bp-UAX84OLUg&_nc_ht=scontent.fsgn2-5.fna&oh=00_AT_eFvjsRaLCX-tXHwYkg1rDDMCjKSrCP0hTMSg9z7Oe_w&oe=62BA406D',
    commentList: commentListTestModel,
    createDate: 1653286844319);

// ReviewNewsPojo
final ReviewNewsPojo reviewNewsTestModel = ReviewNewsPojo(
    id: 'id',
    user: userTestModel,
    type: NewsType.review.value,
    caption: 'Caption caption',
    numberOfLikes: 10,
    commentList: commentListTestModel,
    createDate: 1653286844319,
    book: bookTestModel);

// Guild
const GuildPojo guildTestModel = GuildPojo(
    id: 'id',
    imageUrl:
        'https://scontent.fhan3-2.fna.fbcdn.net/v/t39.30808-6/229970825_1969814793182837_7646581825036902120_n.jpg?_nc_cat=1&ccb=1-7&_nc_sid=8631f5&_nc_ohc=qXDvHoxnJx4AX_MyAbb&_nc_oc=AQkEWEIJCctI6Y69POBGBnOYw0A5ttnbzpMT1Gi8T4yqu1d8Y2KgQrHdkyDQwn8FS_c&_nc_ht=scontent.fhan3-2.fna&oh=00_AT8hCxJSZF70iPSmi4jbLL2HJIJU3cFyCDVSz_cj0wEVog&oe=6298CA8B',
    name: 'Đảo mèo',
    descrition: 'Đảo mèo descrition',
    memberList: ['memberList']);

// GuildNewsPojo
final GuildNewsPojo guildNewsPojo = GuildNewsPojo(
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
