// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_simplified_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserSimplifiedDto _$UserSimplifiedDtoFromJson(Map<String, dynamic> json) {
  return _UserSimplifiedDto.fromJson(json);
}

/// @nodoc
mixin _$UserSimplifiedDto {
  String get id => throw _privateConstructorUsedError;
  String get alias => throw _privateConstructorUsedError;
  @JsonKey(name: 'urlImage')
  String? get imageUrl => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserSimplifiedDtoCopyWith<UserSimplifiedDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSimplifiedDtoCopyWith<$Res> {
  factory $UserSimplifiedDtoCopyWith(
          UserSimplifiedDto value, $Res Function(UserSimplifiedDto) then) =
      _$UserSimplifiedDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String alias,
      @JsonKey(name: 'urlImage') String? imageUrl,
      String name});
}

/// @nodoc
class _$UserSimplifiedDtoCopyWithImpl<$Res>
    implements $UserSimplifiedDtoCopyWith<$Res> {
  _$UserSimplifiedDtoCopyWithImpl(this._value, this._then);

  final UserSimplifiedDto _value;
  // ignore: unused_field
  final $Res Function(UserSimplifiedDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? alias = freezed,
    Object? imageUrl = freezed,
    Object? name = freezed,
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
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_UserSimplifiedDtoCopyWith<$Res>
    implements $UserSimplifiedDtoCopyWith<$Res> {
  factory _$$_UserSimplifiedDtoCopyWith(_$_UserSimplifiedDto value,
          $Res Function(_$_UserSimplifiedDto) then) =
      __$$_UserSimplifiedDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String alias,
      @JsonKey(name: 'urlImage') String? imageUrl,
      String name});
}

/// @nodoc
class __$$_UserSimplifiedDtoCopyWithImpl<$Res>
    extends _$UserSimplifiedDtoCopyWithImpl<$Res>
    implements _$$_UserSimplifiedDtoCopyWith<$Res> {
  __$$_UserSimplifiedDtoCopyWithImpl(
      _$_UserSimplifiedDto _value, $Res Function(_$_UserSimplifiedDto) _then)
      : super(_value, (v) => _then(v as _$_UserSimplifiedDto));

  @override
  _$_UserSimplifiedDto get _value => super._value as _$_UserSimplifiedDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? alias = freezed,
    Object? imageUrl = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_UserSimplifiedDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      alias: alias == freezed
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserSimplifiedDto implements _UserSimplifiedDto {
  _$_UserSimplifiedDto(
      {required this.id,
      required this.alias,
      @JsonKey(name: 'urlImage') required this.imageUrl,
      required this.name});

  factory _$_UserSimplifiedDto.fromJson(Map<String, dynamic> json) =>
      _$$_UserSimplifiedDtoFromJson(json);

  @override
  final String id;
  @override
  final String alias;
  @override
  @JsonKey(name: 'urlImage')
  final String? imageUrl;
  @override
  final String name;

  @override
  String toString() {
    return 'UserSimplifiedDto(id: $id, alias: $alias, imageUrl: $imageUrl, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserSimplifiedDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.alias, alias) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(alias),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_UserSimplifiedDtoCopyWith<_$_UserSimplifiedDto> get copyWith =>
      __$$_UserSimplifiedDtoCopyWithImpl<_$_UserSimplifiedDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserSimplifiedDtoToJson(this);
  }
}

abstract class _UserSimplifiedDto implements UserSimplifiedDto {
  factory _UserSimplifiedDto(
      {required final String id,
      required final String alias,
      @JsonKey(name: 'urlImage') required final String? imageUrl,
      required final String name}) = _$_UserSimplifiedDto;

  factory _UserSimplifiedDto.fromJson(Map<String, dynamic> json) =
      _$_UserSimplifiedDto.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get alias => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'urlImage')
  String? get imageUrl => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_UserSimplifiedDtoCopyWith<_$_UserSimplifiedDto> get copyWith =>
      throw _privateConstructorUsedError;
}
