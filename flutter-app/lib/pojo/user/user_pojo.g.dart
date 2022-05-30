// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_pojo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserPojo _$$_UserPojoFromJson(Map<String, dynamic> json) => _$_UserPojo(
      id: json['id'] as String,
      imageUrl: json['imageUrl'] as String,
      name: json['name'] as String,
      alias: json['alias'] as String,
      gender: json['gender'] as bool,
      dateOfBirth: json['dateOfBirth'] as String,
      bookShelf: json['bookShelf'] as String,
      friendList: (json['friendList'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      guildList:
          (json['guildList'] as List<dynamic>).map((e) => e as String).toList(),
      currentPoint: json['currentPoint'] as int,
      highestPoint: json['highestPoint'] as int,
    );

Map<String, dynamic> _$$_UserPojoToJson(_$_UserPojo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imageUrl': instance.imageUrl,
      'name': instance.name,
      'alias': instance.alias,
      'gender': instance.gender,
      'dateOfBirth': instance.dateOfBirth,
      'bookShelf': instance.bookShelf,
      'friendList': instance.friendList,
      'guildList': instance.guildList,
      'currentPoint': instance.currentPoint,
      'highestPoint': instance.highestPoint,
    };
