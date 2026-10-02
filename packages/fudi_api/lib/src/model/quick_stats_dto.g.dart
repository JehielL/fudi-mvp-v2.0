// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quick_stats_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QuickStatsDTO extends QuickStatsDTO {
  @override
  final int? todayBookings;
  @override
  final int? todayGuests;
  @override
  final int? weekBookings;
  @override
  final int? weekGuests;
  @override
  final int? monthBookings;
  @override
  final int? monthGuests;
  @override
  final int? pendingCount;

  factory _$QuickStatsDTO([void Function(QuickStatsDTOBuilder)? updates]) =>
      (QuickStatsDTOBuilder()..update(updates))._build();

  _$QuickStatsDTO._({
    this.todayBookings,
    this.todayGuests,
    this.weekBookings,
    this.weekGuests,
    this.monthBookings,
    this.monthGuests,
    this.pendingCount,
  }) : super._();
  @override
  QuickStatsDTO rebuild(void Function(QuickStatsDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuickStatsDTOBuilder toBuilder() => QuickStatsDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuickStatsDTO &&
        todayBookings == other.todayBookings &&
        todayGuests == other.todayGuests &&
        weekBookings == other.weekBookings &&
        weekGuests == other.weekGuests &&
        monthBookings == other.monthBookings &&
        monthGuests == other.monthGuests &&
        pendingCount == other.pendingCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, todayBookings.hashCode);
    _$hash = $jc(_$hash, todayGuests.hashCode);
    _$hash = $jc(_$hash, weekBookings.hashCode);
    _$hash = $jc(_$hash, weekGuests.hashCode);
    _$hash = $jc(_$hash, monthBookings.hashCode);
    _$hash = $jc(_$hash, monthGuests.hashCode);
    _$hash = $jc(_$hash, pendingCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'QuickStatsDTO')
          ..add('todayBookings', todayBookings)
          ..add('todayGuests', todayGuests)
          ..add('weekBookings', weekBookings)
          ..add('weekGuests', weekGuests)
          ..add('monthBookings', monthBookings)
          ..add('monthGuests', monthGuests)
          ..add('pendingCount', pendingCount))
        .toString();
  }
}

class QuickStatsDTOBuilder
    implements Builder<QuickStatsDTO, QuickStatsDTOBuilder> {
  _$QuickStatsDTO? _$v;

  int? _todayBookings;
  int? get todayBookings => _$this._todayBookings;
  set todayBookings(int? todayBookings) =>
      _$this._todayBookings = todayBookings;

  int? _todayGuests;
  int? get todayGuests => _$this._todayGuests;
  set todayGuests(int? todayGuests) => _$this._todayGuests = todayGuests;

  int? _weekBookings;
  int? get weekBookings => _$this._weekBookings;
  set weekBookings(int? weekBookings) => _$this._weekBookings = weekBookings;

  int? _weekGuests;
  int? get weekGuests => _$this._weekGuests;
  set weekGuests(int? weekGuests) => _$this._weekGuests = weekGuests;

  int? _monthBookings;
  int? get monthBookings => _$this._monthBookings;
  set monthBookings(int? monthBookings) =>
      _$this._monthBookings = monthBookings;

  int? _monthGuests;
  int? get monthGuests => _$this._monthGuests;
  set monthGuests(int? monthGuests) => _$this._monthGuests = monthGuests;

  int? _pendingCount;
  int? get pendingCount => _$this._pendingCount;
  set pendingCount(int? pendingCount) => _$this._pendingCount = pendingCount;

  QuickStatsDTOBuilder() {
    QuickStatsDTO._defaults(this);
  }

  QuickStatsDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _todayBookings = $v.todayBookings;
      _todayGuests = $v.todayGuests;
      _weekBookings = $v.weekBookings;
      _weekGuests = $v.weekGuests;
      _monthBookings = $v.monthBookings;
      _monthGuests = $v.monthGuests;
      _pendingCount = $v.pendingCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QuickStatsDTO other) {
    _$v = other as _$QuickStatsDTO;
  }

  @override
  void update(void Function(QuickStatsDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QuickStatsDTO build() => _build();

  _$QuickStatsDTO _build() {
    final _$result =
        _$v ??
        _$QuickStatsDTO._(
          todayBookings: todayBookings,
          todayGuests: todayGuests,
          weekBookings: weekBookings,
          weekGuests: weekGuests,
          monthBookings: monthBookings,
          monthGuests: monthGuests,
          pendingCount: pendingCount,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
