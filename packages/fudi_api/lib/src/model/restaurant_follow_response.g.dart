// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_follow_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RestaurantFollowResponse extends RestaurantFollowResponse {
  @override
  final DateTime? createdAt;
  @override
  final RestaurantPublic? restaurant;

  factory _$RestaurantFollowResponse([
    void Function(RestaurantFollowResponseBuilder)? updates,
  ]) => (RestaurantFollowResponseBuilder()..update(updates))._build();

  _$RestaurantFollowResponse._({this.createdAt, this.restaurant}) : super._();
  @override
  RestaurantFollowResponse rebuild(
    void Function(RestaurantFollowResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RestaurantFollowResponseBuilder toBuilder() =>
      RestaurantFollowResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestaurantFollowResponse &&
        createdAt == other.createdAt &&
        restaurant == other.restaurant;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, restaurant.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RestaurantFollowResponse')
          ..add('createdAt', createdAt)
          ..add('restaurant', restaurant))
        .toString();
  }
}

class RestaurantFollowResponseBuilder
    implements
        Builder<RestaurantFollowResponse, RestaurantFollowResponseBuilder> {
  _$RestaurantFollowResponse? _$v;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  RestaurantPublic? _restaurant;
  RestaurantPublic? get restaurant => _$this._restaurant;
  set restaurant(RestaurantPublic? restaurant) =>
      _$this._restaurant = restaurant;

  RestaurantFollowResponseBuilder() {
    RestaurantFollowResponse._defaults(this);
  }

  RestaurantFollowResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createdAt = $v.createdAt;
      _restaurant = $v.restaurant;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestaurantFollowResponse other) {
    _$v = other as _$RestaurantFollowResponse;
  }

  @override
  void update(void Function(RestaurantFollowResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RestaurantFollowResponse build() => _build();

  _$RestaurantFollowResponse _build() {
    final _$result =
        _$v ??
        _$RestaurantFollowResponse._(
          createdAt: createdAt,
          restaurant: restaurant,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
