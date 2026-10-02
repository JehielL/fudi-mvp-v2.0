// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_v1_dashboard_restaurants_restaurant_id_monthly_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiV1DashboardRestaurantsRestaurantIdMonthlyGet200Response
    extends ApiV1DashboardRestaurantsRestaurantIdMonthlyGet200Response {
  @override
  final int? confirmed;
  @override
  final int? completed;
  @override
  final int? cancelled;
  @override
  final int? noShow;
  @override
  final num? completionRate;
  @override
  final num? cancellationRate;
  @override
  final num? noShowRate;

  factory _$ApiV1DashboardRestaurantsRestaurantIdMonthlyGet200Response([
    void Function(
      ApiV1DashboardRestaurantsRestaurantIdMonthlyGet200ResponseBuilder,
    )?
    updates,
  ]) =>
      (ApiV1DashboardRestaurantsRestaurantIdMonthlyGet200ResponseBuilder()
            ..update(updates))
          ._build();

  _$ApiV1DashboardRestaurantsRestaurantIdMonthlyGet200Response._({
    this.confirmed,
    this.completed,
    this.cancelled,
    this.noShow,
    this.completionRate,
    this.cancellationRate,
    this.noShowRate,
  }) : super._();
  @override
  ApiV1DashboardRestaurantsRestaurantIdMonthlyGet200Response rebuild(
    void Function(
      ApiV1DashboardRestaurantsRestaurantIdMonthlyGet200ResponseBuilder,
    )
    updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ApiV1DashboardRestaurantsRestaurantIdMonthlyGet200ResponseBuilder
  toBuilder() =>
      ApiV1DashboardRestaurantsRestaurantIdMonthlyGet200ResponseBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is ApiV1DashboardRestaurantsRestaurantIdMonthlyGet200Response &&
        confirmed == other.confirmed &&
        completed == other.completed &&
        cancelled == other.cancelled &&
        noShow == other.noShow &&
        completionRate == other.completionRate &&
        cancellationRate == other.cancellationRate &&
        noShowRate == other.noShowRate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, confirmed.hashCode);
    _$hash = $jc(_$hash, completed.hashCode);
    _$hash = $jc(_$hash, cancelled.hashCode);
    _$hash = $jc(_$hash, noShow.hashCode);
    _$hash = $jc(_$hash, completionRate.hashCode);
    _$hash = $jc(_$hash, cancellationRate.hashCode);
    _$hash = $jc(_$hash, noShowRate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ApiV1DashboardRestaurantsRestaurantIdMonthlyGet200Response',
          )
          ..add('confirmed', confirmed)
          ..add('completed', completed)
          ..add('cancelled', cancelled)
          ..add('noShow', noShow)
          ..add('completionRate', completionRate)
          ..add('cancellationRate', cancellationRate)
          ..add('noShowRate', noShowRate))
        .toString();
  }
}

class ApiV1DashboardRestaurantsRestaurantIdMonthlyGet200ResponseBuilder
    implements
        Builder<
          ApiV1DashboardRestaurantsRestaurantIdMonthlyGet200Response,
          ApiV1DashboardRestaurantsRestaurantIdMonthlyGet200ResponseBuilder
        > {
  _$ApiV1DashboardRestaurantsRestaurantIdMonthlyGet200Response? _$v;

  int? _confirmed;
  int? get confirmed => _$this._confirmed;
  set confirmed(int? confirmed) => _$this._confirmed = confirmed;

  int? _completed;
  int? get completed => _$this._completed;
  set completed(int? completed) => _$this._completed = completed;

  int? _cancelled;
  int? get cancelled => _$this._cancelled;
  set cancelled(int? cancelled) => _$this._cancelled = cancelled;

  int? _noShow;
  int? get noShow => _$this._noShow;
  set noShow(int? noShow) => _$this._noShow = noShow;

  num? _completionRate;
  num? get completionRate => _$this._completionRate;
  set completionRate(num? completionRate) =>
      _$this._completionRate = completionRate;

  num? _cancellationRate;
  num? get cancellationRate => _$this._cancellationRate;
  set cancellationRate(num? cancellationRate) =>
      _$this._cancellationRate = cancellationRate;

  num? _noShowRate;
  num? get noShowRate => _$this._noShowRate;
  set noShowRate(num? noShowRate) => _$this._noShowRate = noShowRate;

  ApiV1DashboardRestaurantsRestaurantIdMonthlyGet200ResponseBuilder() {
    ApiV1DashboardRestaurantsRestaurantIdMonthlyGet200Response._defaults(this);
  }

  ApiV1DashboardRestaurantsRestaurantIdMonthlyGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _confirmed = $v.confirmed;
      _completed = $v.completed;
      _cancelled = $v.cancelled;
      _noShow = $v.noShow;
      _completionRate = $v.completionRate;
      _cancellationRate = $v.cancellationRate;
      _noShowRate = $v.noShowRate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
    ApiV1DashboardRestaurantsRestaurantIdMonthlyGet200Response other,
  ) {
    _$v = other as _$ApiV1DashboardRestaurantsRestaurantIdMonthlyGet200Response;
  }

  @override
  void update(
    void Function(
      ApiV1DashboardRestaurantsRestaurantIdMonthlyGet200ResponseBuilder,
    )?
    updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  ApiV1DashboardRestaurantsRestaurantIdMonthlyGet200Response build() =>
      _build();

  _$ApiV1DashboardRestaurantsRestaurantIdMonthlyGet200Response _build() {
    final _$result =
        _$v ??
        _$ApiV1DashboardRestaurantsRestaurantIdMonthlyGet200Response._(
          confirmed: confirmed,
          completed: completed,
          cancelled: cancelled,
          noShow: noShow,
          completionRate: completionRate,
          cancellationRate: cancellationRate,
          noShowRate: noShowRate,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
