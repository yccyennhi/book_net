import 'package:book_net/dto/guild/guild_dto.dart';
import 'package:book_net/dto/news/base_news_dto.dart';

import '../user/user_dto.dart';
import 'comment_dto.dart';

class GuildNewsDto extends BaseNewsDto {
  GuildNewsDto(
      {required String id,
      required UserDto user,
      required int type,
      required String caption,
      required List<String> likeUserIdList,
      required List<CommentDto> commentList,
      required int createDate,
      required this.guild, //TODO: Fix
      required this.imageUrl})
      : super(
            id: id,
            user: user,
            type: type,
            caption: caption,
            likeUserIdList: likeUserIdList,
            commentList: commentList,
            createDate: createDate);

  GuildDto guild;
  String imageUrl;

  String get guildImageUrl => guild.imageUrl;
  String get guildName => guild.name;

  // factory GuildNewsDto.fromJson(Map<String, dynamic> json) {

  // }
}
