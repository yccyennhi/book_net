// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'guild_pojo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GuildPojo _$GuildPojoFromJson(Map<String, dynamic> json) {
  return _GuildPojo.fromJson(json);
}

/// @nodoc
mixin _$GuildPojo {
  String get id => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get descrition => throw _privateConstructorUsedError;
  List<String> get memberList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GuildPojoCopyWith<GuildPojo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuildPojoCopyWith<$Res> {
  factory $GuildPojoCopyWith(GuildPojo value, $Res Function(GuildPojo) then) =
      _$GuildPojoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String imageUrl,
      String name,
      String descrition,
      List<String> memberList});
}

/// @nodoc
class _$GuildPojoCopyWithImpl<$Res> implements $GuildPojoCopyWith<$Res> {
  _$GuildPojoCopyWithImpl(this._value, this._then);

  final GuildPojo _value;
  // ignore: unused_field
  final $Res Function(GuildPojo) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? imageUrl = freezed,
    Object? name = freezed,
    Object? descrition = freezed,
    Object? memberList = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      descrition: descrition == freezed
          ? _value.descrition
          : descrition // ignore: cast_nullable_to_non_nullable
              as String,
      memberList: memberList == freezed
          ? _value.memberList
          : memberList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$$_GuildPojoCopyWith<$Res> implements $GuildPojoCopyWith<$Res> {
  factory _$$_GuildPojoCopyWith(
          _$_GuildPojo value, $Res Function(_$_GuildPojo) then) =
      __$$_GuildPojoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String imageUrl,
      String name,
      String descrition,
      List<String> memberList});
}

/// @nodoc
class __$$_GuildPojoCopyWithImpl<$Res> extends _$GuildPojoCopyWithImpl<$Res>
    implements _$$_GuildPojoCopyWith<$Res> {
  __$$_GuildPojoCopyWithImpl(
      _$_GuildPojo _value, $Res Function(_$_GuildPojo) _then)
      : super(_value, (v) => _then(v as _$_GuildPojo));

  @override
  _$_GuildPojo get _value => super._value as _$_GuildPojo;

  @override
  $Res call({
    Object? id = freezed,
    Object? imageUrl = freezed,
    Object? name = freezed,
    Object? descrition = freezed,
    Object? memberList = freezed,
  }) {
    return _then(_$_GuildPojo(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      descrition: descrition == freezed
          ? _value.descrition
          : descrition // ignore: cast_nullable_to_non_nullable
              as String,
      memberList: memberList == freezed
          ? _value._memberList
          : memberList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GuildPojo implements _GuildPojo {
  const _$_GuildPojo(
      {required this.id,
      required this.imageUrl,
      required this.name,
      required this.descrition,
      required final List<String> memberList})
      : _memberList = memberList;

  factory _$_GuildPojo.fromJson(Map<String, dynamic> json) =>
      _$$_GuildPojoFromJson(json);

  @override
  final String id;
  @override
  final String imageUrl;
  @override
  final String name;
  @override
  final String descrition;
  final List<String> _memberList;
  @override
  List<String> get memberList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_memberList);
  }

  @override
  String toString() {
    return 'GuildPojo(id: $id, imageUrl: $imageUrl, name: $name, descrition: $descrition, memberList: $memberList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GuildPojo &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.descrition, descrition) &&
            const DeepCollectionEquality()
                .equals(other._memberList, _memberList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(descrition),
      const DeepCollectionEquality().hash(_memberList));

  @JsonKey(ignore: true)
  @override
  _$$_GuildPojoCopyWith<_$_GuildPojo> get copyWith =>
      __$$_GuildPojoCopyWithImpl<_$_GuildPojo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GuildPojoToJson(this);
  }
}

abstract class _GuildPojo implements GuildPojo {
  const factory _GuildPojo(
      {required final String id,
      required final String imageUrl,
      required final String name,
      required final String descrition,
      required final List<String> memberList}) = _$_GuildPojo;

  factory _GuildPojo.fromJson(Map<String, dynamic> json) =
      _$_GuildPojo.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get imageUrl => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get descrition => throw _privateConstructorUsedError;
  @override
  List<String> get memberList => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_GuildPojoCopyWith<_$_GuildPojo> get copyWith =>
      throw _privateConstructorUsedError;
}
