// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rates_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RatesDTO extends RatesDTO {
  @override
  final double? confirmationRate;
  @override
  final double? cancellationRate;
  @override
  final double? noShowRate;
  @override
  final double? completionRate;

  factory _$RatesDTO([void Function(RatesDTOBuilder)? updates]) =>
      (RatesDTOBuilder()..update(updates))._build();

  _$RatesDTO._({
    this.confirmationRate,
    this.cancellationRate,
    this.noShowRate,
    this.completionRate,
  }) : super._();
  @override
  RatesDTO rebuild(void Function(RatesDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RatesDTOBuilder toBuilder() => RatesDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RatesDTO &&
        confirmationRate == other.confirmationRate &&
        cancellationRate == other.cancellationRate &&
        noShowRate == other.noShowRate &&
        completionRate == other.completionRate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, confirmationRate.hashCode);
    _$hash = $jc(_$hash, cancellationRate.hashCode);
    _$hash = $jc(_$hash, noShowRate.hashCode);
    _$hash = $jc(_$hash, completionRate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RatesDTO')
          ..add('confirmationRate', confirmationRate)
          ..add('cancellationRate', cancellationRate)
          ..add('noShowRate', noShowRate)
          ..add('completionRate', completionRate))
        .toString();
  }
}

class RatesDTOBuilder implements Builder<RatesDTO, RatesDTOBuilder> {
  _$RatesDTO? _$v;

  double? _confirmationRate;
  double? get confirmationRate => _$this._confirmationRate;
  set confirmationRate(double? confirmationRate) =>
      _$this._confirmationRate = confirmationRate;

  double? _cancellationRate;
  double? get cancellationRate => _$this._cancellationRate;
  set cancellationRate(double? cancellationRate) =>
      _$this._cancellationRate = cancellationRate;

  double? _noShowRate;
  double? get noShowRate => _$this._noShowRate;
  set noShowRate(double? noShowRate) => _$this._noShowRate = noShowRate;

  double? _completionRate;
  double? get completionRate => _$this._completionRate;
  set completionRate(double? completionRate) =>
      _$this._completionRate = completionRate;

  RatesDTOBuilder() {
    RatesDTO._defaults(this);
  }

  RatesDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _confirmationRate = $v.confirmationRate;
      _cancellationRate = $v.cancellationRate;
      _noShowRate = $v.noShowRate;
      _completionRate = $v.completionRate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RatesDTO other) {
    _$v = other as _$RatesDTO;
  }

  @override
  void update(void Function(RatesDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RatesDTO build() => _build();

  _$RatesDTO _build() {
    final _$result =
        _$v ??
        _$RatesDTO._(
          confirmationRate: confirmationRate,
          cancellationRate: cancellationRate,
          noShowRate: noShowRate,
          completionRate: completionRate,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
