// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dish.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Dish extends Dish {
  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final double? price;
  @override
  final String? imgDish;
  @override
  final bool? active;
  @override
  final bool? alergys;
  @override
  final DishMenuSummary? menu;
  @override
  final DishMenuSection? menuSection;

  factory _$Dish([void Function(DishBuilder)? updates]) =>
      (DishBuilder()..update(updates))._build();

  _$Dish._({
    this.id,
    this.title,
    this.description,
    this.price,
    this.imgDish,
    this.active,
    this.alergys,
    this.menu,
    this.menuSection,
  }) : super._();
  @override
  Dish rebuild(void Function(DishBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DishBuilder toBuilder() => DishBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Dish &&
        id == other.id &&
        title == other.title &&
        description == other.description &&
        price == other.price &&
        imgDish == other.imgDish &&
        active == other.active &&
        alergys == other.alergys &&
        menu == other.menu &&
        menuSection == other.menuSection;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, imgDish.hashCode);
    _$hash = $jc(_$hash, active.hashCode);
    _$hash = $jc(_$hash, alergys.hashCode);
    _$hash = $jc(_$hash, menu.hashCode);
    _$hash = $jc(_$hash, menuSection.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Dish')
          ..add('id', id)
          ..add('title', title)
          ..add('description', description)
          ..add('price', price)
          ..add('imgDish', imgDish)
          ..add('active', active)
          ..add('alergys', alergys)
          ..add('menu', menu)
          ..add('menuSection', menuSection))
        .toString();
  }
}

class DishBuilder implements Builder<Dish, DishBuilder> {
  _$Dish? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  String? _imgDish;
  String? get imgDish => _$this._imgDish;
  set imgDish(String? imgDish) => _$this._imgDish = imgDish;

  bool? _active;
  bool? get active => _$this._active;
  set active(bool? active) => _$this._active = active;

  bool? _alergys;
  bool? get alergys => _$this._alergys;
  set alergys(bool? alergys) => _$this._alergys = alergys;

  DishMenuSummaryBuilder? _menu;
  DishMenuSummaryBuilder get menu => _$this._menu ??= DishMenuSummaryBuilder();
  set menu(DishMenuSummaryBuilder? menu) => _$this._menu = menu;

  DishMenuSectionBuilder? _menuSection;
  DishMenuSectionBuilder get menuSection =>
      _$this._menuSection ??= DishMenuSectionBuilder();
  set menuSection(DishMenuSectionBuilder? menuSection) =>
      _$this._menuSection = menuSection;

  DishBuilder() {
    Dish._defaults(this);
  }

  DishBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _description = $v.description;
      _price = $v.price;
      _imgDish = $v.imgDish;
      _active = $v.active;
      _alergys = $v.alergys;
      _menu = $v.menu?.toBuilder();
      _menuSection = $v.menuSection?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Dish other) {
    _$v = other as _$Dish;
  }

  @override
  void update(void Function(DishBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Dish build() => _build();

  _$Dish _build() {
    _$Dish _$result;
    try {
      _$result =
          _$v ??
          _$Dish._(
            id: id,
            title: title,
            description: description,
            price: price,
            imgDish: imgDish,
            active: active,
            alergys: alergys,
            menu: _menu?.build(),
            menuSection: _menuSection?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'menu';
        _menu?.build();
        _$failedField = 'menuSection';
        _menuSection?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'Dish', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
