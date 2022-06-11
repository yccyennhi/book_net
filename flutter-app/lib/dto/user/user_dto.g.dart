// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDto _$$_UserDtoFromJson(Map<String, dynamic> json) => _$_UserDto(
      id: json['id'] as String,
      alias: json['username'] as String,
      email: json['email'] as String,
      imageUrl: json['urlImage'] as String?,
      name: json['name'] as String,
      gender: json['gender'] as int,
      dob: json['dob'] as String,
      bookShelf:
          (json['bookShelf'] as List<dynamic>).map((e) => e as String).toList(),
      guildList:
          (json['guilds'] as List<dynamic>).map((e) => e as String).toList(),
      friendList:
          (json['friend'] as List<dynamic>).map((e) => e as String).toList(),
      currentPoint: json['currentPoint'] as int,
      highestPoint: json['highestPoint'] as int,
      createDate: json['creationDate'] as int,
    );

Map<String, dynamic> _$$_UserDtoToJson(_$_UserDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.alias,
      'email': instance.email,
      'urlImage': instance.imageUrl,
      'name': instance.name,
      'gender': instance.gender,
      'dob': instance.dob,
      'bookShelf': instance.bookShelf,
      'guilds': instance.guildList,
      'friend': instance.friendList,
      'currentPoint': instance.currentPoint,
      'highestPoint': instance.highestPoint,
      'creationDate': instance.createDate,
    };
