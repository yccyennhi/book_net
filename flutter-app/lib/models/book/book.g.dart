// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Book _$$_BookFromJson(Map<String, dynamic> json) => _$_Book(
      id: json['id'] as String,
      imageUrl: json['imageUrl'] as String,
      author: json['author'] as String,
      name: json['name'] as String,
      descrition: json['descrition'] as String,
      numberOfPages: json['numberOfPages'] as int,
      rate: (json['rate'] as num).toDouble(),
      numberOfRating: json['numberOfRating'] as int,
      reviewList: (json['reviewList'] as List<dynamic>)
          .map((e) => Review.fromJson(e as Map<String, dynamic>))
          .toList(),
      numberOfDownloads: json['numberOfDownloads'] as int,
    );

Map<String, dynamic> _$$_BookToJson(_$_Book instance) => <String, dynamic>{
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
