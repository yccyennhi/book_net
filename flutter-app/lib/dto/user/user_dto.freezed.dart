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
  @JsonKey(name: 'username')
  String get alias => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'urlImage')
  String? get imageUrl => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get gender => throw _privateConstructorUsedError;
  String get dob => throw _privateConstructorUsedError;
  List<String> get bookShelf => throw _privateConstructorUsedError; //TODO: Fix
  @JsonKey(name: 'guilds')
  List<String> get guildList => throw _privateConstructorUsedError; //TODO: Fix
  List<UserSimplifiedDto> get following => throw _privateConstructorUsedError;
  List<UserSimplifiedDto> get followers => throw _privateConstructorUsedError;
  int get currentPoint => throw _privateConstructorUsedError;
  int get highestPoint => throw _privateConstructorUsedError;
  @JsonKey(name: 'creationDate')
  int get createDate => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'username') String alias,
      String email,
      @JsonKey(name: 'urlImage') String? imageUrl,
      String name,
      int gender,
      String dob,
      List<String> bookShelf,
      @JsonKey(name: 'guilds') List<String> guildList,
      List<UserSimplifiedDto> following,
      List<UserSimplifiedDto> followers,
      int currentPoint,
      int highestPoint,
      @JsonKey(name: 'creationDate') int createDate});
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
    Object? alias = freezed,
    Object? email = freezed,
    Object? imageUrl = freezed,
    Object? name = freezed,
    Object? gender = freezed,
    Object? dob = freezed,
    Object? bookShelf = freezed,
    Object? guildList = freezed,
    Object? following = freezed,
    Object? followers = freezed,
    Object? currentPoint = freezed,
    Object? highestPoint = freezed,
    Object? createDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      alias: alias == freezed
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int,
      dob: dob == freezed
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String,
      bookShelf: bookShelf == freezed
          ? _value.bookShelf
          : bookShelf // ignore: cast_nullable_to_non_nullable
              as List<String>,
      guildList: guildList == freezed
          ? _value.guildList
          : guildList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      following: following == freezed
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as List<UserSimplifiedDto>,
      followers: followers == freezed
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as List<UserSimplifiedDto>,
      currentPoint: currentPoint == freezed
          ? _value.currentPoint
          : currentPoint // ignore: cast_nullable_to_non_nullable
              as int,
      highestPoint: highestPoint == freezed
          ? _value.highestPoint
          : highestPoint // ignore: cast_nullable_to_non_nullable
              as int,
      createDate: createDate == freezed
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
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
      @JsonKey(name: 'username') String alias,
      String email,
      @JsonKey(name: 'urlImage') String? imageUrl,
      String name,
      int gender,
      String dob,
      List<String> bookShelf,
      @JsonKey(name: 'guilds') List<String> guildList,
      List<UserSimplifiedDto> following,
      List<UserSimplifiedDto> followers,
      int currentPoint,
      int highestPoint,
      @JsonKey(name: 'creationDate') int createDate});
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
    Object? alias = freezed,
    Object? email = freezed,
    Object? imageUrl = freezed,
    Object? name = freezed,
    Object? gender = freezed,
    Object? dob = freezed,
    Object? bookShelf = freezed,
    Object? guildList = freezed,
    Object? following = freezed,
    Object? followers = freezed,
    Object? currentPoint = freezed,
    Object? highestPoint = freezed,
    Object? createDate = freezed,
  }) {
    return _then(_$_UserDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      alias: alias == freezed
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int,
      dob: dob == freezed
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String,
      bookShelf: bookShelf == freezed
          ? _value._bookShelf
          : bookShelf // ignore: cast_nullable_to_non_nullable
              as List<String>,
      guildList: guildList == freezed
          ? _value._guildList
          : guildList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      following: following == freezed
          ? _value._following
          : following // ignore: cast_nullable_to_non_nullable
              as List<UserSimplifiedDto>,
      followers: followers == freezed
          ? _value._followers
          : followers // ignore: cast_nullable_to_non_nullable
              as List<UserSimplifiedDto>,
      currentPoint: currentPoint == freezed
          ? _value.currentPoint
          : currentPoint // ignore: cast_nullable_to_non_nullable
              as int,
      highestPoint: highestPoint == freezed
          ? _value.highestPoint
          : highestPoint // ignore: cast_nullable_to_non_nullable
              as int,
      createDate: createDate == freezed
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserDto implements _UserDto {
  _$_UserDto(
      {required this.id,
      @JsonKey(name: 'username') required this.alias,
      required this.email,
      @JsonKey(name: 'urlImage') required this.imageUrl,
      required this.name,
      required this.gender,
      required this.dob,
      required final List<String> bookShelf,
      @JsonKey(name: 'guilds') required final List<String> guildList,
      required final List<UserSimplifiedDto> following,
      required final List<UserSimplifiedDto> followers,
      required this.currentPoint,
      required this.highestPoint,
      @JsonKey(name: 'creationDate') required this.createDate})
      : _bookShelf = bookShelf,
        _guildList = guildList,
        _following = following,
        _followers = followers;

  factory _$_UserDto.fromJson(Map<String, dynamic> json) =>
      _$$_UserDtoFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'username')
  final String alias;
  @override
  final String email;
  @override
  @JsonKey(name: 'urlImage')
  final String? imageUrl;
  @override
  final String name;
  @override
  final int gender;
  @override
  final String dob;
  final List<String> _bookShelf;
  @override
  List<String> get bookShelf {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bookShelf);
  }

//TODO: Fix
  final List<String> _guildList;
//TODO: Fix
  @override
  @JsonKey(name: 'guilds')
  List<String> get guildList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_guildList);
  }

