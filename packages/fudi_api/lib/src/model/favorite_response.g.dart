// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FavoriteResponse extends FavoriteResponse {
  @override
  final int? id;
  @override
  final DateTime? createdAt;
  @override
  final RestaurantPublic? restaurant;

  factory _$FavoriteResponse([
    void Function(FavoriteResponseBuilder)? updates,
  ]) => (FavoriteResponseBuilder()..update(updates))._build();

  _$FavoriteResponse._({this.id, this.createdAt, this.restaurant}) : super._();
  @override
  FavoriteResponse rebuild(void Function(FavoriteResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FavoriteResponseBuilder toBuilder() =>
      FavoriteResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FavoriteResponse &&
        id == other.id &&
        createdAt == other.createdAt &&
        restaurant == other.restaurant;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, restaurant.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FavoriteResponse')
          ..add('id', id)
          ..add('createdAt', createdAt)
          ..add('restaurant', restaurant))
        .toString();
  }
}

class FavoriteResponseBuilder
    implements Builder<FavoriteResponse, FavoriteResponseBuilder> {
  _$FavoriteResponse? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  RestaurantPublic? _restaurant;
  RestaurantPublic? get restaurant => _$this._restaurant;
  set restaurant(RestaurantPublic? restaurant) =>
      _$this._restaurant = restaurant;

  FavoriteResponseBuilder() {
    FavoriteResponse._defaults(this);
  }

  FavoriteResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _createdAt = $v.createdAt;
      _restaurant = $v.restaurant;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FavoriteResponse other) {
    _$v = other as _$FavoriteResponse;
  }

  @override
  void update(void Function(FavoriteResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FavoriteResponse build() => _build();

  _$FavoriteResponse _build() {
    final _$result =
        _$v ??
        _$FavoriteResponse._(
          id: id,
          createdAt: createdAt,
          restaurant: restaurant,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
