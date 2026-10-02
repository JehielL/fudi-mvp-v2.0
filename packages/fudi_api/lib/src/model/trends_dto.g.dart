// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trends_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TrendsDTO extends TrendsDTO {
  @override
  final BuiltList<DailyMetricDTO>? dailyTrend;
  @override
  final BuiltList<HourlyMetricDTO>? hourlyDistribution;
  @override
  final BuiltList<WeekdayMetricDTO>? weekdayDistribution;

  factory _$TrendsDTO([void Function(TrendsDTOBuilder)? updates]) =>
      (TrendsDTOBuilder()..update(updates))._build();

  _$TrendsDTO._({
    this.dailyTrend,
    this.hourlyDistribution,
    this.weekdayDistribution,
  }) : super._();
  @override
  TrendsDTO rebuild(void Function(TrendsDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrendsDTOBuilder toBuilder() => TrendsDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrendsDTO &&
        dailyTrend == other.dailyTrend &&
        hourlyDistribution == other.hourlyDistribution &&
        weekdayDistribution == other.weekdayDistribution;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dailyTrend.hashCode);
    _$hash = $jc(_$hash, hourlyDistribution.hashCode);
    _$hash = $jc(_$hash, weekdayDistribution.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TrendsDTO')
          ..add('dailyTrend', dailyTrend)
          ..add('hourlyDistribution', hourlyDistribution)
          ..add('weekdayDistribution', weekdayDistribution))
        .toString();
  }
}

class TrendsDTOBuilder implements Builder<TrendsDTO, TrendsDTOBuilder> {
  _$TrendsDTO? _$v;

  ListBuilder<DailyMetricDTO>? _dailyTrend;
  ListBuilder<DailyMetricDTO> get dailyTrend =>
      _$this._dailyTrend ??= ListBuilder<DailyMetricDTO>();
  set dailyTrend(ListBuilder<DailyMetricDTO>? dailyTrend) =>
      _$this._dailyTrend = dailyTrend;

  ListBuilder<HourlyMetricDTO>? _hourlyDistribution;
  ListBuilder<HourlyMetricDTO> get hourlyDistribution =>
      _$this._hourlyDistribution ??= ListBuilder<HourlyMetricDTO>();
  set hourlyDistribution(ListBuilder<HourlyMetricDTO>? hourlyDistribution) =>
      _$this._hourlyDistribution = hourlyDistribution;

  ListBuilder<WeekdayMetricDTO>? _weekdayDistribution;
  ListBuilder<WeekdayMetricDTO> get weekdayDistribution =>
      _$this._weekdayDistribution ??= ListBuilder<WeekdayMetricDTO>();
  set weekdayDistribution(ListBuilder<WeekdayMetricDTO>? weekdayDistribution) =>
      _$this._weekdayDistribution = weekdayDistribution;

  TrendsDTOBuilder() {
    TrendsDTO._defaults(this);
  }

  TrendsDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dailyTrend = $v.dailyTrend?.toBuilder();
      _hourlyDistribution = $v.hourlyDistribution?.toBuilder();
      _weekdayDistribution = $v.weekdayDistribution?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrendsDTO other) {
    _$v = other as _$TrendsDTO;
  }

  @override
  void update(void Function(TrendsDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TrendsDTO build() => _build();

  _$TrendsDTO _build() {
    _$TrendsDTO _$result;
    try {
      _$result =
          _$v ??
          _$TrendsDTO._(
            dailyTrend: _dailyTrend?.build(),
            hourlyDistribution: _hourlyDistribution?.build(),
            weekdayDistribution: _weekdayDistribution?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dailyTrend';
        _dailyTrend?.build();
        _$failedField = 'hourlyDistribution';
        _hourlyDistribution?.build();
        _$failedField = 'weekdayDistribution';
        _weekdayDistribution?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'TrendsDTO',
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
