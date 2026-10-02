// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'insights_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InsightsDTO extends InsightsDTO {
  @override
  final int? peakHour;
  @override
  final String? peakDay;
  @override
  final double? avgLeadTimeDays;
  @override
  final double? returningCustomerRate;

  factory _$InsightsDTO([void Function(InsightsDTOBuilder)? updates]) =>
      (InsightsDTOBuilder()..update(updates))._build();

  _$InsightsDTO._({
    this.peakHour,
    this.peakDay,
    this.avgLeadTimeDays,
    this.returningCustomerRate,
  }) : super._();
  @override
  InsightsDTO rebuild(void Function(InsightsDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InsightsDTOBuilder toBuilder() => InsightsDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InsightsDTO &&
        peakHour == other.peakHour &&
        peakDay == other.peakDay &&
        avgLeadTimeDays == other.avgLeadTimeDays &&
        returningCustomerRate == other.returningCustomerRate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, peakHour.hashCode);
    _$hash = $jc(_$hash, peakDay.hashCode);
    _$hash = $jc(_$hash, avgLeadTimeDays.hashCode);
    _$hash = $jc(_$hash, returningCustomerRate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InsightsDTO')
          ..add('peakHour', peakHour)
          ..add('peakDay', peakDay)
          ..add('avgLeadTimeDays', avgLeadTimeDays)
          ..add('returningCustomerRate', returningCustomerRate))
        .toString();
  }
}

class InsightsDTOBuilder implements Builder<InsightsDTO, InsightsDTOBuilder> {
  _$InsightsDTO? _$v;

  int? _peakHour;
  int? get peakHour => _$this._peakHour;
  set peakHour(int? peakHour) => _$this._peakHour = peakHour;

  String? _peakDay;
  String? get peakDay => _$this._peakDay;
  set peakDay(String? peakDay) => _$this._peakDay = peakDay;

  double? _avgLeadTimeDays;
  double? get avgLeadTimeDays => _$this._avgLeadTimeDays;
  set avgLeadTimeDays(double? avgLeadTimeDays) =>
      _$this._avgLeadTimeDays = avgLeadTimeDays;

  double? _returningCustomerRate;
  double? get returningCustomerRate => _$this._returningCustomerRate;
  set returningCustomerRate(double? returningCustomerRate) =>
      _$this._returningCustomerRate = returningCustomerRate;

  InsightsDTOBuilder() {
    InsightsDTO._defaults(this);
  }

  InsightsDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _peakHour = $v.peakHour;
      _peakDay = $v.peakDay;
      _avgLeadTimeDays = $v.avgLeadTimeDays;
      _returningCustomerRate = $v.returningCustomerRate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InsightsDTO other) {
    _$v = other as _$InsightsDTO;
  }

  @override
  void update(void Function(InsightsDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InsightsDTO build() => _build();

  _$InsightsDTO _build() {
    final _$result =
        _$v ??
        _$InsightsDTO._(
          peakHour: peakHour,
          peakDay: peakDay,
          avgLeadTimeDays: avgLeadTimeDays,
          returningCustomerRate: returningCustomerRate,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
