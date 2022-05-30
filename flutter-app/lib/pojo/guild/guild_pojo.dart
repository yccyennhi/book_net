import 'package:freezed_annotation/freezed_annotation.dart';

part 'guild_pojo.freezed.dart';
part 'guild_pojo.g.dart';

@freezed
class GuildPojo with _$GuildPojo {
  const factory GuildPojo({
    required String id,
    required String imageUrl,
    required String name,
    required String descrition,
    required List<String> memberList, //TODO: Fix
  }) = _GuildPojo;

  factory GuildPojo.fromJson(Map<String, dynamic> json) =>
      _$GuildPojoFromJson(json);
}
