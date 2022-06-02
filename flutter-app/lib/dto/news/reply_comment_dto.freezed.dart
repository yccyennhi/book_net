// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'reply_comment_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReplyCommentDto _$ReplyCommentDtoFromJson(Map<String, dynamic> json) {
  return _ReplyCommentDto.fromJson(json);
}

/// @nodoc
mixin _$ReplyCommentDto {
  String get id => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  UserDto get commentUser => throw _privateConstructorUsedError;
  int get createDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReplyCommentDtoCopyWith<ReplyCommentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReplyCommentDtoCopyWith<$Res> {
  factory $ReplyCommentDtoCopyWith(
          ReplyCommentDto value, $Res Function(ReplyCommentDto) then) =
      _$ReplyCommentDtoCopyWithImpl<$Res>;
  $Res call({String id, String content, UserDto commentUser, int createDate});

  $UserDtoCopyWith<$Res> get commentUser;
}

/// @nodoc
class _$ReplyCommentDtoCopyWithImpl<$Res>
    implements $ReplyCommentDtoCopyWith<$Res> {
  _$ReplyCommentDtoCopyWithImpl(this._value, this._then);

  final ReplyCommentDto _value;
  // ignore: unused_field
  final $Res Function(ReplyCommentDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? content = freezed,
    Object? commentUser = freezed,
    Object? createDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      commentUser: commentUser == freezed
          ? _value.commentUser
          : commentUser // ignore: cast_nullable_to_non_nullable
              as UserDto,
      createDate: createDate == freezed
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $UserDtoCopyWith<$Res> get commentUser {
    return $UserDtoCopyWith<$Res>(_value.commentUser, (value) {
      return _then(_value.copyWith(commentUser: value));
    });
  }
}

/// @nodoc
abstract class _$$_ReplyCommentDtoCopyWith<$Res>
    implements $ReplyCommentDtoCopyWith<$Res> {
  factory _$$_ReplyCommentDtoCopyWith(
          _$_ReplyCommentDto value, $Res Function(_$_ReplyCommentDto) then) =
      __$$_ReplyCommentDtoCopyWithImpl<$Res>;
  @override
  $Res call({String id, String content, UserDto commentUser, int createDate});

  @override
  $UserDtoCopyWith<$Res> get commentUser;
}

/// @nodoc
class __$$_ReplyCommentDtoCopyWithImpl<$Res>
    extends _$ReplyCommentDtoCopyWithImpl<$Res>
    implements _$$_ReplyCommentDtoCopyWith<$Res> {
  __$$_ReplyCommentDtoCopyWithImpl(
      _$_ReplyCommentDto _value, $Res Function(_$_ReplyCommentDto) _then)
      : super(_value, (v) => _then(v as _$_ReplyCommentDto));

  @override
  _$_ReplyCommentDto get _value => super._value as _$_ReplyCommentDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? content = freezed,
    Object? commentUser = freezed,
    Object? createDate = freezed,
  }) {
    return _then(_$_ReplyCommentDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      commentUser: commentUser == freezed
          ? _value.commentUser
          : commentUser // ignore: cast_nullable_to_non_nullable
              as UserDto,
      createDate: createDate == freezed
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReplyCommentDto implements _ReplyCommentDto {
  _$_ReplyCommentDto(
      {required this.id,
      required this.content,
      required this.commentUser,
      required this.createDate});

  factory _$_ReplyCommentDto.fromJson(Map<String, dynamic> json) =>
      _$$_ReplyCommentDtoFromJson(json);

  @override
  final String id;
  @override
  final String content;
  @override
  final UserDto commentUser;
  @override
  final int createDate;

  @override
  String toString() {
    return 'ReplyCommentDto(id: $id, content: $content, commentUser: $commentUser, createDate: $createDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReplyCommentDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality()
                .equals(other.commentUser, commentUser) &&
            const DeepCollectionEquality()
                .equals(other.createDate, createDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(commentUser),
      const DeepCollectionEquality().hash(createDate));

  @JsonKey(ignore: true)
  @override
  _$$_ReplyCommentDtoCopyWith<_$_ReplyCommentDto> get copyWith =>
      __$$_ReplyCommentDtoCopyWithImpl<_$_ReplyCommentDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReplyCommentDtoToJson(this);
  }
}

abstract class _ReplyCommentDto implements ReplyCommentDto {
  factory _ReplyCommentDto(
      {required final String id,
      required final String content,
      required final UserDto commentUser,
      required final int createDate}) = _$_ReplyCommentDto;

  factory _ReplyCommentDto.fromJson(Map<String, dynamic> json) =
      _$_ReplyCommentDto.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get content => throw _privateConstructorUsedError;
  @override
  UserDto get commentUser => throw _privateConstructorUsedError;
  @override
  int get createDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ReplyCommentDtoCopyWith<_$_ReplyCommentDto> get copyWith =>
      throw _privateConstructorUsedError;
}
