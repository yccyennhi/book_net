// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'review_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReviewDto _$ReviewDtoFromJson(Map<String, dynamic> json) {
  return _ReviewDto.fromJson(json);
}

/// @nodoc
mixin _$ReviewDto {
  String get id => throw _privateConstructorUsedError;
  UserDto get user => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  int get rate => throw _privateConstructorUsedError;
  int get createDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewDtoCopyWith<ReviewDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewDtoCopyWith<$Res> {
  factory $ReviewDtoCopyWith(ReviewDto value, $Res Function(ReviewDto) then) =
      _$ReviewDtoCopyWithImpl<$Res>;
  $Res call(
      {String id, UserDto user, String content, int rate, int createDate});

  $UserDtoCopyWith<$Res> get user;
}

/// @nodoc
class _$ReviewDtoCopyWithImpl<$Res> implements $ReviewDtoCopyWith<$Res> {
  _$ReviewDtoCopyWithImpl(this._value, this._then);

  final ReviewDto _value;
  // ignore: unused_field
  final $Res Function(ReviewDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
    Object? content = freezed,
    Object? rate = freezed,
    Object? createDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as int,
      createDate: createDate == freezed
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $UserDtoCopyWith<$Res> get user {
    return $UserDtoCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$$_ReviewDtoCopyWith<$Res> implements $ReviewDtoCopyWith<$Res> {
  factory _$$_ReviewDtoCopyWith(
          _$_ReviewDto value, $Res Function(_$_ReviewDto) then) =
      __$$_ReviewDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id, UserDto user, String content, int rate, int createDate});

  @override
  $UserDtoCopyWith<$Res> get user;
}

/// @nodoc
class __$$_ReviewDtoCopyWithImpl<$Res> extends _$ReviewDtoCopyWithImpl<$Res>
    implements _$$_ReviewDtoCopyWith<$Res> {
  __$$_ReviewDtoCopyWithImpl(
      _$_ReviewDto _value, $Res Function(_$_ReviewDto) _then)
      : super(_value, (v) => _then(v as _$_ReviewDto));

  @override
  _$_ReviewDto get _value => super._value as _$_ReviewDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
    Object? content = freezed,
    Object? rate = freezed,
    Object? createDate = freezed,
  }) {
    return _then(_$_ReviewDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
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
class _$_ReviewDto implements _ReviewDto {
  _$_ReviewDto(
      {required this.id,
      required this.user,
      required this.content,
      required this.rate,
      required this.createDate});

  factory _$_ReviewDto.fromJson(Map<String, dynamic> json) =>
      _$$_ReviewDtoFromJson(json);

  @override
  final String id;
  @override
  final UserDto user;
  @override
  final String content;
  @override
  final int rate;
  @override
  final int createDate;

  @override
  String toString() {
    return 'ReviewDto(id: $id, user: $user, content: $content, rate: $rate, createDate: $createDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReviewDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.rate, rate) &&
            const DeepCollectionEquality()
                .equals(other.createDate, createDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(rate),
      const DeepCollectionEquality().hash(createDate));

  @JsonKey(ignore: true)
  @override
  _$$_ReviewDtoCopyWith<_$_ReviewDto> get copyWith =>
      __$$_ReviewDtoCopyWithImpl<_$_ReviewDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReviewDtoToJson(this);
  }
}

abstract class _ReviewDto implements ReviewDto {
  factory _ReviewDto(
      {required final String id,
      required final UserDto user,
      required final String content,
      required final int rate,
      required final int createDate}) = _$_ReviewDto;

  factory _ReviewDto.fromJson(Map<String, dynamic> json) =
      _$_ReviewDto.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  UserDto get user => throw _privateConstructorUsedError;
  @override
  String get content => throw _privateConstructorUsedError;
  @override
  int get rate => throw _privateConstructorUsedError;
  @override
  int get createDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ReviewDtoCopyWith<_$_ReviewDto> get copyWith =>
      throw _privateConstructorUsedError;
}
