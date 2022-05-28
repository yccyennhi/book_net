// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'book.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Book _$BookFromJson(Map<String, dynamic> json) {
  return _Book.fromJson(json);
}

/// @nodoc
mixin _$Book {
  String get id => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get descrition => throw _privateConstructorUsedError;
  int get numberOfPages => throw _privateConstructorUsedError;
  double get rate => throw _privateConstructorUsedError;
  int get numberOfRating => throw _privateConstructorUsedError;
  List<Review> get reviewList => throw _privateConstructorUsedError;
  int get numberOfDownloads => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookCopyWith<Book> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookCopyWith<$Res> {
  factory $BookCopyWith(Book value, $Res Function(Book) then) =
      _$BookCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String imageUrl,
      String author,
      String name,
      String descrition,
      int numberOfPages,
      double rate,
      int numberOfRating,
      List<Review> reviewList,
      int numberOfDownloads});
}

/// @nodoc
class _$BookCopyWithImpl<$Res> implements $BookCopyWith<$Res> {
  _$BookCopyWithImpl(this._value, this._then);

  final Book _value;
  // ignore: unused_field
  final $Res Function(Book) _then;

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
              as List<Review>,
      numberOfDownloads: numberOfDownloads == freezed
          ? _value.numberOfDownloads
          : numberOfDownloads // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_BookCopyWith<$Res> implements $BookCopyWith<$Res> {
  factory _$$_BookCopyWith(_$_Book value, $Res Function(_$_Book) then) =
      __$$_BookCopyWithImpl<$Res>;
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
      List<Review> reviewList,
      int numberOfDownloads});
}

/// @nodoc
class __$$_BookCopyWithImpl<$Res> extends _$BookCopyWithImpl<$Res>
    implements _$$_BookCopyWith<$Res> {
  __$$_BookCopyWithImpl(_$_Book _value, $Res Function(_$_Book) _then)
      : super(_value, (v) => _then(v as _$_Book));

  @override
  _$_Book get _value => super._value as _$_Book;

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
    return _then(_$_Book(
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
              as List<Review>,
      numberOfDownloads: numberOfDownloads == freezed
          ? _value.numberOfDownloads
          : numberOfDownloads // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Book implements _Book {
  const _$_Book(
      {required this.id,
      required this.imageUrl,
      required this.author,
      required this.name,
      required this.descrition,
      required this.numberOfPages,
      required this.rate,
      required this.numberOfRating,
      required final List<Review> reviewList,
      required this.numberOfDownloads})
      : _reviewList = reviewList;

  factory _$_Book.fromJson(Map<String, dynamic> json) => _$$_BookFromJson(json);

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
  final List<Review> _reviewList;
  @override
  List<Review> get reviewList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviewList);
  }

  @override
  final int numberOfDownloads;

  @override
  String toString() {
    return 'Book(id: $id, imageUrl: $imageUrl, author: $author, name: $name, descrition: $descrition, numberOfPages: $numberOfPages, rate: $rate, numberOfRating: $numberOfRating, reviewList: $reviewList, numberOfDownloads: $numberOfDownloads)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Book &&
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
  _$$_BookCopyWith<_$_Book> get copyWith =>
      __$$_BookCopyWithImpl<_$_Book>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookToJson(this);
  }
}

abstract class _Book implements Book {
  const factory _Book(
      {required final String id,
      required final String imageUrl,
      required final String author,
      required final String name,
      required final String descrition,
      required final int numberOfPages,
      required final double rate,
      required final int numberOfRating,
      required final List<Review> reviewList,
      required final int numberOfDownloads}) = _$_Book;

  factory _Book.fromJson(Map<String, dynamic> json) = _$_Book.fromJson;

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
  List<Review> get reviewList => throw _privateConstructorUsedError;
  @override
  int get numberOfDownloads => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_BookCopyWith<_$_Book> get copyWith => throw _privateConstructorUsedError;
}
