// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDto _$UserDtoFromJson(Map<String, dynamic> json) {
  return _UserDto.fromJson(json);
}

/// @nodoc
mixin _$UserDto {
  String get id => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'usename')
  String get name => throw _privateConstructorUsedError;
  String get alias => throw _privateConstructorUsedError;
  bool get gender => throw _privateConstructorUsedError;
  String get dateOfBirth => throw _privateConstructorUsedError;
  String get bookShelf => throw _privateConstructorUsedError; //TODO: Fix
  List<String> get friendList => throw _privateConstructorUsedError; //TODO: Fix
  List<String> get guildList => throw _privateConstructorUsedError;
  int get currentPoint => throw _privateConstructorUsedError;
  int get highestPoint => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDtoCopyWith<UserDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDtoCopyWith<$Res> {
  factory $UserDtoCopyWith(UserDto value, $Res Function(UserDto) then) =
      _$UserDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String imageUrl,
      @JsonKey(name: 'usename') String name,
      String alias,
      bool gender,
      String dateOfBirth,
      String bookShelf,
      List<String> friendList,
      List<String> guildList,
      int currentPoint,
      int highestPoint});
}

/// @nodoc
class _$UserDtoCopyWithImpl<$Res> implements $UserDtoCopyWith<$Res> {
  _$UserDtoCopyWithImpl(this._value, this._then);

  final UserDto _value;
  // ignore: unused_field
  final $Res Function(UserDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? imageUrl = freezed,
    Object? name = freezed,
    Object? alias = freezed,
    Object? gender = freezed,
    Object? dateOfBirth = freezed,
    Object? bookShelf = freezed,
    Object? friendList = freezed,
    Object? guildList = freezed,
    Object? currentPoint = freezed,
    Object? highestPoint = freezed,
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
      alias: alias == freezed
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as bool,
      dateOfBirth: dateOfBirth == freezed
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String,
      bookShelf: bookShelf == freezed
          ? _value.bookShelf
          : bookShelf // ignore: cast_nullable_to_non_nullable
              as String,
      friendList: friendList == freezed
          ? _value.friendList
          : friendList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      guildList: guildList == freezed
          ? _value.guildList
          : guildList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      currentPoint: currentPoint == freezed
          ? _value.currentPoint
          : currentPoint // ignore: cast_nullable_to_non_nullable
              as int,
      highestPoint: highestPoint == freezed
          ? _value.highestPoint
          : highestPoint // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_UserDtoCopyWith<$Res> implements $UserDtoCopyWith<$Res> {
  factory _$$_UserDtoCopyWith(
          _$_UserDto value, $Res Function(_$_UserDto) then) =
      __$$_UserDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String imageUrl,
      @JsonKey(name: 'usename') String name,
      String alias,
      bool gender,
      String dateOfBirth,
      String bookShelf,
      List<String> friendList,
      List<String> guildList,
      int currentPoint,
      int highestPoint});
}

