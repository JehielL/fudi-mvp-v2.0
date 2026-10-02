// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dish_menu_restaurant.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DishMenuRestaurant extends DishMenuRestaurant {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? coverImageUrl;
  @override
  final String? city;
  @override
  final String? restaurantType;

  factory _$DishMenuRestaurant([
    void Function(DishMenuRestaurantBuilder)? updates,
  ]) => (DishMenuRestaurantBuilder()..update(updates))._build();

  _$DishMenuRestaurant._({
    this.id,
    this.name,
    this.coverImageUrl,
    this.city,
    this.restaurantType,
  }) : super._();
  @override
  DishMenuRestaurant rebuild(
    void Function(DishMenuRestaurantBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  DishMenuRestaurantBuilder toBuilder() =>
      DishMenuRestaurantBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DishMenuRestaurant &&
        id == other.id &&
        name == other.name &&
        coverImageUrl == other.coverImageUrl &&
        city == other.city &&
        restaurantType == other.restaurantType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, coverImageUrl.hashCode);
    _$hash = $jc(_$hash, city.hashCode);
    _$hash = $jc(_$hash, restaurantType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DishMenuRestaurant')
          ..add('id', id)
          ..add('name', name)
          ..add('coverImageUrl', coverImageUrl)
          ..add('city', city)
          ..add('restaurantType', restaurantType))
        .toString();
  }
}

class DishMenuRestaurantBuilder
    implements Builder<DishMenuRestaurant, DishMenuRestaurantBuilder> {
  _$DishMenuRestaurant? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _coverImageUrl;
  String? get coverImageUrl => _$this._coverImageUrl;
  set coverImageUrl(String? coverImageUrl) =>
      _$this._coverImageUrl = coverImageUrl;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  String? _restaurantType;
  String? get restaurantType => _$this._restaurantType;
  set restaurantType(String? restaurantType) =>
      _$this._restaurantType = restaurantType;

  DishMenuRestaurantBuilder() {
    DishMenuRestaurant._defaults(this);
  }

  DishMenuRestaurantBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _coverImageUrl = $v.coverImageUrl;
      _city = $v.city;
      _restaurantType = $v.restaurantType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DishMenuRestaurant other) {
    _$v = other as _$DishMenuRestaurant;
  }

  @override
  void update(void Function(DishMenuRestaurantBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DishMenuRestaurant build() => _build();

  _$DishMenuRestaurant _build() {
    final _$result =
        _$v ??
        _$DishMenuRestaurant._(
          id: id,
          name: name,
          coverImageUrl: coverImageUrl,
          city: city,
          restaurantType: restaurantType,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
