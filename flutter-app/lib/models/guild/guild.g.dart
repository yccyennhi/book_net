// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guild.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Guild _$$_GuildFromJson(Map<String, dynamic> json) => _$_Guild(
      id: json['id'] as String,
      imageUrl: json['imageUrl'] as String,
      name: json['name'] as String,
      descrition: json['descrition'] as String,
      memberList: (json['memberList'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_GuildToJson(_$_Guild instance) => <String, dynamic>{
      'id': instance.id,
      'imageUrl': instance.imageUrl,
      'name': instance.name,
      'descrition': instance.descrition,
      'memberList': instance.memberList,
    };