/// @nodoc
class __$$_UserDtoCopyWithImpl<$Res> extends _$UserDtoCopyWithImpl<$Res>
    implements _$$_UserDtoCopyWith<$Res> {
  __$$_UserDtoCopyWithImpl(_$_UserDto _value, $Res Function(_$_UserDto) _then)
      : super(_value, (v) => _then(v as _$_UserDto));

  @override
  _$_UserDto get _value => super._value as _$_UserDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? imageUrl = freezed,
    Object? name = freezed,
    Object? alias = freezed,
    Object? gender = freezed,
    Object? dateOfBirth = freezed,
    Object? bookShelf = freezed,
    Object? friendList = freezed,
    Object? guildList = freezed,
    Object? currentPoint = freezed,
    Object? highestPoint = freezed,
  }) {
    return _then(_$_UserDto(
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
      alias: alias == freezed
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as bool,
      dateOfBirth: dateOfBirth == freezed
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String,
      bookShelf: bookShelf == freezed
          ? _value.bookShelf
          : bookShelf // ignore: cast_nullable_to_non_nullable
              as String,
      friendList: friendList == freezed
          ? _value._friendList
          : friendList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      guildList: guildList == freezed
          ? _value._guildList
          : guildList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      currentPoint: currentPoint == freezed
          ? _value.currentPoint
          : currentPoint // ignore: cast_nullable_to_non_nullable
              as int,
      highestPoint: highestPoint == freezed
          ? _value.highestPoint
          : highestPoint // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserDto implements _UserDto {
  _$_UserDto(
      {required this.id,
      required this.imageUrl,
      @JsonKey(name: 'usename') required this.name,
      required this.alias,
      required this.gender,
      required this.dateOfBirth,
      required this.bookShelf,
      required final List<String> friendList,
      required final List<String> guildList,
      required this.currentPoint,
      required this.highestPoint})
      : _friendList = friendList,
        _guildList = guildList;

  factory _$_UserDto.fromJson(Map<String, dynamic> json) =>
      _$$_UserDtoFromJson(json);

  @override
  final String id;
  @override
  final String imageUrl;
  @override
  @JsonKey(name: 'usename')
  final String name;
  @override
  final String alias;
  @override
  final bool gender;
  @override
  final String dateOfBirth;
  @override
  final String bookShelf;
//TODO: Fix
  final List<String> _friendList;
//TODO: Fix
  @override
  List<String> get friendList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_friendList);
  }

//TODO: Fix
  final List<String> _guildList;
//TODO: Fix
  @override
  List<String> get guildList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_guildList);
  }

  @override
  final int currentPoint;
  @override
  final int highestPoint;

  @override
  String toString() {
    return 'UserDto(id: $id, imageUrl: $imageUrl, name: $name, alias: $alias, gender: $gender, dateOfBirth: $dateOfBirth, bookShelf: $bookShelf, friendList: $friendList, guildList: $guildList, currentPoint: $currentPoint, highestPoint: $highestPoint)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.alias, alias) &&
            const DeepCollectionEquality().equals(other.gender, gender) &&
            const DeepCollectionEquality()
                .equals(other.dateOfBirth, dateOfBirth) &&
            const DeepCollectionEquality().equals(other.bookShelf, bookShelf) &&
            const DeepCollectionEquality()
                .equals(other._friendList, _friendList) &&
            const DeepCollectionEquality()
                .equals(other._guildList, _guildList) &&
            const DeepCollectionEquality()
                .equals(other.currentPoint, currentPoint) &&
            const DeepCollectionEquality()
                .equals(other.highestPoint, highestPoint));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(alias),
      const DeepCollectionEquality().hash(gender),
      const DeepCollectionEquality().hash(dateOfBirth),
      const DeepCollectionEquality().hash(bookShelf),
      const DeepCollectionEquality().hash(_friendList),
      const DeepCollectionEquality().hash(_guildList),
      const DeepCollectionEquality().hash(currentPoint),
      const DeepCollectionEquality().hash(highestPoint));

  @JsonKey(ignore: true)
  @override
  _$$_UserDtoCopyWith<_$_UserDto> get copyWith =>
      __$$_UserDtoCopyWithImpl<_$_UserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDtoToJson(this);
  }
}

abstract class _UserDto implements UserDto {
  factory _UserDto(
      {required final String id,
      required final String imageUrl,
      @JsonKey(name: 'usename') required final String name,
      required final String alias,
      required final bool gender,
      required final String dateOfBirth,
      required final String bookShelf,
      required final List<String> friendList,
      required final List<String> guildList,
      required final int currentPoint,
      required final int highestPoint}) = _$_UserDto;

  factory _UserDto.fromJson(Map<String, dynamic> json) = _$_UserDto.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get imageUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'usename')
  String get name => throw _privateConstructorUsedError;
  @override
  String get alias => throw _privateConstructorUsedError;
  @override
  bool get gender => throw _privateConstructorUsedError;
  @override
  String get dateOfBirth => throw _privateConstructorUsedError;
  @override
  String get bookShelf => throw _privateConstructorUsedError;
  @override //TODO: Fix
  List<String> get friendList => throw _privateConstructorUsedError;
  @override //TODO: Fix
  List<String> get guildList => throw _privateConstructorUsedError;
  @override
  int get currentPoint => throw _privateConstructorUsedError;
  @override
  int get highestPoint => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_UserDtoCopyWith<_$_UserDto> get copyWith =>
      throw _privateConstructorUsedError;
}
