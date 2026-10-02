// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_public.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RatingPublic extends RatingPublic {
  @override
  final int? id;
  @override
  final int? score;
  @override
  final String? comment;
  @override
  final int? likesCount;
  @override
  final RatingRestaurantSummary? restaurant;
  @override
  final RatingAuthorPublic? author;
  @override
  final BuiltList<RatingImagePublic>? images;

  factory _$RatingPublic([void Function(RatingPublicBuilder)? updates]) =>
      (RatingPublicBuilder()..update(updates))._build();

  _$RatingPublic._({
    this.id,
    this.score,
    this.comment,
    this.likesCount,
    this.restaurant,
    this.author,
    this.images,
  }) : super._();
  @override
  RatingPublic rebuild(void Function(RatingPublicBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RatingPublicBuilder toBuilder() => RatingPublicBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RatingPublic &&
        id == other.id &&
        score == other.score &&
        comment == other.comment &&
        likesCount == other.likesCount &&
        restaurant == other.restaurant &&
        author == other.author &&
        images == other.images;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, score.hashCode);
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jc(_$hash, likesCount.hashCode);
    _$hash = $jc(_$hash, restaurant.hashCode);
    _$hash = $jc(_$hash, author.hashCode);
    _$hash = $jc(_$hash, images.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RatingPublic')
          ..add('id', id)
          ..add('score', score)
          ..add('comment', comment)
          ..add('likesCount', likesCount)
          ..add('restaurant', restaurant)
          ..add('author', author)
          ..add('images', images))
        .toString();
  }
}

class RatingPublicBuilder
    implements Builder<RatingPublic, RatingPublicBuilder> {
  _$RatingPublic? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _score;
  int? get score => _$this._score;
  set score(int? score) => _$this._score = score;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  int? _likesCount;
  int? get likesCount => _$this._likesCount;
  set likesCount(int? likesCount) => _$this._likesCount = likesCount;

  RatingRestaurantSummaryBuilder? _restaurant;
  RatingRestaurantSummaryBuilder get restaurant =>
      _$this._restaurant ??= RatingRestaurantSummaryBuilder();
  set restaurant(RatingRestaurantSummaryBuilder? restaurant) =>
      _$this._restaurant = restaurant;

  RatingAuthorPublicBuilder? _author;
  RatingAuthorPublicBuilder get author =>
      _$this._author ??= RatingAuthorPublicBuilder();
  set author(RatingAuthorPublicBuilder? author) => _$this._author = author;

  ListBuilder<RatingImagePublic>? _images;
  ListBuilder<RatingImagePublic> get images =>
      _$this._images ??= ListBuilder<RatingImagePublic>();
  set images(ListBuilder<RatingImagePublic>? images) => _$this._images = images;

  RatingPublicBuilder() {
    RatingPublic._defaults(this);
  }

  RatingPublicBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _score = $v.score;
      _comment = $v.comment;
      _likesCount = $v.likesCount;
      _restaurant = $v.restaurant?.toBuilder();
      _author = $v.author?.toBuilder();
      _images = $v.images?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RatingPublic other) {
    _$v = other as _$RatingPublic;
  }

  @override
  void update(void Function(RatingPublicBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RatingPublic build() => _build();

  _$RatingPublic _build() {
    _$RatingPublic _$result;
    try {
      _$result =
          _$v ??
          _$RatingPublic._(
            id: id,
            score: score,
            comment: comment,
            likesCount: likesCount,
            restaurant: _restaurant?.build(),
            author: _author?.build(),
            images: _images?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'restaurant';
        _restaurant?.build();
        _$failedField = 'author';
        _author?.build();
        _$failedField = 'images';
        _images?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'RatingPublic',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
