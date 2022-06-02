// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'comment_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommentDto _$CommentDtoFromJson(Map<String, dynamic> json) {
  return _CommentDto.fromJson(json);
}

/// @nodoc
mixin _$CommentDto {
  String get id => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  UserDto get commentUser => throw _privateConstructorUsedError;
  List<ReplyCommentDto> get replyList => throw _privateConstructorUsedError;
  int get createDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentDtoCopyWith<CommentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentDtoCopyWith<$Res> {
  factory $CommentDtoCopyWith(
          CommentDto value, $Res Function(CommentDto) then) =
      _$CommentDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String content,
      UserDto commentUser,
      List<ReplyCommentDto> replyList,
      int createDate});

  $UserDtoCopyWith<$Res> get commentUser;
}

/// @nodoc
class _$CommentDtoCopyWithImpl<$Res> implements $CommentDtoCopyWith<$Res> {
  _$CommentDtoCopyWithImpl(this._value, this._then);

  final CommentDto _value;
  // ignore: unused_field
  final $Res Function(CommentDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? content = freezed,
    Object? commentUser = freezed,
    Object? replyList = freezed,
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
      replyList: replyList == freezed
          ? _value.replyList
          : replyList // ignore: cast_nullable_to_non_nullable
              as List<ReplyCommentDto>,
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
abstract class _$$_CommentDtoCopyWith<$Res>
    implements $CommentDtoCopyWith<$Res> {
  factory _$$_CommentDtoCopyWith(
          _$_CommentDto value, $Res Function(_$_CommentDto) then) =
      __$$_CommentDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String content,
      UserDto commentUser,
      List<ReplyCommentDto> replyList,
      int createDate});

  @override
  $UserDtoCopyWith<$Res> get commentUser;
}

/// @nodoc
class __$$_CommentDtoCopyWithImpl<$Res> extends _$CommentDtoCopyWithImpl<$Res>
    implements _$$_CommentDtoCopyWith<$Res> {
  __$$_CommentDtoCopyWithImpl(
      _$_CommentDto _value, $Res Function(_$_CommentDto) _then)
      : super(_value, (v) => _then(v as _$_CommentDto));

  @override
  _$_CommentDto get _value => super._value as _$_CommentDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? content = freezed,
    Object? commentUser = freezed,
    Object? replyList = freezed,
    Object? createDate = freezed,
  }) {
    return _then(_$_CommentDto(
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
      replyList: replyList == freezed
          ? _value._replyList
          : replyList // ignore: cast_nullable_to_non_nullable
              as List<ReplyCommentDto>,
      createDate: createDate == freezed
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommentDto implements _CommentDto {
  _$_CommentDto(
      {required this.id,
      required this.content,
      required this.commentUser,
      required final List<ReplyCommentDto> replyList,
      required this.createDate})
      : _replyList = replyList;

  factory _$_CommentDto.fromJson(Map<String, dynamic> json) =>
      _$$_CommentDtoFromJson(json);

  @override
  final String id;
  @override
  final String content;
  @override
  final UserDto commentUser;
  final List<ReplyCommentDto> _replyList;
  @override
  List<ReplyCommentDto> get replyList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_replyList);
  }

  @override
  final int createDate;

  @override
  String toString() {
    return 'CommentDto(id: $id, content: $content, commentUser: $commentUser, replyList: $replyList, createDate: $createDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommentDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality()
                .equals(other.commentUser, commentUser) &&
            const DeepCollectionEquality()
                .equals(other._replyList, _replyList) &&
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
      const DeepCollectionEquality().hash(_replyList),
      const DeepCollectionEquality().hash(createDate));

  @JsonKey(ignore: true)
  @override
  _$$_CommentDtoCopyWith<_$_CommentDto> get copyWith =>
      __$$_CommentDtoCopyWithImpl<_$_CommentDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommentDtoToJson(this);
  }
}

abstract class _CommentDto implements CommentDto {
  factory _CommentDto(
      {required final String id,
      required final String content,
      required final UserDto commentUser,
      required final List<ReplyCommentDto> replyList,
      required final int createDate}) = _$_CommentDto;

  factory _CommentDto.fromJson(Map<String, dynamic> json) =
      _$_CommentDto.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get content => throw _privateConstructorUsedError;
  @override
  UserDto get commentUser => throw _privateConstructorUsedError;
  @override
  List<ReplyCommentDto> get replyList => throw _privateConstructorUsedError;
  @override
  int get createDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CommentDtoCopyWith<_$_CommentDto> get copyWith =>
      throw _privateConstructorUsedError;
}
