// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'guild.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Guild _$GuildFromJson(Map<String, dynamic> json) {
  return _Guild.fromJson(json);
}

/// @nodoc
mixin _$Guild {
  String get id => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get descrition => throw _privateConstructorUsedError;
  List<String> get memberList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GuildCopyWith<Guild> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuildCopyWith<$Res> {
  factory $GuildCopyWith(Guild value, $Res Function(Guild) then) =
      _$GuildCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String imageUrl,
      String name,
      String descrition,
      List<String> memberList});
}

/// @nodoc
class _$GuildCopyWithImpl<$Res> implements $GuildCopyWith<$Res> {
  _$GuildCopyWithImpl(this._value, this._then);

  final Guild _value;
  // ignore: unused_field
  final $Res Function(Guild) _then;

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
abstract class _$$_GuildCopyWith<$Res> implements $GuildCopyWith<$Res> {
  factory _$$_GuildCopyWith(_$_Guild value, $Res Function(_$_Guild) then) =
      __$$_GuildCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String imageUrl,
      String name,
      String descrition,
      List<String> memberList});
}

/// @nodoc
class __$$_GuildCopyWithImpl<$Res> extends _$GuildCopyWithImpl<$Res>
    implements _$$_GuildCopyWith<$Res> {
  __$$_GuildCopyWithImpl(_$_Guild _value, $Res Function(_$_Guild) _then)
      : super(_value, (v) => _then(v as _$_Guild));

  @override
  _$_Guild get _value => super._value as _$_Guild;

  @override
  $Res call({
    Object? id = freezed,
    Object? imageUrl = freezed,
    Object? name = freezed,
    Object? descrition = freezed,
    Object? memberList = freezed,
  }) {
    return _then(_$_Guild(
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
class _$_Guild implements _Guild {
  const _$_Guild(
      {required this.id,
      required this.imageUrl,
      required this.name,
      required this.descrition,
      required final List<String> memberList})
      : _memberList = memberList;

  factory _$_Guild.fromJson(Map<String, dynamic> json) =>
      _$$_GuildFromJson(json);

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
    return 'Guild(id: $id, imageUrl: $imageUrl, name: $name, descrition: $descrition, memberList: $memberList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Guild &&
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
  _$$_GuildCopyWith<_$_Guild> get copyWith =>
      __$$_GuildCopyWithImpl<_$_Guild>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GuildToJson(this);
  }
}

abstract class _Guild implements Guild {
  const factory _Guild(
      {required final String id,
      required final String imageUrl,
      required final String name,
      required final String descrition,
      required final List<String> memberList}) = _$_Guild;

  factory _Guild.fromJson(Map<String, dynamic> json) = _$_Guild.fromJson;

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
  _$$_GuildCopyWith<_$_Guild> get copyWith =>
      throw _privateConstructorUsedError;
}
