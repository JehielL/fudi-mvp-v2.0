// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dish_filter_section.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DishFilterSection extends DishFilterSection {
  @override
  final int? id;
  @override
  final String? slug;
  @override
  final String? name;
  @override
  final int? position;
  @override
  final int? totalDishes;
  @override
  final int? activeDishes;

  factory _$DishFilterSection([
    void Function(DishFilterSectionBuilder)? updates,
  ]) => (DishFilterSectionBuilder()..update(updates))._build();

  _$DishFilterSection._({
    this.id,
    this.slug,
    this.name,
    this.position,
    this.totalDishes,
    this.activeDishes,
  }) : super._();
  @override
  DishFilterSection rebuild(void Function(DishFilterSectionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DishFilterSectionBuilder toBuilder() =>
      DishFilterSectionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DishFilterSection &&
        id == other.id &&
        slug == other.slug &&
        name == other.name &&
        position == other.position &&
        totalDishes == other.totalDishes &&
        activeDishes == other.activeDishes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, slug.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, position.hashCode);
    _$hash = $jc(_$hash, totalDishes.hashCode);
    _$hash = $jc(_$hash, activeDishes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DishFilterSection')
          ..add('id', id)
          ..add('slug', slug)
          ..add('name', name)
          ..add('position', position)
          ..add('totalDishes', totalDishes)
          ..add('activeDishes', activeDishes))
        .toString();
  }
}

class DishFilterSectionBuilder
    implements Builder<DishFilterSection, DishFilterSectionBuilder> {
  _$DishFilterSection? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _slug;
  String? get slug => _$this._slug;
  set slug(String? slug) => _$this._slug = slug;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _position;
  int? get position => _$this._position;
  set position(int? position) => _$this._position = position;

  int? _totalDishes;
  int? get totalDishes => _$this._totalDishes;
  set totalDishes(int? totalDishes) => _$this._totalDishes = totalDishes;

  int? _activeDishes;
  int? get activeDishes => _$this._activeDishes;
  set activeDishes(int? activeDishes) => _$this._activeDishes = activeDishes;

  DishFilterSectionBuilder() {
    DishFilterSection._defaults(this);
  }

  DishFilterSectionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _slug = $v.slug;
      _name = $v.name;
      _position = $v.position;
      _totalDishes = $v.totalDishes;
      _activeDishes = $v.activeDishes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DishFilterSection other) {
    _$v = other as _$DishFilterSection;
  }

  @override
  void update(void Function(DishFilterSectionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DishFilterSection build() => _build();

  _$DishFilterSection _build() {
    final _$result =
        _$v ??
        _$DishFilterSection._(
          id: id,
          slug: slug,
          name: name,
          position: position,
          totalDishes: totalDishes,
          activeDishes: activeDishes,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
