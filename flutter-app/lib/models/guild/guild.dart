import 'package:freezed_annotation/freezed_annotation.dart';

part 'guild.freezed.dart';
part 'guild.g.dart';

@freezed
class Guild with _$Guild {
  const factory Guild({
    required String id,
    required String imageUrl,
    required String name,
    required String descrition,
    required List<String> memberList, //TODO: Fix
  }) = _Guild;

  factory Guild.fromJson(Map<String, dynamic> json) => _$GuildFromJson(json);
}
