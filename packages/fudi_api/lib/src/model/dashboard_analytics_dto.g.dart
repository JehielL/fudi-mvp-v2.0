// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_analytics_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DashboardAnalyticsDTO extends DashboardAnalyticsDTO {
  @override
  final PeriodDTO? period;
  @override
  final SummaryDTO? summary;
  @override
  final StatusMetricsDTO? statusBreakdown;
  @override
  final RatesDTO? rates;
  @override
  final TrendsDTO? trends;
  @override
  final InsightsDTO? insights;
  @override
  final BuiltMap<String, ComparisonDTO>? comparisons;

  factory _$DashboardAnalyticsDTO([
    void Function(DashboardAnalyticsDTOBuilder)? updates,
  ]) => (DashboardAnalyticsDTOBuilder()..update(updates))._build();

  _$DashboardAnalyticsDTO._({
    this.period,
    this.summary,
    this.statusBreakdown,
    this.rates,
    this.trends,
    this.insights,
    this.comparisons,
  }) : super._();
  @override
  DashboardAnalyticsDTO rebuild(
    void Function(DashboardAnalyticsDTOBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  DashboardAnalyticsDTOBuilder toBuilder() =>
      DashboardAnalyticsDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DashboardAnalyticsDTO &&
        period == other.period &&
        summary == other.summary &&
        statusBreakdown == other.statusBreakdown &&
        rates == other.rates &&
        trends == other.trends &&
        insights == other.insights &&
        comparisons == other.comparisons;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, period.hashCode);
    _$hash = $jc(_$hash, summary.hashCode);
    _$hash = $jc(_$hash, statusBreakdown.hashCode);
    _$hash = $jc(_$hash, rates.hashCode);
    _$hash = $jc(_$hash, trends.hashCode);
    _$hash = $jc(_$hash, insights.hashCode);
    _$hash = $jc(_$hash, comparisons.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DashboardAnalyticsDTO')
          ..add('period', period)
          ..add('summary', summary)
          ..add('statusBreakdown', statusBreakdown)
          ..add('rates', rates)
          ..add('trends', trends)
          ..add('insights', insights)
          ..add('comparisons', comparisons))
        .toString();
  }
}

class DashboardAnalyticsDTOBuilder
    implements Builder<DashboardAnalyticsDTO, DashboardAnalyticsDTOBuilder> {
  _$DashboardAnalyticsDTO? _$v;

  PeriodDTOBuilder? _period;
  PeriodDTOBuilder get period => _$this._period ??= PeriodDTOBuilder();
  set period(PeriodDTOBuilder? period) => _$this._period = period;

  SummaryDTOBuilder? _summary;
  SummaryDTOBuilder get summary => _$this._summary ??= SummaryDTOBuilder();
  set summary(SummaryDTOBuilder? summary) => _$this._summary = summary;

  StatusMetricsDTOBuilder? _statusBreakdown;
  StatusMetricsDTOBuilder get statusBreakdown =>
      _$this._statusBreakdown ??= StatusMetricsDTOBuilder();
  set statusBreakdown(StatusMetricsDTOBuilder? statusBreakdown) =>
      _$this._statusBreakdown = statusBreakdown;

  RatesDTOBuilder? _rates;
  RatesDTOBuilder get rates => _$this._rates ??= RatesDTOBuilder();
  set rates(RatesDTOBuilder? rates) => _$this._rates = rates;

  TrendsDTOBuilder? _trends;
  TrendsDTOBuilder get trends => _$this._trends ??= TrendsDTOBuilder();
  set trends(TrendsDTOBuilder? trends) => _$this._trends = trends;

  InsightsDTOBuilder? _insights;
  InsightsDTOBuilder get insights => _$this._insights ??= InsightsDTOBuilder();
  set insights(InsightsDTOBuilder? insights) => _$this._insights = insights;

  MapBuilder<String, ComparisonDTO>? _comparisons;
  MapBuilder<String, ComparisonDTO> get comparisons =>
      _$this._comparisons ??= MapBuilder<String, ComparisonDTO>();
  set comparisons(MapBuilder<String, ComparisonDTO>? comparisons) =>
      _$this._comparisons = comparisons;

  DashboardAnalyticsDTOBuilder() {
    DashboardAnalyticsDTO._defaults(this);
  }

  DashboardAnalyticsDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _period = $v.period?.toBuilder();
      _summary = $v.summary?.toBuilder();
      _statusBreakdown = $v.statusBreakdown?.toBuilder();
      _rates = $v.rates?.toBuilder();
      _trends = $v.trends?.toBuilder();
      _insights = $v.insights?.toBuilder();
      _comparisons = $v.comparisons?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DashboardAnalyticsDTO other) {
    _$v = other as _$DashboardAnalyticsDTO;
  }

  @override
  void update(void Function(DashboardAnalyticsDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DashboardAnalyticsDTO build() => _build();

  _$DashboardAnalyticsDTO _build() {
    _$DashboardAnalyticsDTO _$result;
    try {
      _$result =
          _$v ??
          _$DashboardAnalyticsDTO._(
            period: _period?.build(),
            summary: _summary?.build(),
            statusBreakdown: _statusBreakdown?.build(),
            rates: _rates?.build(),
            trends: _trends?.build(),
            insights: _insights?.build(),
            comparisons: _comparisons?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'period';
        _period?.build();
        _$failedField = 'summary';
        _summary?.build();
        _$failedField = 'statusBreakdown';
        _statusBreakdown?.build();
        _$failedField = 'rates';
        _rates?.build();
        _$failedField = 'trends';
        _trends?.build();
        _$failedField = 'insights';
        _insights?.build();
        _$failedField = 'comparisons';
        _comparisons?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'DashboardAnalyticsDTO',
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
