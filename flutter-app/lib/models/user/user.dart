import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User(
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
      required int highestPoint}) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
