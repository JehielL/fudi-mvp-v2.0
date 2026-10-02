// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_group_workspace_summary.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RestaurantGroupWorkspaceSummary
    extends RestaurantGroupWorkspaceSummary {
  @override
  final int? restaurantCount;
  @override
  final int? activeRestaurantCount;
  @override
  final int? inactiveRestaurantCount;
  @override
  final int? memberCount;

  factory _$RestaurantGroupWorkspaceSummary([
    void Function(RestaurantGroupWorkspaceSummaryBuilder)? updates,
  ]) => (RestaurantGroupWorkspaceSummaryBuilder()..update(updates))._build();

  _$RestaurantGroupWorkspaceSummary._({
    this.restaurantCount,
    this.activeRestaurantCount,
    this.inactiveRestaurantCount,
    this.memberCount,
  }) : super._();
  @override
  RestaurantGroupWorkspaceSummary rebuild(
    void Function(RestaurantGroupWorkspaceSummaryBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RestaurantGroupWorkspaceSummaryBuilder toBuilder() =>
      RestaurantGroupWorkspaceSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestaurantGroupWorkspaceSummary &&
        restaurantCount == other.restaurantCount &&
        activeRestaurantCount == other.activeRestaurantCount &&
        inactiveRestaurantCount == other.inactiveRestaurantCount &&
        memberCount == other.memberCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, restaurantCount.hashCode);
    _$hash = $jc(_$hash, activeRestaurantCount.hashCode);
    _$hash = $jc(_$hash, inactiveRestaurantCount.hashCode);
    _$hash = $jc(_$hash, memberCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RestaurantGroupWorkspaceSummary')
          ..add('restaurantCount', restaurantCount)
          ..add('activeRestaurantCount', activeRestaurantCount)
          ..add('inactiveRestaurantCount', inactiveRestaurantCount)
          ..add('memberCount', memberCount))
        .toString();
  }
}

class RestaurantGroupWorkspaceSummaryBuilder
    implements
        Builder<
          RestaurantGroupWorkspaceSummary,
          RestaurantGroupWorkspaceSummaryBuilder
        > {
  _$RestaurantGroupWorkspaceSummary? _$v;

  int? _restaurantCount;
  int? get restaurantCount => _$this._restaurantCount;
  set restaurantCount(int? restaurantCount) =>
      _$this._restaurantCount = restaurantCount;

  int? _activeRestaurantCount;
  int? get activeRestaurantCount => _$this._activeRestaurantCount;
  set activeRestaurantCount(int? activeRestaurantCount) =>
      _$this._activeRestaurantCount = activeRestaurantCount;

  int? _inactiveRestaurantCount;
  int? get inactiveRestaurantCount => _$this._inactiveRestaurantCount;
  set inactiveRestaurantCount(int? inactiveRestaurantCount) =>
      _$this._inactiveRestaurantCount = inactiveRestaurantCount;

  int? _memberCount;
  int? get memberCount => _$this._memberCount;
  set memberCount(int? memberCount) => _$this._memberCount = memberCount;

  RestaurantGroupWorkspaceSummaryBuilder() {
    RestaurantGroupWorkspaceSummary._defaults(this);
  }

  RestaurantGroupWorkspaceSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _restaurantCount = $v.restaurantCount;
      _activeRestaurantCount = $v.activeRestaurantCount;
      _inactiveRestaurantCount = $v.inactiveRestaurantCount;
      _memberCount = $v.memberCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestaurantGroupWorkspaceSummary other) {
    _$v = other as _$RestaurantGroupWorkspaceSummary;
  }

  @override
  void update(void Function(RestaurantGroupWorkspaceSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RestaurantGroupWorkspaceSummary build() => _build();

  _$RestaurantGroupWorkspaceSummary _build() {
    final _$result =
        _$v ??
        _$RestaurantGroupWorkspaceSummary._(
          restaurantCount: restaurantCount,
          activeRestaurantCount: activeRestaurantCount,
          inactiveRestaurantCount: inactiveRestaurantCount,
          memberCount: memberCount,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
