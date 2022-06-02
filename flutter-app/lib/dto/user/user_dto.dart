import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class UserDto with _$UserDto {
  factory UserDto(
      {required String id,
      required String imageUrl,
      @JsonKey(name: 'usename') required String name,
      required String alias,
      required bool gender,
      required String dateOfBirth,
      required String bookShelf, //TODO: Fix
      required List<String> friendList, //TODO: Fix
      required List<String> guildList,
      required int currentPoint,
      required int highestPoint}) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
}
