// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_group_summary.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RestaurantGroupSummary extends RestaurantGroupSummary {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? slug;

  factory _$RestaurantGroupSummary([
    void Function(RestaurantGroupSummaryBuilder)? updates,
  ]) => (RestaurantGroupSummaryBuilder()..update(updates))._build();

  _$RestaurantGroupSummary._({this.id, this.name, this.slug}) : super._();
  @override
  RestaurantGroupSummary rebuild(
    void Function(RestaurantGroupSummaryBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RestaurantGroupSummaryBuilder toBuilder() =>
      RestaurantGroupSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestaurantGroupSummary &&
        id == other.id &&
        name == other.name &&
        slug == other.slug;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, slug.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RestaurantGroupSummary')
          ..add('id', id)
          ..add('name', name)
          ..add('slug', slug))
        .toString();
  }
}

class RestaurantGroupSummaryBuilder
    implements Builder<RestaurantGroupSummary, RestaurantGroupSummaryBuilder> {
  _$RestaurantGroupSummary? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _slug;
  String? get slug => _$this._slug;
  set slug(String? slug) => _$this._slug = slug;

  RestaurantGroupSummaryBuilder() {
    RestaurantGroupSummary._defaults(this);
  }

  RestaurantGroupSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _slug = $v.slug;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestaurantGroupSummary other) {
    _$v = other as _$RestaurantGroupSummary;
  }

  @override
  void update(void Function(RestaurantGroupSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RestaurantGroupSummary build() => _build();

  _$RestaurantGroupSummary _build() {
    final _$result =
        _$v ?? _$RestaurantGroupSummary._(id: id, name: name, slug: slug);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
