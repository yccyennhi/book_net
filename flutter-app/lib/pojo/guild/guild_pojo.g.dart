// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guild_pojo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GuildPojo _$$_GuildPojoFromJson(Map<String, dynamic> json) => _$_GuildPojo(
      id: json['id'] as String,
      imageUrl: json['imageUrl'] as String,
      name: json['name'] as String,
      descrition: json['descrition'] as String,
      memberList: (json['memberList'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_GuildPojoToJson(_$_GuildPojo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imageUrl': instance.imageUrl,
      'name': instance.name,
      'descrition': instance.descrition,
      'memberList': instance.memberList,
    };
