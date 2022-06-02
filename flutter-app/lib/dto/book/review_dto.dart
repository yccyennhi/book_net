import 'package:book_net/dto/news/base_news_dto.dart';
import 'package:book_net/dto/user/user_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_dto.freezed.dart';
part 'review_dto.g.dart';

@freezed
class ReviewDto with _$ReviewDto {
  factory ReviewDto({
    required String id,
    required UserDto user,
    required String content,
    required int rate,
    required int createDate,
  }) = _ReviewDto;

  factory ReviewDto.fromJson(Map<String, dynamic> json) =>
      _$ReviewDtoFromJson(json);
}

// Use for UI testing
final ReviewDto reviewTestModel = ReviewDto(
    id: 'id',
    user: userTestModel,
    content: 'Review review',
    rate: 4,
    createDate: 1653286844319);
