// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_group_workspace.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RestaurantGroupWorkspace extends RestaurantGroupWorkspace {
  @override
  final RestaurantGroup? group;
  @override
  final RestaurantGroupAccess? access;
  @override
  final RestaurantGroupWorkspaceSummary? summary;
  @override
  final BuiltList<RestaurantGroupWorkspaceRestaurant>? restaurants;

  factory _$RestaurantGroupWorkspace([
    void Function(RestaurantGroupWorkspaceBuilder)? updates,
  ]) => (RestaurantGroupWorkspaceBuilder()..update(updates))._build();

  _$RestaurantGroupWorkspace._({
    this.group,
    this.access,
    this.summary,
    this.restaurants,
  }) : super._();
  @override
  RestaurantGroupWorkspace rebuild(
    void Function(RestaurantGroupWorkspaceBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RestaurantGroupWorkspaceBuilder toBuilder() =>
      RestaurantGroupWorkspaceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestaurantGroupWorkspace &&
        group == other.group &&
        access == other.access &&
        summary == other.summary &&
        restaurants == other.restaurants;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, group.hashCode);
    _$hash = $jc(_$hash, access.hashCode);
    _$hash = $jc(_$hash, summary.hashCode);
    _$hash = $jc(_$hash, restaurants.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RestaurantGroupWorkspace')
          ..add('group', group)
          ..add('access', access)
          ..add('summary', summary)
          ..add('restaurants', restaurants))
        .toString();
  }
}

class RestaurantGroupWorkspaceBuilder
    implements
        Builder<RestaurantGroupWorkspace, RestaurantGroupWorkspaceBuilder> {
  _$RestaurantGroupWorkspace? _$v;

  RestaurantGroupBuilder? _group;
  RestaurantGroupBuilder get group =>
      _$this._group ??= RestaurantGroupBuilder();
  set group(RestaurantGroupBuilder? group) => _$this._group = group;

  RestaurantGroupAccessBuilder? _access;
  RestaurantGroupAccessBuilder get access =>
      _$this._access ??= RestaurantGroupAccessBuilder();
  set access(RestaurantGroupAccessBuilder? access) => _$this._access = access;

  RestaurantGroupWorkspaceSummaryBuilder? _summary;
  RestaurantGroupWorkspaceSummaryBuilder get summary =>
      _$this._summary ??= RestaurantGroupWorkspaceSummaryBuilder();
  set summary(RestaurantGroupWorkspaceSummaryBuilder? summary) =>
      _$this._summary = summary;

  ListBuilder<RestaurantGroupWorkspaceRestaurant>? _restaurants;
  ListBuilder<RestaurantGroupWorkspaceRestaurant> get restaurants =>
      _$this._restaurants ??= ListBuilder<RestaurantGroupWorkspaceRestaurant>();
  set restaurants(
    ListBuilder<RestaurantGroupWorkspaceRestaurant>? restaurants,
  ) => _$this._restaurants = restaurants;

  RestaurantGroupWorkspaceBuilder() {
    RestaurantGroupWorkspace._defaults(this);
  }

  RestaurantGroupWorkspaceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _group = $v.group?.toBuilder();
      _access = $v.access?.toBuilder();
      _summary = $v.summary?.toBuilder();
      _restaurants = $v.restaurants?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestaurantGroupWorkspace other) {
    _$v = other as _$RestaurantGroupWorkspace;
  }

  @override
  void update(void Function(RestaurantGroupWorkspaceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RestaurantGroupWorkspace build() => _build();

  _$RestaurantGroupWorkspace _build() {
    _$RestaurantGroupWorkspace _$result;
    try {
      _$result =
          _$v ??
          _$RestaurantGroupWorkspace._(
            group: _group?.build(),
            access: _access?.build(),
            summary: _summary?.build(),
            restaurants: _restaurants?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'group';
        _group?.build();
        _$failedField = 'access';
        _access?.build();
        _$failedField = 'summary';
        _summary?.build();
        _$failedField = 'restaurants';
        _restaurants?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'RestaurantGroupWorkspace',
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
