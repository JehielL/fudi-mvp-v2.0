// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_metric_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DailyMetricDTO extends DailyMetricDTO {
  @override
  final Date? date;
  @override
  final int? bookings;
  @override
  final int? guests;

  factory _$DailyMetricDTO([void Function(DailyMetricDTOBuilder)? updates]) =>
      (DailyMetricDTOBuilder()..update(updates))._build();

  _$DailyMetricDTO._({this.date, this.bookings, this.guests}) : super._();
  @override
  DailyMetricDTO rebuild(void Function(DailyMetricDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DailyMetricDTOBuilder toBuilder() => DailyMetricDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DailyMetricDTO &&
        date == other.date &&
        bookings == other.bookings &&
        guests == other.guests;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, bookings.hashCode);
    _$hash = $jc(_$hash, guests.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DailyMetricDTO')
          ..add('date', date)
          ..add('bookings', bookings)
          ..add('guests', guests))
        .toString();
  }
}

class DailyMetricDTOBuilder
    implements Builder<DailyMetricDTO, DailyMetricDTOBuilder> {
  _$DailyMetricDTO? _$v;

  Date? _date;
  Date? get date => _$this._date;
  set date(Date? date) => _$this._date = date;

  int? _bookings;
  int? get bookings => _$this._bookings;
  set bookings(int? bookings) => _$this._bookings = bookings;

  int? _guests;
  int? get guests => _$this._guests;
  set guests(int? guests) => _$this._guests = guests;

  DailyMetricDTOBuilder() {
    DailyMetricDTO._defaults(this);
  }

  DailyMetricDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _bookings = $v.bookings;
      _guests = $v.guests;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DailyMetricDTO other) {
    _$v = other as _$DailyMetricDTO;
  }

  @override
  void update(void Function(DailyMetricDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DailyMetricDTO build() => _build();

  _$DailyMetricDTO _build() {
    final _$result =
        _$v ??
        _$DailyMetricDTO._(date: date, bookings: bookings, guests: guests);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
