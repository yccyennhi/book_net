// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'comment_pojo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommentPojo _$CommentPojoFromJson(Map<String, dynamic> json) {
  return _CommentPojo.fromJson(json);
}

/// @nodoc
mixin _$CommentPojo {
  String get id => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  UserPojo get commentUser => throw _privateConstructorUsedError;
  List<ReplyCommentPojo> get replyList => throw _privateConstructorUsedError;
  int get createDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentPojoCopyWith<CommentPojo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentPojoCopyWith<$Res> {
  factory $CommentPojoCopyWith(
          CommentPojo value, $Res Function(CommentPojo) then) =
      _$CommentPojoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String content,
      UserPojo commentUser,
      List<ReplyCommentPojo> replyList,
      int createDate});

  $UserPojoCopyWith<$Res> get commentUser;
}

/// @nodoc
class _$CommentPojoCopyWithImpl<$Res> implements $CommentPojoCopyWith<$Res> {
  _$CommentPojoCopyWithImpl(this._value, this._then);

  final CommentPojo _value;
  // ignore: unused_field
  final $Res Function(CommentPojo) _then;

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
              as UserPojo,
      replyList: replyList == freezed
          ? _value.replyList
          : replyList // ignore: cast_nullable_to_non_nullable
              as List<ReplyCommentPojo>,
      createDate: createDate == freezed
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $UserPojoCopyWith<$Res> get commentUser {
    return $UserPojoCopyWith<$Res>(_value.commentUser, (value) {
      return _then(_value.copyWith(commentUser: value));
    });
  }
}

/// @nodoc
abstract class _$$_CommentPojoCopyWith<$Res>
    implements $CommentPojoCopyWith<$Res> {
  factory _$$_CommentPojoCopyWith(
          _$_CommentPojo value, $Res Function(_$_CommentPojo) then) =
      __$$_CommentPojoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String content,
      UserPojo commentUser,
      List<ReplyCommentPojo> replyList,
      int createDate});

  @override
  $UserPojoCopyWith<$Res> get commentUser;
}

/// @nodoc
class __$$_CommentPojoCopyWithImpl<$Res> extends _$CommentPojoCopyWithImpl<$Res>
    implements _$$_CommentPojoCopyWith<$Res> {
  __$$_CommentPojoCopyWithImpl(
      _$_CommentPojo _value, $Res Function(_$_CommentPojo) _then)
      : super(_value, (v) => _then(v as _$_CommentPojo));

  @override
  _$_CommentPojo get _value => super._value as _$_CommentPojo;

  @override
  $Res call({
    Object? id = freezed,
    Object? content = freezed,
    Object? commentUser = freezed,
    Object? replyList = freezed,
    Object? createDate = freezed,
  }) {
    return _then(_$_CommentPojo(
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
              as UserPojo,
      replyList: replyList == freezed
          ? _value._replyList
          : replyList // ignore: cast_nullable_to_non_nullable
              as List<ReplyCommentPojo>,
      createDate: createDate == freezed
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommentPojo implements _CommentPojo {
  _$_CommentPojo(
      {required this.id,
      required this.content,
      required this.commentUser,
      required final List<ReplyCommentPojo> replyList,
      required this.createDate})
      : _replyList = replyList;

  factory _$_CommentPojo.fromJson(Map<String, dynamic> json) =>
      _$$_CommentPojoFromJson(json);

  @override
  final String id;
  @override
  final String content;
  @override
  final UserPojo commentUser;
  final List<ReplyCommentPojo> _replyList;
  @override
  List<ReplyCommentPojo> get replyList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_replyList);
  }

  @override
  final int createDate;

  @override
  String toString() {
    return 'CommentPojo(id: $id, content: $content, commentUser: $commentUser, replyList: $replyList, createDate: $createDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommentPojo &&
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
  _$$_CommentPojoCopyWith<_$_CommentPojo> get copyWith =>
      __$$_CommentPojoCopyWithImpl<_$_CommentPojo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommentPojoToJson(this);
  }
}

abstract class _CommentPojo implements CommentPojo {
  factory _CommentPojo(
      {required final String id,
      required final String content,
      required final UserPojo commentUser,
      required final List<ReplyCommentPojo> replyList,
      required final int createDate}) = _$_CommentPojo;

  factory _CommentPojo.fromJson(Map<String, dynamic> json) =
      _$_CommentPojo.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get content => throw _privateConstructorUsedError;
  @override
  UserPojo get commentUser => throw _privateConstructorUsedError;
  @override
  List<ReplyCommentPojo> get replyList => throw _privateConstructorUsedError;
  @override
  int get createDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CommentPojoCopyWith<_$_CommentPojo> get copyWith =>
      throw _privateConstructorUsedError;
}
