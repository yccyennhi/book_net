// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'book_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookDto _$BookDtoFromJson(Map<String, dynamic> json) {
  return _BookDto.fromJson(json);
}

/// @nodoc
mixin _$BookDto {
  String get id => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get descrition => throw _privateConstructorUsedError;
  int get numberOfPages => throw _privateConstructorUsedError;
  double get rate => throw _privateConstructorUsedError;
  int get numberOfRating => throw _privateConstructorUsedError;
  List<ReviewDto> get reviewList => throw _privateConstructorUsedError;
  int get numberOfDownloads => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookDtoCopyWith<BookDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookDtoCopyWith<$Res> {
  factory $BookDtoCopyWith(BookDto value, $Res Function(BookDto) then) =
      _$BookDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String imageUrl,
      String author,
      String name,
      String descrition,
      int numberOfPages,
      double rate,
      int numberOfRating,
      List<ReviewDto> reviewList,
      int numberOfDownloads});
}

/// @nodoc
class _$BookDtoCopyWithImpl<$Res> implements $BookDtoCopyWith<$Res> {
  _$BookDtoCopyWithImpl(this._value, this._then);

  final BookDto _value;
  // ignore: unused_field
  final $Res Function(BookDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? imageUrl = freezed,
    Object? author = freezed,
    Object? name = freezed,
    Object? descrition = freezed,
    Object? numberOfPages = freezed,
    Object? rate = freezed,
    Object? numberOfRating = freezed,
    Object? reviewList = freezed,
    Object? numberOfDownloads = freezed,
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
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      descrition: descrition == freezed
          ? _value.descrition
          : descrition // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfPages: numberOfPages == freezed
          ? _value.numberOfPages
          : numberOfPages // ignore: cast_nullable_to_non_nullable
              as int,
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
      numberOfRating: numberOfRating == freezed
          ? _value.numberOfRating
          : numberOfRating // ignore: cast_nullable_to_non_nullable
              as int,
      reviewList: reviewList == freezed
          ? _value.reviewList
          : reviewList // ignore: cast_nullable_to_non_nullable
              as List<ReviewDto>,
      numberOfDownloads: numberOfDownloads == freezed
          ? _value.numberOfDownloads
          : numberOfDownloads // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_BookDtoCopyWith<$Res> implements $BookDtoCopyWith<$Res> {
  factory _$$_BookDtoCopyWith(
          _$_BookDto value, $Res Function(_$_BookDto) then) =
      __$$_BookDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String imageUrl,
      String author,
      String name,
      String descrition,
      int numberOfPages,
      double rate,
      int numberOfRating,
      List<ReviewDto> reviewList,
      int numberOfDownloads});
}

/// @nodoc
class __$$_BookDtoCopyWithImpl<$Res> extends _$BookDtoCopyWithImpl<$Res>
    implements _$$_BookDtoCopyWith<$Res> {
  __$$_BookDtoCopyWithImpl(_$_BookDto _value, $Res Function(_$_BookDto) _then)
      : super(_value, (v) => _then(v as _$_BookDto));

  @override
  _$_BookDto get _value => super._value as _$_BookDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? imageUrl = freezed,
    Object? author = freezed,
    Object? name = freezed,
    Object? descrition = freezed,
    Object? numberOfPages = freezed,
    Object? rate = freezed,
    Object? numberOfRating = freezed,
    Object? reviewList = freezed,
    Object? numberOfDownloads = freezed,
  }) {
    return _then(_$_BookDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      descrition: descrition == freezed
          ? _value.descrition
          : descrition // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfPages: numberOfPages == freezed
          ? _value.numberOfPages
          : numberOfPages // ignore: cast_nullable_to_non_nullable
              as int,
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
      numberOfRating: numberOfRating == freezed
          ? _value.numberOfRating
          : numberOfRating // ignore: cast_nullable_to_non_nullable
              as int,
      reviewList: reviewList == freezed
          ? _value._reviewList
          : reviewList // ignore: cast_nullable_to_non_nullable
              as List<ReviewDto>,
      numberOfDownloads: numberOfDownloads == freezed
          ? _value.numberOfDownloads
          : numberOfDownloads // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BookDto implements _BookDto {
  const _$_BookDto(
      {required this.id,
      required this.imageUrl,
      required this.author,
      required this.name,
      required this.descrition,
      required this.numberOfPages,
      required this.rate,
      required this.numberOfRating,
      required final List<ReviewDto> reviewList,
      required this.numberOfDownloads})
      : _reviewList = reviewList;

  factory _$_BookDto.fromJson(Map<String, dynamic> json) =>
      _$$_BookDtoFromJson(json);

  @override
  final String id;
  @override
  final String imageUrl;
  @override
  final String author;
  @override
  final String name;
  @override
  final String descrition;
  @override
  final int numberOfPages;
  @override
  final double rate;
  @override
  final int numberOfRating;
  final List<ReviewDto> _reviewList;
  @override
  List<ReviewDto> get reviewList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviewList);
  }

  @override
  final int numberOfDownloads;

  @override
  String toString() {
    return 'BookDto(id: $id, imageUrl: $imageUrl, author: $author, name: $name, descrition: $descrition, numberOfPages: $numberOfPages, rate: $rate, numberOfRating: $numberOfRating, reviewList: $reviewList, numberOfDownloads: $numberOfDownloads)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other.author, author) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.descrition, descrition) &&
            const DeepCollectionEquality()
                .equals(other.numberOfPages, numberOfPages) &&
            const DeepCollectionEquality().equals(other.rate, rate) &&
            const DeepCollectionEquality()
                .equals(other.numberOfRating, numberOfRating) &&
            const DeepCollectionEquality()
                .equals(other._reviewList, _reviewList) &&
            const DeepCollectionEquality()
                .equals(other.numberOfDownloads, numberOfDownloads));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(author),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(descrition),
      const DeepCollectionEquality().hash(numberOfPages),
      const DeepCollectionEquality().hash(rate),
      const DeepCollectionEquality().hash(numberOfRating),
      const DeepCollectionEquality().hash(_reviewList),
      const DeepCollectionEquality().hash(numberOfDownloads));

  @JsonKey(ignore: true)
  @override
  _$$_BookDtoCopyWith<_$_BookDto> get copyWith =>
      __$$_BookDtoCopyWithImpl<_$_BookDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookDtoToJson(this);
  }
}

abstract class _BookDto implements BookDto {
  const factory _BookDto(
      {required final String id,
      required final String imageUrl,
      required final String author,
      required final String name,
      required final String descrition,
      required final int numberOfPages,
      required final double rate,
      required final int numberOfRating,
      required final List<ReviewDto> reviewList,
      required final int numberOfDownloads}) = _$_BookDto;

  factory _BookDto.fromJson(Map<String, dynamic> json) = _$_BookDto.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get imageUrl => throw _privateConstructorUsedError;
  @override
  String get author => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get descrition => throw _privateConstructorUsedError;
  @override
  int get numberOfPages => throw _privateConstructorUsedError;
  @override
  double get rate => throw _privateConstructorUsedError;
  @override
  int get numberOfRating => throw _privateConstructorUsedError;
  @override
  List<ReviewDto> get reviewList => throw _privateConstructorUsedError;
  @override
  int get numberOfDownloads => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_BookDtoCopyWith<_$_BookDto> get copyWith =>
      throw _privateConstructorUsedError;
}
