// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_stats.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DashboardStats extends DashboardStats {
  @override
  final int? todayBookings;
  @override
  final int? todayPeople;
  @override
  final int? pendingBookings;
  @override
  final int? monthlyConfirmed;
  @override
  final int? monthlyCompleted;
  @override
  final int? monthlyCancelled;
  @override
  final int? monthlyNoShow;
  @override
  final int? activePromotions;
  @override
  final double? averageRating;
  @override
  final double? completionRate;
  @override
  final double? cancellationRate;
  @override
  final double? noShowRate;
  @override
  final BuiltList<Booking>? todayBookingsList;
  @override
  final BuiltList<Booking>? upcomingBookings;
  @override
  final BuiltList<Booking>? pendingBookingsList;

  factory _$DashboardStats([void Function(DashboardStatsBuilder)? updates]) =>
      (DashboardStatsBuilder()..update(updates))._build();

  _$DashboardStats._({
    this.todayBookings,
    this.todayPeople,
    this.pendingBookings,
    this.monthlyConfirmed,
    this.monthlyCompleted,
    this.monthlyCancelled,
    this.monthlyNoShow,
    this.activePromotions,
    this.averageRating,
    this.completionRate,
    this.cancellationRate,
    this.noShowRate,
    this.todayBookingsList,
    this.upcomingBookings,
    this.pendingBookingsList,
  }) : super._();
  @override
  DashboardStats rebuild(void Function(DashboardStatsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DashboardStatsBuilder toBuilder() => DashboardStatsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DashboardStats &&
        todayBookings == other.todayBookings &&
        todayPeople == other.todayPeople &&
        pendingBookings == other.pendingBookings &&
        monthlyConfirmed == other.monthlyConfirmed &&
        monthlyCompleted == other.monthlyCompleted &&
        monthlyCancelled == other.monthlyCancelled &&
        monthlyNoShow == other.monthlyNoShow &&
        activePromotions == other.activePromotions &&
        averageRating == other.averageRating &&
        completionRate == other.completionRate &&
        cancellationRate == other.cancellationRate &&
        noShowRate == other.noShowRate &&
        todayBookingsList == other.todayBookingsList &&
        upcomingBookings == other.upcomingBookings &&
        pendingBookingsList == other.pendingBookingsList;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, todayBookings.hashCode);
    _$hash = $jc(_$hash, todayPeople.hashCode);
    _$hash = $jc(_$hash, pendingBookings.hashCode);
    _$hash = $jc(_$hash, monthlyConfirmed.hashCode);
    _$hash = $jc(_$hash, monthlyCompleted.hashCode);
    _$hash = $jc(_$hash, monthlyCancelled.hashCode);
    _$hash = $jc(_$hash, monthlyNoShow.hashCode);
    _$hash = $jc(_$hash, activePromotions.hashCode);
    _$hash = $jc(_$hash, averageRating.hashCode);
    _$hash = $jc(_$hash, completionRate.hashCode);
    _$hash = $jc(_$hash, cancellationRate.hashCode);
    _$hash = $jc(_$hash, noShowRate.hashCode);
    _$hash = $jc(_$hash, todayBookingsList.hashCode);
    _$hash = $jc(_$hash, upcomingBookings.hashCode);
    _$hash = $jc(_$hash, pendingBookingsList.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DashboardStats')
          ..add('todayBookings', todayBookings)
          ..add('todayPeople', todayPeople)
          ..add('pendingBookings', pendingBookings)
          ..add('monthlyConfirmed', monthlyConfirmed)
          ..add('monthlyCompleted', monthlyCompleted)
          ..add('monthlyCancelled', monthlyCancelled)
          ..add('monthlyNoShow', monthlyNoShow)
          ..add('activePromotions', activePromotions)
          ..add('averageRating', averageRating)
          ..add('completionRate', completionRate)
          ..add('cancellationRate', cancellationRate)
          ..add('noShowRate', noShowRate)
          ..add('todayBookingsList', todayBookingsList)
          ..add('upcomingBookings', upcomingBookings)
          ..add('pendingBookingsList', pendingBookingsList))
        .toString();
  }
}

