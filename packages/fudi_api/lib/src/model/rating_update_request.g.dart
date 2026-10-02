// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_update_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RatingUpdateRequest extends RatingUpdateRequest {
  @override
  final int? score;
  @override
  final String? comment;
  @override
  final int? restaurantId;
  @override
  final RatingRestaurantReference? restaurant;

  factory _$RatingUpdateRequest([
    void Function(RatingUpdateRequestBuilder)? updates,
  ]) => (RatingUpdateRequestBuilder()..update(updates))._build();

  _$RatingUpdateRequest._({
    this.score,
    this.comment,
    this.restaurantId,
    this.restaurant,
  }) : super._();
  @override
  RatingUpdateRequest rebuild(
    void Function(RatingUpdateRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RatingUpdateRequestBuilder toBuilder() =>
      RatingUpdateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RatingUpdateRequest &&
        score == other.score &&
        comment == other.comment &&
        restaurantId == other.restaurantId &&
        restaurant == other.restaurant;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, score.hashCode);
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jc(_$hash, restaurantId.hashCode);
    _$hash = $jc(_$hash, restaurant.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RatingUpdateRequest')
          ..add('score', score)
          ..add('comment', comment)
          ..add('restaurantId', restaurantId)
          ..add('restaurant', restaurant))
        .toString();
  }
}

class RatingUpdateRequestBuilder
    implements Builder<RatingUpdateRequest, RatingUpdateRequestBuilder> {
  _$RatingUpdateRequest? _$v;

  int? _score;
  int? get score => _$this._score;
  set score(int? score) => _$this._score = score;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  int? _restaurantId;
  int? get restaurantId => _$this._restaurantId;
  set restaurantId(int? restaurantId) => _$this._restaurantId = restaurantId;

  RatingRestaurantReferenceBuilder? _restaurant;
  RatingRestaurantReferenceBuilder get restaurant =>
      _$this._restaurant ??= RatingRestaurantReferenceBuilder();
  set restaurant(RatingRestaurantReferenceBuilder? restaurant) =>
      _$this._restaurant = restaurant;

  RatingUpdateRequestBuilder() {
    RatingUpdateRequest._defaults(this);
  }

  RatingUpdateRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _score = $v.score;
      _comment = $v.comment;
      _restaurantId = $v.restaurantId;
      _restaurant = $v.restaurant?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RatingUpdateRequest other) {
    _$v = other as _$RatingUpdateRequest;
  }

  @override
  void update(void Function(RatingUpdateRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RatingUpdateRequest build() => _build();

  _$RatingUpdateRequest _build() {
    _$RatingUpdateRequest _$result;
    try {
      _$result =
          _$v ??
          _$RatingUpdateRequest._(
            score: score,
            comment: comment,
            restaurantId: restaurantId,
            restaurant: _restaurant?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'restaurant';
        _restaurant?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'RatingUpdateRequest',
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
