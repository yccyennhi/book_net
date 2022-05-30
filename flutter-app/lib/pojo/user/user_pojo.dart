import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_pojo.freezed.dart';
part 'user_pojo.g.dart';

@freezed
class UserPojo with _$UserPojo {
  factory UserPojo(
      {required String id,
      required String imageUrl,
      required String name,
      required String alias,
      required bool gender,
      required String dateOfBirth,
      required String bookShelf, //TODO: Fix
      required List<String> friendList, //TODO: Fix
      required List<String> guildList,
      required int currentPoint,
      required int highestPoint}) = _UserPojo;

  factory UserPojo.fromJson(Map<String, dynamic> json) =>
      _$UserPojoFromJson(json);
}
