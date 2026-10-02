// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'period_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PeriodDTO extends PeriodDTO {
  @override
  final Date? startDate;
  @override
  final Date? endDate;
  @override
  final String? periodName;

  factory _$PeriodDTO([void Function(PeriodDTOBuilder)? updates]) =>
      (PeriodDTOBuilder()..update(updates))._build();

  _$PeriodDTO._({this.startDate, this.endDate, this.periodName}) : super._();
  @override
  PeriodDTO rebuild(void Function(PeriodDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PeriodDTOBuilder toBuilder() => PeriodDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PeriodDTO &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        periodName == other.periodName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, startDate.hashCode);
    _$hash = $jc(_$hash, endDate.hashCode);
    _$hash = $jc(_$hash, periodName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PeriodDTO')
          ..add('startDate', startDate)
          ..add('endDate', endDate)
          ..add('periodName', periodName))
        .toString();
  }
}

class PeriodDTOBuilder implements Builder<PeriodDTO, PeriodDTOBuilder> {
  _$PeriodDTO? _$v;

  Date? _startDate;
  Date? get startDate => _$this._startDate;
  set startDate(Date? startDate) => _$this._startDate = startDate;

  Date? _endDate;
  Date? get endDate => _$this._endDate;
  set endDate(Date? endDate) => _$this._endDate = endDate;

  String? _periodName;
  String? get periodName => _$this._periodName;
  set periodName(String? periodName) => _$this._periodName = periodName;

  PeriodDTOBuilder() {
    PeriodDTO._defaults(this);
  }

  PeriodDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _startDate = $v.startDate;
      _endDate = $v.endDate;
      _periodName = $v.periodName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PeriodDTO other) {
    _$v = other as _$PeriodDTO;
  }

  @override
  void update(void Function(PeriodDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PeriodDTO build() => _build();

  _$PeriodDTO _build() {
    final _$result =
        _$v ??
        _$PeriodDTO._(
          startDate: startDate,
          endDate: endDate,
          periodName: periodName,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
