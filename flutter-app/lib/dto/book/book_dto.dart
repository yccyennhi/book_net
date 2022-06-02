import 'package:book_net/dto/book/review_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_dto.freezed.dart';
part 'book_dto.g.dart';

@freezed
class BookDto with _$BookDto {
  const factory BookDto({
    required String id,
    required String imageUrl,
    required String author,
    required String name,
    required String descrition,
    required int numberOfPages,
    required double rate,
    required int numberOfRating,
    required List<ReviewDto> reviewList,
    required int numberOfDownloads,
  }) = _BookDto;

  factory BookDto.fromJson(Map<String, dynamic> json) =>
      _$BookDtoFromJson(json);
}
