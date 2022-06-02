// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BookDto _$$_BookDtoFromJson(Map<String, dynamic> json) => _$_BookDto(
      id: json['id'] as String,
      imageUrl: json['imageUrl'] as String,
      author: json['author'] as String,
      name: json['name'] as String,
      descrition: json['descrition'] as String,
      numberOfPages: json['numberOfPages'] as int,
      rate: (json['rate'] as num).toDouble(),
      numberOfRating: json['numberOfRating'] as int,
      reviewList: (json['reviewList'] as List<dynamic>)
          .map((e) => ReviewDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      numberOfDownloads: json['numberOfDownloads'] as int,
    );

Map<String, dynamic> _$$_BookDtoToJson(_$_BookDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imageUrl': instance.imageUrl,
      'author': instance.author,
      'name': instance.name,
      'descrition': instance.descrition,
      'numberOfPages': instance.numberOfPages,
      'rate': instance.rate,
      'numberOfRating': instance.numberOfRating,
      'reviewList': instance.reviewList,
      'numberOfDownloads': instance.numberOfDownloads,
    };
