// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Favorite extends Favorite {
  @override
  final int? id;
  @override
  final User? user;
  @override
  final Restaurant? restaurant;
  @override
  final DateTime? createdAt;

  factory _$Favorite([void Function(FavoriteBuilder)? updates]) =>
      (FavoriteBuilder()..update(updates))._build();

  _$Favorite._({this.id, this.user, this.restaurant, this.createdAt})
    : super._();
  @override
  Favorite rebuild(void Function(FavoriteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FavoriteBuilder toBuilder() => FavoriteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Favorite &&
        id == other.id &&
        user == other.user &&
        restaurant == other.restaurant &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, restaurant.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Favorite')
          ..add('id', id)
          ..add('user', user)
          ..add('restaurant', restaurant)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class FavoriteBuilder implements Builder<Favorite, FavoriteBuilder> {
  _$Favorite? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  UserBuilder? _user;
  UserBuilder get user => _$this._user ??= UserBuilder();
  set user(UserBuilder? user) => _$this._user = user;

  RestaurantBuilder? _restaurant;
  RestaurantBuilder get restaurant =>
      _$this._restaurant ??= RestaurantBuilder();
  set restaurant(RestaurantBuilder? restaurant) =>
      _$this._restaurant = restaurant;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  FavoriteBuilder() {
    Favorite._defaults(this);
  }

  FavoriteBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _user = $v.user?.toBuilder();
      _restaurant = $v.restaurant?.toBuilder();
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Favorite other) {
    _$v = other as _$Favorite;
  }

  @override
  void update(void Function(FavoriteBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Favorite build() => _build();

  _$Favorite _build() {
    _$Favorite _$result;
    try {
      _$result =
          _$v ??
          _$Favorite._(
            id: id,
            user: _user?.build(),
            restaurant: _restaurant?.build(),
            createdAt: createdAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
        _$failedField = 'restaurant';
        _restaurant?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'Favorite',
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
