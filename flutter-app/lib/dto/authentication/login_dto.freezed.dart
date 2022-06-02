// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginDto _$LoginDtoFromJson(Map<String, dynamic> json) {
  return _LoginDto.fromJson(json);
}

/// @nodoc
mixin _$LoginDto {
  String get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get accessToken => throw _privateConstructorUsedError;
  String get tokenType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginDtoCopyWith<LoginDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginDtoCopyWith<$Res> {
  factory $LoginDtoCopyWith(LoginDto value, $Res Function(LoginDto) then) =
      _$LoginDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String username,
      String email,
      String accessToken,
      String tokenType});
}

/// @nodoc
class _$LoginDtoCopyWithImpl<$Res> implements $LoginDtoCopyWith<$Res> {
  _$LoginDtoCopyWithImpl(this._value, this._then);

  final LoginDto _value;
  // ignore: unused_field
  final $Res Function(LoginDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? accessToken = freezed,
    Object? tokenType = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: tokenType == freezed
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_LoginDtoCopyWith<$Res> implements $LoginDtoCopyWith<$Res> {
  factory _$$_LoginDtoCopyWith(
          _$_LoginDto value, $Res Function(_$_LoginDto) then) =
      __$$_LoginDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String username,
      String email,
      String accessToken,
      String tokenType});
}

/// @nodoc
class __$$_LoginDtoCopyWithImpl<$Res> extends _$LoginDtoCopyWithImpl<$Res>
    implements _$$_LoginDtoCopyWith<$Res> {
  __$$_LoginDtoCopyWithImpl(
      _$_LoginDto _value, $Res Function(_$_LoginDto) _then)
      : super(_value, (v) => _then(v as _$_LoginDto));

  @override
  _$_LoginDto get _value => super._value as _$_LoginDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? accessToken = freezed,
    Object? tokenType = freezed,
  }) {
    return _then(_$_LoginDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: tokenType == freezed
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginDto implements _LoginDto {
  const _$_LoginDto(
      {required this.id,
      required this.username,
      required this.email,
      required this.accessToken,
      required this.tokenType});

  factory _$_LoginDto.fromJson(Map<String, dynamic> json) =>
      _$$_LoginDtoFromJson(json);

  @override
  final String id;
  @override
  final String username;
  @override
  final String email;
  @override
  final String accessToken;
  @override
  final String tokenType;

  @override
  String toString() {
    return 'LoginDto(id: $id, username: $username, email: $email, accessToken: $accessToken, tokenType: $tokenType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality()
                .equals(other.accessToken, accessToken) &&
            const DeepCollectionEquality().equals(other.tokenType, tokenType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(accessToken),
      const DeepCollectionEquality().hash(tokenType));

  @JsonKey(ignore: true)
  @override
  _$$_LoginDtoCopyWith<_$_LoginDto> get copyWith =>
      __$$_LoginDtoCopyWithImpl<_$_LoginDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginDtoToJson(this);
  }
}

abstract class _LoginDto implements LoginDto {
  const factory _LoginDto(
      {required final String id,
      required final String username,
      required final String email,
      required final String accessToken,
      required final String tokenType}) = _$_LoginDto;

  factory _LoginDto.fromJson(Map<String, dynamic> json) = _$_LoginDto.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get username => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get accessToken => throw _privateConstructorUsedError;
  @override
  String get tokenType => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LoginDtoCopyWith<_$_LoginDto> get copyWith =>
      throw _privateConstructorUsedError;
}
