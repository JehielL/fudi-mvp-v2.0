// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Rating extends Rating {
  @override
  final int? id;
  @override
  final int? score;
  @override
  final String? comment;
  @override
  final int? likesCount;
  @override
  final Restaurant? restaurant;
  @override
  final User? user;
  @override
  final BuiltList<RatingImage>? images;

  factory _$Rating([void Function(RatingBuilder)? updates]) =>
      (RatingBuilder()..update(updates))._build();

  _$Rating._({
    this.id,
    this.score,
    this.comment,
    this.likesCount,
    this.restaurant,
    this.user,
    this.images,
  }) : super._();
  @override
  Rating rebuild(void Function(RatingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RatingBuilder toBuilder() => RatingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Rating &&
        id == other.id &&
        score == other.score &&
        comment == other.comment &&
        likesCount == other.likesCount &&
        restaurant == other.restaurant &&
        user == other.user &&
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
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, images.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Rating')
          ..add('id', id)
          ..add('score', score)
          ..add('comment', comment)
          ..add('likesCount', likesCount)
          ..add('restaurant', restaurant)
          ..add('user', user)
          ..add('images', images))
        .toString();
  }
}

class RatingBuilder implements Builder<Rating, RatingBuilder> {
  _$Rating? _$v;

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

  RestaurantBuilder? _restaurant;
  RestaurantBuilder get restaurant =>
      _$this._restaurant ??= RestaurantBuilder();
  set restaurant(RestaurantBuilder? restaurant) =>
      _$this._restaurant = restaurant;

  UserBuilder? _user;
  UserBuilder get user => _$this._user ??= UserBuilder();
  set user(UserBuilder? user) => _$this._user = user;

  ListBuilder<RatingImage>? _images;
  ListBuilder<RatingImage> get images =>
      _$this._images ??= ListBuilder<RatingImage>();
  set images(ListBuilder<RatingImage>? images) => _$this._images = images;

  RatingBuilder() {
    Rating._defaults(this);
  }

  RatingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _score = $v.score;
      _comment = $v.comment;
      _likesCount = $v.likesCount;
      _restaurant = $v.restaurant?.toBuilder();
      _user = $v.user?.toBuilder();
      _images = $v.images?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Rating other) {
    _$v = other as _$Rating;
  }

  @override
  void update(void Function(RatingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Rating build() => _build();

  _$Rating _build() {
    _$Rating _$result;
    try {
      _$result =
          _$v ??
          _$Rating._(
            id: id,
            score: score,
            comment: comment,
            likesCount: likesCount,
            restaurant: _restaurant?.build(),
            user: _user?.build(),
            images: _images?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'restaurant';
        _restaurant?.build();
        _$failedField = 'user';
        _user?.build();
        _$failedField = 'images';
        _images?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'Rating',
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
