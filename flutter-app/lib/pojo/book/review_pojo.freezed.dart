// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'review_pojo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReviewPojo _$ReviewPojoFromJson(Map<String, dynamic> json) {
  return _ReviewPojo.fromJson(json);
}

/// @nodoc
mixin _$ReviewPojo {
  String get id => throw _privateConstructorUsedError;
  UserPojo get user => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  int get rate => throw _privateConstructorUsedError;
  int get createDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewPojoCopyWith<ReviewPojo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewPojoCopyWith<$Res> {
  factory $ReviewPojoCopyWith(
          ReviewPojo value, $Res Function(ReviewPojo) then) =
      _$ReviewPojoCopyWithImpl<$Res>;
  $Res call(
      {String id, UserPojo user, String content, int rate, int createDate});

  $UserPojoCopyWith<$Res> get user;
}

/// @nodoc
class _$ReviewPojoCopyWithImpl<$Res> implements $ReviewPojoCopyWith<$Res> {
  _$ReviewPojoCopyWithImpl(this._value, this._then);

  final ReviewPojo _value;
  // ignore: unused_field
  final $Res Function(ReviewPojo) _then;

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
              as UserPojo,
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
  $UserPojoCopyWith<$Res> get user {
    return $UserPojoCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$$_ReviewPojoCopyWith<$Res>
    implements $ReviewPojoCopyWith<$Res> {
  factory _$$_ReviewPojoCopyWith(
          _$_ReviewPojo value, $Res Function(_$_ReviewPojo) then) =
      __$$_ReviewPojoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id, UserPojo user, String content, int rate, int createDate});

  @override
  $UserPojoCopyWith<$Res> get user;
}

/// @nodoc
class __$$_ReviewPojoCopyWithImpl<$Res> extends _$ReviewPojoCopyWithImpl<$Res>
    implements _$$_ReviewPojoCopyWith<$Res> {
  __$$_ReviewPojoCopyWithImpl(
      _$_ReviewPojo _value, $Res Function(_$_ReviewPojo) _then)
      : super(_value, (v) => _then(v as _$_ReviewPojo));

  @override
  _$_ReviewPojo get _value => super._value as _$_ReviewPojo;

  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
    Object? content = freezed,
    Object? rate = freezed,
    Object? createDate = freezed,
  }) {
    return _then(_$_ReviewPojo(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserPojo,
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
class _$_ReviewPojo implements _ReviewPojo {
  _$_ReviewPojo(
      {required this.id,
      required this.user,
      required this.content,
      required this.rate,
      required this.createDate});

  factory _$_ReviewPojo.fromJson(Map<String, dynamic> json) =>
      _$$_ReviewPojoFromJson(json);

  @override
  final String id;
  @override
  final UserPojo user;
  @override
  final String content;
  @override
  final int rate;
  @override
  final int createDate;

  @override
  String toString() {
    return 'ReviewPojo(id: $id, user: $user, content: $content, rate: $rate, createDate: $createDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReviewPojo &&
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
  _$$_ReviewPojoCopyWith<_$_ReviewPojo> get copyWith =>
      __$$_ReviewPojoCopyWithImpl<_$_ReviewPojo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReviewPojoToJson(this);
  }
}

abstract class _ReviewPojo implements ReviewPojo {
  factory _ReviewPojo(
      {required final String id,
      required final UserPojo user,
      required final String content,
      required final int rate,
      required final int createDate}) = _$_ReviewPojo;

  factory _ReviewPojo.fromJson(Map<String, dynamic> json) =
      _$_ReviewPojo.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  UserPojo get user => throw _privateConstructorUsedError;
  @override
  String get content => throw _privateConstructorUsedError;
  @override
  int get rate => throw _privateConstructorUsedError;
  @override
  int get createDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ReviewPojoCopyWith<_$_ReviewPojo> get copyWith =>
      throw _privateConstructorUsedError;
}
