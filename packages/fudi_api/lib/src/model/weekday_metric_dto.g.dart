// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weekday_metric_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WeekdayMetricDTO extends WeekdayMetricDTO {
  @override
  final int? dayOfWeek;
  @override
  final String? dayName;
  @override
  final int? bookings;
  @override
  final double? avgGuests;

  factory _$WeekdayMetricDTO([
    void Function(WeekdayMetricDTOBuilder)? updates,
  ]) => (WeekdayMetricDTOBuilder()..update(updates))._build();

  _$WeekdayMetricDTO._({
    this.dayOfWeek,
    this.dayName,
    this.bookings,
    this.avgGuests,
  }) : super._();
  @override
  WeekdayMetricDTO rebuild(void Function(WeekdayMetricDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeekdayMetricDTOBuilder toBuilder() =>
      WeekdayMetricDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeekdayMetricDTO &&
        dayOfWeek == other.dayOfWeek &&
        dayName == other.dayName &&
        bookings == other.bookings &&
        avgGuests == other.avgGuests;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dayOfWeek.hashCode);
    _$hash = $jc(_$hash, dayName.hashCode);
    _$hash = $jc(_$hash, bookings.hashCode);
    _$hash = $jc(_$hash, avgGuests.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WeekdayMetricDTO')
          ..add('dayOfWeek', dayOfWeek)
          ..add('dayName', dayName)
          ..add('bookings', bookings)
          ..add('avgGuests', avgGuests))
        .toString();
  }
}

class WeekdayMetricDTOBuilder
    implements Builder<WeekdayMetricDTO, WeekdayMetricDTOBuilder> {
  _$WeekdayMetricDTO? _$v;

  int? _dayOfWeek;
  int? get dayOfWeek => _$this._dayOfWeek;
  set dayOfWeek(int? dayOfWeek) => _$this._dayOfWeek = dayOfWeek;

  String? _dayName;
  String? get dayName => _$this._dayName;
  set dayName(String? dayName) => _$this._dayName = dayName;

  int? _bookings;
  int? get bookings => _$this._bookings;
  set bookings(int? bookings) => _$this._bookings = bookings;

  double? _avgGuests;
  double? get avgGuests => _$this._avgGuests;
  set avgGuests(double? avgGuests) => _$this._avgGuests = avgGuests;

  WeekdayMetricDTOBuilder() {
    WeekdayMetricDTO._defaults(this);
  }

  WeekdayMetricDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dayOfWeek = $v.dayOfWeek;
      _dayName = $v.dayName;
      _bookings = $v.bookings;
      _avgGuests = $v.avgGuests;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WeekdayMetricDTO other) {
    _$v = other as _$WeekdayMetricDTO;
  }

  @override
  void update(void Function(WeekdayMetricDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WeekdayMetricDTO build() => _build();

  _$WeekdayMetricDTO _build() {
    final _$result =
        _$v ??
        _$WeekdayMetricDTO._(
          dayOfWeek: dayOfWeek,
          dayName: dayName,
          bookings: bookings,
          avgGuests: avgGuests,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
