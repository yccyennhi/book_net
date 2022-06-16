import 'package:book_net/dto/user/user_simplified_dto.dart';
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
      required List<UserSimplifiedDto> following,
      required List<UserSimplifiedDto> followers,
      required int currentPoint,
      required int highestPoint,
      @JsonKey(name: 'creationDate') required int createDate}) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
}
