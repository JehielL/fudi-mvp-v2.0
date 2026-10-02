// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_v1_dashboard_restaurants_restaurant_id_quick_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiV1DashboardRestaurantsRestaurantIdQuickGet200Response
    extends ApiV1DashboardRestaurantsRestaurantIdQuickGet200Response {
  @override
  final int? todayBookings;
  @override
  final int? pendingBookings;
  @override
  final int? todayPeople;

  factory _$ApiV1DashboardRestaurantsRestaurantIdQuickGet200Response([
    void Function(
      ApiV1DashboardRestaurantsRestaurantIdQuickGet200ResponseBuilder,
    )?
    updates,
  ]) =>
      (ApiV1DashboardRestaurantsRestaurantIdQuickGet200ResponseBuilder()
            ..update(updates))
          ._build();

  _$ApiV1DashboardRestaurantsRestaurantIdQuickGet200Response._({
    this.todayBookings,
    this.pendingBookings,
    this.todayPeople,
  }) : super._();
  @override
  ApiV1DashboardRestaurantsRestaurantIdQuickGet200Response rebuild(
    void Function(
      ApiV1DashboardRestaurantsRestaurantIdQuickGet200ResponseBuilder,
    )
    updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ApiV1DashboardRestaurantsRestaurantIdQuickGet200ResponseBuilder toBuilder() =>
      ApiV1DashboardRestaurantsRestaurantIdQuickGet200ResponseBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiV1DashboardRestaurantsRestaurantIdQuickGet200Response &&
        todayBookings == other.todayBookings &&
        pendingBookings == other.pendingBookings &&
        todayPeople == other.todayPeople;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, todayBookings.hashCode);
    _$hash = $jc(_$hash, pendingBookings.hashCode);
    _$hash = $jc(_$hash, todayPeople.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ApiV1DashboardRestaurantsRestaurantIdQuickGet200Response',
          )
          ..add('todayBookings', todayBookings)
          ..add('pendingBookings', pendingBookings)
          ..add('todayPeople', todayPeople))
        .toString();
  }
}

class ApiV1DashboardRestaurantsRestaurantIdQuickGet200ResponseBuilder
    implements
        Builder<
          ApiV1DashboardRestaurantsRestaurantIdQuickGet200Response,
          ApiV1DashboardRestaurantsRestaurantIdQuickGet200ResponseBuilder
        > {
  _$ApiV1DashboardRestaurantsRestaurantIdQuickGet200Response? _$v;

  int? _todayBookings;
  int? get todayBookings => _$this._todayBookings;
  set todayBookings(int? todayBookings) =>
      _$this._todayBookings = todayBookings;

  int? _pendingBookings;
  int? get pendingBookings => _$this._pendingBookings;
  set pendingBookings(int? pendingBookings) =>
      _$this._pendingBookings = pendingBookings;

  int? _todayPeople;
  int? get todayPeople => _$this._todayPeople;
  set todayPeople(int? todayPeople) => _$this._todayPeople = todayPeople;

  ApiV1DashboardRestaurantsRestaurantIdQuickGet200ResponseBuilder() {
    ApiV1DashboardRestaurantsRestaurantIdQuickGet200Response._defaults(this);
  }

  ApiV1DashboardRestaurantsRestaurantIdQuickGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _todayBookings = $v.todayBookings;
      _pendingBookings = $v.pendingBookings;
      _todayPeople = $v.todayPeople;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiV1DashboardRestaurantsRestaurantIdQuickGet200Response other) {
    _$v = other as _$ApiV1DashboardRestaurantsRestaurantIdQuickGet200Response;
  }

  @override
  void update(
    void Function(
      ApiV1DashboardRestaurantsRestaurantIdQuickGet200ResponseBuilder,
    )?
    updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  ApiV1DashboardRestaurantsRestaurantIdQuickGet200Response build() => _build();

  _$ApiV1DashboardRestaurantsRestaurantIdQuickGet200Response _build() {
    final _$result =
        _$v ??
        _$ApiV1DashboardRestaurantsRestaurantIdQuickGet200Response._(
          todayBookings: todayBookings,
          pendingBookings: pendingBookings,
          todayPeople: todayPeople,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
