// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_v1_dashboard_restaurants_restaurant_id_today_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiV1DashboardRestaurantsRestaurantIdTodayGet200Response
    extends ApiV1DashboardRestaurantsRestaurantIdTodayGet200Response {
  @override
  final int? totalBookings;
  @override
  final int? totalPeople;
  @override
  final int? pending;
  @override
  final BuiltList<BookingRestaurant>? bookingsList;
  @override
  final BuiltList<BookingRestaurant>? pendingBookingsList;

  factory _$ApiV1DashboardRestaurantsRestaurantIdTodayGet200Response([
    void Function(
      ApiV1DashboardRestaurantsRestaurantIdTodayGet200ResponseBuilder,
    )?
    updates,
  ]) =>
      (ApiV1DashboardRestaurantsRestaurantIdTodayGet200ResponseBuilder()
            ..update(updates))
          ._build();

  _$ApiV1DashboardRestaurantsRestaurantIdTodayGet200Response._({
    this.totalBookings,
    this.totalPeople,
    this.pending,
    this.bookingsList,
    this.pendingBookingsList,
  }) : super._();
  @override
  ApiV1DashboardRestaurantsRestaurantIdTodayGet200Response rebuild(
    void Function(
      ApiV1DashboardRestaurantsRestaurantIdTodayGet200ResponseBuilder,
    )
    updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ApiV1DashboardRestaurantsRestaurantIdTodayGet200ResponseBuilder toBuilder() =>
      ApiV1DashboardRestaurantsRestaurantIdTodayGet200ResponseBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiV1DashboardRestaurantsRestaurantIdTodayGet200Response &&
        totalBookings == other.totalBookings &&
        totalPeople == other.totalPeople &&
        pending == other.pending &&
        bookingsList == other.bookingsList &&
        pendingBookingsList == other.pendingBookingsList;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, totalBookings.hashCode);
    _$hash = $jc(_$hash, totalPeople.hashCode);
    _$hash = $jc(_$hash, pending.hashCode);
    _$hash = $jc(_$hash, bookingsList.hashCode);
    _$hash = $jc(_$hash, pendingBookingsList.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ApiV1DashboardRestaurantsRestaurantIdTodayGet200Response',
          )
          ..add('totalBookings', totalBookings)
          ..add('totalPeople', totalPeople)
          ..add('pending', pending)
          ..add('bookingsList', bookingsList)
          ..add('pendingBookingsList', pendingBookingsList))
        .toString();
  }
}

class ApiV1DashboardRestaurantsRestaurantIdTodayGet200ResponseBuilder
    implements
        Builder<
          ApiV1DashboardRestaurantsRestaurantIdTodayGet200Response,
          ApiV1DashboardRestaurantsRestaurantIdTodayGet200ResponseBuilder
        > {
  _$ApiV1DashboardRestaurantsRestaurantIdTodayGet200Response? _$v;

  int? _totalBookings;
  int? get totalBookings => _$this._totalBookings;
  set totalBookings(int? totalBookings) =>
      _$this._totalBookings = totalBookings;

  int? _totalPeople;
  int? get totalPeople => _$this._totalPeople;
  set totalPeople(int? totalPeople) => _$this._totalPeople = totalPeople;

  int? _pending;
  int? get pending => _$this._pending;
  set pending(int? pending) => _$this._pending = pending;

  ListBuilder<BookingRestaurant>? _bookingsList;
  ListBuilder<BookingRestaurant> get bookingsList =>
      _$this._bookingsList ??= ListBuilder<BookingRestaurant>();
  set bookingsList(ListBuilder<BookingRestaurant>? bookingsList) =>
      _$this._bookingsList = bookingsList;

  ListBuilder<BookingRestaurant>? _pendingBookingsList;
  ListBuilder<BookingRestaurant> get pendingBookingsList =>
      _$this._pendingBookingsList ??= ListBuilder<BookingRestaurant>();
  set pendingBookingsList(
    ListBuilder<BookingRestaurant>? pendingBookingsList,
  ) => _$this._pendingBookingsList = pendingBookingsList;

  ApiV1DashboardRestaurantsRestaurantIdTodayGet200ResponseBuilder() {
    ApiV1DashboardRestaurantsRestaurantIdTodayGet200Response._defaults(this);
  }

  ApiV1DashboardRestaurantsRestaurantIdTodayGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _totalBookings = $v.totalBookings;
      _totalPeople = $v.totalPeople;
      _pending = $v.pending;
      _bookingsList = $v.bookingsList?.toBuilder();
      _pendingBookingsList = $v.pendingBookingsList?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiV1DashboardRestaurantsRestaurantIdTodayGet200Response other) {
    _$v = other as _$ApiV1DashboardRestaurantsRestaurantIdTodayGet200Response;
  }

  @override
  void update(
    void Function(
      ApiV1DashboardRestaurantsRestaurantIdTodayGet200ResponseBuilder,
    )?
    updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  ApiV1DashboardRestaurantsRestaurantIdTodayGet200Response build() => _build();

  _$ApiV1DashboardRestaurantsRestaurantIdTodayGet200Response _build() {
    _$ApiV1DashboardRestaurantsRestaurantIdTodayGet200Response _$result;
    try {
      _$result =
          _$v ??
          _$ApiV1DashboardRestaurantsRestaurantIdTodayGet200Response._(
            totalBookings: totalBookings,
            totalPeople: totalPeople,
            pending: pending,
            bookingsList: _bookingsList?.build(),
            pendingBookingsList: _pendingBookingsList?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'bookingsList';
        _bookingsList?.build();
        _$failedField = 'pendingBookingsList';
        _pendingBookingsList?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ApiV1DashboardRestaurantsRestaurantIdTodayGet200Response',
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
