// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_section.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MenuSection extends MenuSection {
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
  @override
  final int? menuId;

  factory _$MenuSection([void Function(MenuSectionBuilder)? updates]) =>
      (MenuSectionBuilder()..update(updates))._build();

  _$MenuSection._({
    this.id,
    this.name,
    this.slug,
    this.position,
    this.active,
    this.menuId,
  }) : super._();
  @override
  MenuSection rebuild(void Function(MenuSectionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MenuSectionBuilder toBuilder() => MenuSectionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MenuSection &&
        id == other.id &&
        name == other.name &&
        slug == other.slug &&
        position == other.position &&
        active == other.active &&
        menuId == other.menuId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, slug.hashCode);
    _$hash = $jc(_$hash, position.hashCode);
    _$hash = $jc(_$hash, active.hashCode);
    _$hash = $jc(_$hash, menuId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MenuSection')
          ..add('id', id)
          ..add('name', name)
          ..add('slug', slug)
          ..add('position', position)
          ..add('active', active)
          ..add('menuId', menuId))
        .toString();
  }
}

class MenuSectionBuilder implements Builder<MenuSection, MenuSectionBuilder> {
  _$MenuSection? _$v;

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

  int? _menuId;
  int? get menuId => _$this._menuId;
  set menuId(int? menuId) => _$this._menuId = menuId;

  MenuSectionBuilder() {
    MenuSection._defaults(this);
  }

  MenuSectionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _slug = $v.slug;
      _position = $v.position;
      _active = $v.active;
      _menuId = $v.menuId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MenuSection other) {
    _$v = other as _$MenuSection;
  }

  @override
  void update(void Function(MenuSectionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MenuSection build() => _build();

  _$MenuSection _build() {
    final _$result =
        _$v ??
        _$MenuSection._(
          id: id,
          name: name,
          slug: slug,
          position: position,
          active: active,
          menuId: menuId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
