import 'package:book_net/pojo/guild/guild_pojo.dart';
import 'package:book_net/pojo/news/base_news_pojo.dart';

import '../user/user_pojo.dart';
import 'comment_pojo.dart';

class GuildNewsPojo extends BaseNewsPojo {
  GuildNewsPojo(
      {required String id,
      required UserPojo user,
      required int type,
      required String caption,
      required int numberOfLikes,
      required List<CommentPojo> commentList,
      required int createDate,
      required this.guild, //TODO: Fix
      required this.imageUrl})
      : super(
            id: id,
            user: user,
            type: type,
            caption: caption,
            numberOfLikes: numberOfLikes,
            commentList: commentList,
            createDate: createDate);

  GuildPojo guild;
  String imageUrl;

  String get guildImageUrl => guild.imageUrl;
  String get guildName => guild.name;

  // factory GuildNewsPojo.fromJson(Map<String, dynamic> json) {

  // }
}
