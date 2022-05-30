// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'reply_comment_pojo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReplyCommentPojo _$ReplyCommentPojoFromJson(Map<String, dynamic> json) {
  return _ReplyCommentPojo.fromJson(json);
}

/// @nodoc
mixin _$ReplyCommentPojo {
  String get id => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  int get createDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReplyCommentPojoCopyWith<ReplyCommentPojo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReplyCommentPojoCopyWith<$Res> {
  factory $ReplyCommentPojoCopyWith(
          ReplyCommentPojo value, $Res Function(ReplyCommentPojo) then) =
      _$ReplyCommentPojoCopyWithImpl<$Res>;
  $Res call({String id, String content, int createDate});
}

/// @nodoc
class _$ReplyCommentPojoCopyWithImpl<$Res>
    implements $ReplyCommentPojoCopyWith<$Res> {
  _$ReplyCommentPojoCopyWithImpl(this._value, this._then);

  final ReplyCommentPojo _value;
  // ignore: unused_field
  final $Res Function(ReplyCommentPojo) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? content = freezed,
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
      createDate: createDate == freezed
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_ReplyCommentPojoCopyWith<$Res>
    implements $ReplyCommentPojoCopyWith<$Res> {
  factory _$$_ReplyCommentPojoCopyWith(
          _$_ReplyCommentPojo value, $Res Function(_$_ReplyCommentPojo) then) =
      __$$_ReplyCommentPojoCopyWithImpl<$Res>;
  @override
  $Res call({String id, String content, int createDate});
}

/// @nodoc
class __$$_ReplyCommentPojoCopyWithImpl<$Res>
    extends _$ReplyCommentPojoCopyWithImpl<$Res>
    implements _$$_ReplyCommentPojoCopyWith<$Res> {
  __$$_ReplyCommentPojoCopyWithImpl(
      _$_ReplyCommentPojo _value, $Res Function(_$_ReplyCommentPojo) _then)
      : super(_value, (v) => _then(v as _$_ReplyCommentPojo));

  @override
  _$_ReplyCommentPojo get _value => super._value as _$_ReplyCommentPojo;

  @override
  $Res call({
    Object? id = freezed,
    Object? content = freezed,
    Object? createDate = freezed,
  }) {
    return _then(_$_ReplyCommentPojo(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createDate: createDate == freezed
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReplyCommentPojo implements _ReplyCommentPojo {
  _$_ReplyCommentPojo(
      {required this.id, required this.content, required this.createDate});

  factory _$_ReplyCommentPojo.fromJson(Map<String, dynamic> json) =>
      _$$_ReplyCommentPojoFromJson(json);

  @override
  final String id;
  @override
  final String content;
  @override
  final int createDate;

  @override
  String toString() {
    return 'ReplyCommentPojo(id: $id, content: $content, createDate: $createDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReplyCommentPojo &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality()
                .equals(other.createDate, createDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(createDate));

  @JsonKey(ignore: true)
  @override
  _$$_ReplyCommentPojoCopyWith<_$_ReplyCommentPojo> get copyWith =>
      __$$_ReplyCommentPojoCopyWithImpl<_$_ReplyCommentPojo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReplyCommentPojoToJson(this);
  }
}

abstract class _ReplyCommentPojo implements ReplyCommentPojo {
  factory _ReplyCommentPojo(
      {required final String id,
      required final String content,
      required final int createDate}) = _$_ReplyCommentPojo;

  factory _ReplyCommentPojo.fromJson(Map<String, dynamic> json) =
      _$_ReplyCommentPojo.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get content => throw _privateConstructorUsedError;
  @override
  int get createDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ReplyCommentPojoCopyWith<_$_ReplyCommentPojo> get copyWith =>
      throw _privateConstructorUsedError;
}
