import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_simplified_dto.freezed.dart';
part 'user_simplified_dto.g.dart';

@freezed
class UserSimplifiedDto with _$UserSimplifiedDto {
  factory UserSimplifiedDto({
    required String id,
    required String alias,
    @JsonKey(name: 'urlImage') required String? imageUrl,
    required String name,
  }) = _UserSimplifiedDto;

  factory UserSimplifiedDto.fromJson(Map<String, dynamic> json) =>
      _$UserSimplifiedDtoFromJson(json);
}