class DashboardStatsBuilder
    implements Builder<DashboardStats, DashboardStatsBuilder> {
  _$DashboardStats? _$v;

  int? _todayBookings;
  int? get todayBookings => _$this._todayBookings;
  set todayBookings(int? todayBookings) =>
      _$this._todayBookings = todayBookings;

  int? _todayPeople;
  int? get todayPeople => _$this._todayPeople;
  set todayPeople(int? todayPeople) => _$this._todayPeople = todayPeople;

  int? _pendingBookings;
  int? get pendingBookings => _$this._pendingBookings;
  set pendingBookings(int? pendingBookings) =>
      _$this._pendingBookings = pendingBookings;

  int? _monthlyConfirmed;
  int? get monthlyConfirmed => _$this._monthlyConfirmed;
  set monthlyConfirmed(int? monthlyConfirmed) =>
      _$this._monthlyConfirmed = monthlyConfirmed;

  int? _monthlyCompleted;
  int? get monthlyCompleted => _$this._monthlyCompleted;
  set monthlyCompleted(int? monthlyCompleted) =>
      _$this._monthlyCompleted = monthlyCompleted;

  int? _monthlyCancelled;
  int? get monthlyCancelled => _$this._monthlyCancelled;
  set monthlyCancelled(int? monthlyCancelled) =>
      _$this._monthlyCancelled = monthlyCancelled;

  int? _monthlyNoShow;
  int? get monthlyNoShow => _$this._monthlyNoShow;
  set monthlyNoShow(int? monthlyNoShow) =>
      _$this._monthlyNoShow = monthlyNoShow;

  int? _activePromotions;
  int? get activePromotions => _$this._activePromotions;
  set activePromotions(int? activePromotions) =>
      _$this._activePromotions = activePromotions;

  double? _averageRating;
  double? get averageRating => _$this._averageRating;
  set averageRating(double? averageRating) =>
      _$this._averageRating = averageRating;

  double? _completionRate;
  double? get completionRate => _$this._completionRate;
  set completionRate(double? completionRate) =>
      _$this._completionRate = completionRate;

  double? _cancellationRate;
  double? get cancellationRate => _$this._cancellationRate;
  set cancellationRate(double? cancellationRate) =>
      _$this._cancellationRate = cancellationRate;

  double? _noShowRate;
  double? get noShowRate => _$this._noShowRate;
  set noShowRate(double? noShowRate) => _$this._noShowRate = noShowRate;

  ListBuilder<Booking>? _todayBookingsList;
  ListBuilder<Booking> get todayBookingsList =>
      _$this._todayBookingsList ??= ListBuilder<Booking>();
  set todayBookingsList(ListBuilder<Booking>? todayBookingsList) =>
      _$this._todayBookingsList = todayBookingsList;

  ListBuilder<Booking>? _upcomingBookings;
  ListBuilder<Booking> get upcomingBookings =>
      _$this._upcomingBookings ??= ListBuilder<Booking>();
  set upcomingBookings(ListBuilder<Booking>? upcomingBookings) =>
      _$this._upcomingBookings = upcomingBookings;

  ListBuilder<Booking>? _pendingBookingsList;
  ListBuilder<Booking> get pendingBookingsList =>
      _$this._pendingBookingsList ??= ListBuilder<Booking>();
  set pendingBookingsList(ListBuilder<Booking>? pendingBookingsList) =>
      _$this._pendingBookingsList = pendingBookingsList;

  DashboardStatsBuilder() {
    DashboardStats._defaults(this);
  }

  DashboardStatsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _todayBookings = $v.todayBookings;
      _todayPeople = $v.todayPeople;
      _pendingBookings = $v.pendingBookings;
      _monthlyConfirmed = $v.monthlyConfirmed;
      _monthlyCompleted = $v.monthlyCompleted;
      _monthlyCancelled = $v.monthlyCancelled;
      _monthlyNoShow = $v.monthlyNoShow;
      _activePromotions = $v.activePromotions;
      _averageRating = $v.averageRating;
      _completionRate = $v.completionRate;
      _cancellationRate = $v.cancellationRate;
      _noShowRate = $v.noShowRate;
      _todayBookingsList = $v.todayBookingsList?.toBuilder();
      _upcomingBookings = $v.upcomingBookings?.toBuilder();
      _pendingBookingsList = $v.pendingBookingsList?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DashboardStats other) {
    _$v = other as _$DashboardStats;
  }

  @override
  void update(void Function(DashboardStatsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DashboardStats build() => _build();

  _$DashboardStats _build() {
    _$DashboardStats _$result;
    try {
      _$result =
          _$v ??
          _$DashboardStats._(
            todayBookings: todayBookings,
            todayPeople: todayPeople,
            pendingBookings: pendingBookings,
            monthlyConfirmed: monthlyConfirmed,
            monthlyCompleted: monthlyCompleted,
            monthlyCancelled: monthlyCancelled,
            monthlyNoShow: monthlyNoShow,
            activePromotions: activePromotions,
            averageRating: averageRating,
            completionRate: completionRate,
            cancellationRate: cancellationRate,
            noShowRate: noShowRate,
            todayBookingsList: _todayBookingsList?.build(),
            upcomingBookings: _upcomingBookings?.build(),
            pendingBookingsList: _pendingBookingsList?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'todayBookingsList';
        _todayBookingsList?.build();
        _$failedField = 'upcomingBookings';
        _upcomingBookings?.build();
        _$failedField = 'pendingBookingsList';
        _pendingBookingsList?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'DashboardStats',
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
