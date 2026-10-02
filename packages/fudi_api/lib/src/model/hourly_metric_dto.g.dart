// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hourly_metric_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HourlyMetricDTO extends HourlyMetricDTO {
  @override
  final int? hour;
  @override
  final int? bookings;
  @override
  final double? avgGuests;

  factory _$HourlyMetricDTO([void Function(HourlyMetricDTOBuilder)? updates]) =>
      (HourlyMetricDTOBuilder()..update(updates))._build();

  _$HourlyMetricDTO._({this.hour, this.bookings, this.avgGuests}) : super._();
  @override
  HourlyMetricDTO rebuild(void Function(HourlyMetricDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HourlyMetricDTOBuilder toBuilder() => HourlyMetricDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HourlyMetricDTO &&
        hour == other.hour &&
        bookings == other.bookings &&
        avgGuests == other.avgGuests;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, hour.hashCode);
    _$hash = $jc(_$hash, bookings.hashCode);
    _$hash = $jc(_$hash, avgGuests.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HourlyMetricDTO')
          ..add('hour', hour)
          ..add('bookings', bookings)
          ..add('avgGuests', avgGuests))
        .toString();
  }
}

class HourlyMetricDTOBuilder
    implements Builder<HourlyMetricDTO, HourlyMetricDTOBuilder> {
  _$HourlyMetricDTO? _$v;

  int? _hour;
  int? get hour => _$this._hour;
  set hour(int? hour) => _$this._hour = hour;

  int? _bookings;
  int? get bookings => _$this._bookings;
  set bookings(int? bookings) => _$this._bookings = bookings;

  double? _avgGuests;
  double? get avgGuests => _$this._avgGuests;
  set avgGuests(double? avgGuests) => _$this._avgGuests = avgGuests;

  HourlyMetricDTOBuilder() {
    HourlyMetricDTO._defaults(this);
  }

  HourlyMetricDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _hour = $v.hour;
      _bookings = $v.bookings;
      _avgGuests = $v.avgGuests;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HourlyMetricDTO other) {
    _$v = other as _$HourlyMetricDTO;
  }

  @override
  void update(void Function(HourlyMetricDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HourlyMetricDTO build() => _build();

  _$HourlyMetricDTO _build() {
    final _$result =
        _$v ??
        _$HourlyMetricDTO._(
          hour: hour,
          bookings: bookings,
          avgGuests: avgGuests,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
