import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class UserDto with _$UserDto {
  factory UserDto(
      {required String id,
      @JsonKey(name: 'username') required String alias,
      required String email,
      @JsonKey(name: 'urlImage') required String? imageUrl,
      required String name,
      required int gender,
      required String dob,
      required List<String> bookShelf, //TODO: Fix
      @JsonKey(name: 'guilds') required List<String> guildList, //TODO: Fix
      @JsonKey(name: 'friend') required List<String> friendList, //TODO: Fix
      required int currentPoint,
      required int highestPoint,
      @JsonKey(name: 'creationDate') required int createDate}) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
}