//TODO: Fix
  final List<UserSimplifiedDto> _following;
//TODO: Fix
  @override
  List<UserSimplifiedDto> get following {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_following);
  }

  final List<UserSimplifiedDto> _followers;
  @override
  List<UserSimplifiedDto> get followers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_followers);
  }

  @override
  final int currentPoint;
  @override
  final int highestPoint;
  @override
  @JsonKey(name: 'creationDate')
  final int createDate;

  @override
  String toString() {
    return 'UserDto(id: $id, alias: $alias, email: $email, imageUrl: $imageUrl, name: $name, gender: $gender, dob: $dob, bookShelf: $bookShelf, guildList: $guildList, following: $following, followers: $followers, currentPoint: $currentPoint, highestPoint: $highestPoint, createDate: $createDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.alias, alias) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.gender, gender) &&
            const DeepCollectionEquality().equals(other.dob, dob) &&
            const DeepCollectionEquality()
                .equals(other._bookShelf, _bookShelf) &&
            const DeepCollectionEquality()
                .equals(other._guildList, _guildList) &&
            const DeepCollectionEquality()
                .equals(other._following, _following) &&
            const DeepCollectionEquality()
                .equals(other._followers, _followers) &&
            const DeepCollectionEquality()
                .equals(other.currentPoint, currentPoint) &&
            const DeepCollectionEquality()
                .equals(other.highestPoint, highestPoint) &&
            const DeepCollectionEquality()
                .equals(other.createDate, createDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(alias),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(gender),
      const DeepCollectionEquality().hash(dob),
      const DeepCollectionEquality().hash(_bookShelf),
      const DeepCollectionEquality().hash(_guildList),
      const DeepCollectionEquality().hash(_following),
      const DeepCollectionEquality().hash(_followers),
      const DeepCollectionEquality().hash(currentPoint),
      const DeepCollectionEquality().hash(highestPoint),
      const DeepCollectionEquality().hash(createDate));

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
          @JsonKey(name: 'username') required final String alias,
          required final String email,
          @JsonKey(name: 'urlImage') required final String? imageUrl,
          required final String name,
          required final int gender,
          required final String dob,
          required final List<String> bookShelf,
          @JsonKey(name: 'guilds') required final List<String> guildList,
          required final List<UserSimplifiedDto> following,
          required final List<UserSimplifiedDto> followers,
          required final int currentPoint,
          required final int highestPoint,
          @JsonKey(name: 'creationDate') required final int createDate}) =
      _$_UserDto;

  factory _UserDto.fromJson(Map<String, dynamic> json) = _$_UserDto.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'username')
  String get alias => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'urlImage')
  String? get imageUrl => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  int get gender => throw _privateConstructorUsedError;
  @override
  String get dob => throw _privateConstructorUsedError;
  @override
  List<String> get bookShelf => throw _privateConstructorUsedError;
  @override //TODO: Fix
  @JsonKey(name: 'guilds')
  List<String> get guildList => throw _privateConstructorUsedError;
  @override //TODO: Fix
  List<UserSimplifiedDto> get following => throw _privateConstructorUsedError;
  @override
  List<UserSimplifiedDto> get followers => throw _privateConstructorUsedError;
  @override
  int get currentPoint => throw _privateConstructorUsedError;
  @override
  int get highestPoint => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'creationDate')
  int get createDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_UserDtoCopyWith<_$_UserDto> get copyWith =>
      throw _privateConstructorUsedError;
}
