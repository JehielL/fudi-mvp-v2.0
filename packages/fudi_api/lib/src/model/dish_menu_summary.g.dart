// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dish_menu_summary.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DishMenuSummary extends DishMenuSummary {
  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? imgMenu;
  @override
  final bool? active;
  @override
  final String? restaurantType;
  @override
  final bool? alergys;
  @override
  final int? likesCount;
  @override
  final DishMenuRestaurant? restaurant;

  factory _$DishMenuSummary([void Function(DishMenuSummaryBuilder)? updates]) =>
      (DishMenuSummaryBuilder()..update(updates))._build();

  _$DishMenuSummary._({
    this.id,
    this.title,
    this.description,
    this.imgMenu,
    this.active,
    this.restaurantType,
    this.alergys,
    this.likesCount,
    this.restaurant,
  }) : super._();
  @override
  DishMenuSummary rebuild(void Function(DishMenuSummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DishMenuSummaryBuilder toBuilder() => DishMenuSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DishMenuSummary &&
        id == other.id &&
        title == other.title &&
        description == other.description &&
        imgMenu == other.imgMenu &&
        active == other.active &&
        restaurantType == other.restaurantType &&
        alergys == other.alergys &&
        likesCount == other.likesCount &&
        restaurant == other.restaurant;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, imgMenu.hashCode);
    _$hash = $jc(_$hash, active.hashCode);
    _$hash = $jc(_$hash, restaurantType.hashCode);
    _$hash = $jc(_$hash, alergys.hashCode);
    _$hash = $jc(_$hash, likesCount.hashCode);
    _$hash = $jc(_$hash, restaurant.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DishMenuSummary')
          ..add('id', id)
          ..add('title', title)
          ..add('description', description)
          ..add('imgMenu', imgMenu)
          ..add('active', active)
          ..add('restaurantType', restaurantType)
          ..add('alergys', alergys)
          ..add('likesCount', likesCount)
          ..add('restaurant', restaurant))
        .toString();
  }
}

class DishMenuSummaryBuilder
    implements Builder<DishMenuSummary, DishMenuSummaryBuilder> {
  _$DishMenuSummary? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _imgMenu;
  String? get imgMenu => _$this._imgMenu;
  set imgMenu(String? imgMenu) => _$this._imgMenu = imgMenu;

  bool? _active;
  bool? get active => _$this._active;
  set active(bool? active) => _$this._active = active;

  String? _restaurantType;
  String? get restaurantType => _$this._restaurantType;
  set restaurantType(String? restaurantType) =>
      _$this._restaurantType = restaurantType;

  bool? _alergys;
  bool? get alergys => _$this._alergys;
  set alergys(bool? alergys) => _$this._alergys = alergys;

  int? _likesCount;
  int? get likesCount => _$this._likesCount;
  set likesCount(int? likesCount) => _$this._likesCount = likesCount;

  DishMenuRestaurantBuilder? _restaurant;
  DishMenuRestaurantBuilder get restaurant =>
      _$this._restaurant ??= DishMenuRestaurantBuilder();
  set restaurant(DishMenuRestaurantBuilder? restaurant) =>
      _$this._restaurant = restaurant;

  DishMenuSummaryBuilder() {
    DishMenuSummary._defaults(this);
  }

  DishMenuSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _description = $v.description;
      _imgMenu = $v.imgMenu;
      _active = $v.active;
      _restaurantType = $v.restaurantType;
      _alergys = $v.alergys;
      _likesCount = $v.likesCount;
      _restaurant = $v.restaurant?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DishMenuSummary other) {
    _$v = other as _$DishMenuSummary;
  }

  @override
  void update(void Function(DishMenuSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DishMenuSummary build() => _build();

  _$DishMenuSummary _build() {
    _$DishMenuSummary _$result;
    try {
      _$result =
          _$v ??
          _$DishMenuSummary._(
            id: id,
            title: title,
            description: description,
            imgMenu: imgMenu,
            active: active,
            restaurantType: restaurantType,
            alergys: alergys,
            likesCount: likesCount,
            restaurant: _restaurant?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'restaurant';
        _restaurant?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'DishMenuSummary',
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
