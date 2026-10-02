// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summary_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SummaryDTO extends SummaryDTO {
  @override
  final int? totalBookings;
  @override
  final int? confirmedBookings;
  @override
  final int? cancelledBookings;
  @override
  final int? noShowBookings;
  @override
  final int? totalGuests;
  @override
  final double? avgPartySize;

  factory _$SummaryDTO([void Function(SummaryDTOBuilder)? updates]) =>
      (SummaryDTOBuilder()..update(updates))._build();

  _$SummaryDTO._({
    this.totalBookings,
    this.confirmedBookings,
    this.cancelledBookings,
    this.noShowBookings,
    this.totalGuests,
    this.avgPartySize,
  }) : super._();
  @override
  SummaryDTO rebuild(void Function(SummaryDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SummaryDTOBuilder toBuilder() => SummaryDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SummaryDTO &&
        totalBookings == other.totalBookings &&
        confirmedBookings == other.confirmedBookings &&
        cancelledBookings == other.cancelledBookings &&
        noShowBookings == other.noShowBookings &&
        totalGuests == other.totalGuests &&
        avgPartySize == other.avgPartySize;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, totalBookings.hashCode);
    _$hash = $jc(_$hash, confirmedBookings.hashCode);
    _$hash = $jc(_$hash, cancelledBookings.hashCode);
    _$hash = $jc(_$hash, noShowBookings.hashCode);
    _$hash = $jc(_$hash, totalGuests.hashCode);
    _$hash = $jc(_$hash, avgPartySize.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SummaryDTO')
          ..add('totalBookings', totalBookings)
          ..add('confirmedBookings', confirmedBookings)
          ..add('cancelledBookings', cancelledBookings)
          ..add('noShowBookings', noShowBookings)
          ..add('totalGuests', totalGuests)
          ..add('avgPartySize', avgPartySize))
        .toString();
  }
}

class SummaryDTOBuilder implements Builder<SummaryDTO, SummaryDTOBuilder> {
  _$SummaryDTO? _$v;

  int? _totalBookings;
  int? get totalBookings => _$this._totalBookings;
  set totalBookings(int? totalBookings) =>
      _$this._totalBookings = totalBookings;

  int? _confirmedBookings;
  int? get confirmedBookings => _$this._confirmedBookings;
  set confirmedBookings(int? confirmedBookings) =>
      _$this._confirmedBookings = confirmedBookings;

  int? _cancelledBookings;
  int? get cancelledBookings => _$this._cancelledBookings;
  set cancelledBookings(int? cancelledBookings) =>
      _$this._cancelledBookings = cancelledBookings;

  int? _noShowBookings;
  int? get noShowBookings => _$this._noShowBookings;
  set noShowBookings(int? noShowBookings) =>
      _$this._noShowBookings = noShowBookings;

  int? _totalGuests;
  int? get totalGuests => _$this._totalGuests;
  set totalGuests(int? totalGuests) => _$this._totalGuests = totalGuests;

  double? _avgPartySize;
  double? get avgPartySize => _$this._avgPartySize;
  set avgPartySize(double? avgPartySize) => _$this._avgPartySize = avgPartySize;

  SummaryDTOBuilder() {
    SummaryDTO._defaults(this);
  }

  SummaryDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _totalBookings = $v.totalBookings;
      _confirmedBookings = $v.confirmedBookings;
      _cancelledBookings = $v.cancelledBookings;
      _noShowBookings = $v.noShowBookings;
      _totalGuests = $v.totalGuests;
      _avgPartySize = $v.avgPartySize;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SummaryDTO other) {
    _$v = other as _$SummaryDTO;
  }

  @override
  void update(void Function(SummaryDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SummaryDTO build() => _build();

  _$SummaryDTO _build() {
    final _$result =
        _$v ??
        _$SummaryDTO._(
          totalBookings: totalBookings,
          confirmedBookings: confirmedBookings,
          cancelledBookings: cancelledBookings,
          noShowBookings: noShowBookings,
          totalGuests: totalGuests,
          avgPartySize: avgPartySize,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
