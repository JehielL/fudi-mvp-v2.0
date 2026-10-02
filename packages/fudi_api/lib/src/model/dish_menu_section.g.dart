// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dish_menu_section.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DishMenuSection extends DishMenuSection {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? slug;
  @override
  final int? position;
  @override
  final bool? active;

  factory _$DishMenuSection([void Function(DishMenuSectionBuilder)? updates]) =>
      (DishMenuSectionBuilder()..update(updates))._build();

  _$DishMenuSection._({
    this.id,
    this.name,
    this.slug,
    this.position,
    this.active,
  }) : super._();
  @override
  DishMenuSection rebuild(void Function(DishMenuSectionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DishMenuSectionBuilder toBuilder() => DishMenuSectionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DishMenuSection &&
        id == other.id &&
        name == other.name &&
        slug == other.slug &&
        position == other.position &&
        active == other.active;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, slug.hashCode);
    _$hash = $jc(_$hash, position.hashCode);
    _$hash = $jc(_$hash, active.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DishMenuSection')
          ..add('id', id)
          ..add('name', name)
          ..add('slug', slug)
          ..add('position', position)
          ..add('active', active))
        .toString();
  }
}

class DishMenuSectionBuilder
    implements Builder<DishMenuSection, DishMenuSectionBuilder> {
  _$DishMenuSection? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _slug;
  String? get slug => _$this._slug;
  set slug(String? slug) => _$this._slug = slug;

  int? _position;
  int? get position => _$this._position;
  set position(int? position) => _$this._position = position;

  bool? _active;
  bool? get active => _$this._active;
  set active(bool? active) => _$this._active = active;

  DishMenuSectionBuilder() {
    DishMenuSection._defaults(this);
  }

  DishMenuSectionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _slug = $v.slug;
      _position = $v.position;
      _active = $v.active;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DishMenuSection other) {
    _$v = other as _$DishMenuSection;
  }

  @override
  void update(void Function(DishMenuSectionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DishMenuSection build() => _build();

  _$DishMenuSection _build() {
    final _$result =
        _$v ??
        _$DishMenuSection._(
          id: id,
          name: name,
          slug: slug,
          position: position,
          active: active,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
