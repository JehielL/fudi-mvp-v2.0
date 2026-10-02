// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_slot_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TimeSlotDTOBookingModeEnum _$timeSlotDTOBookingModeEnum_CONFIRMED =
    const TimeSlotDTOBookingModeEnum._('CONFIRMED');
const TimeSlotDTOBookingModeEnum _$timeSlotDTOBookingModeEnum_WAITLIST =
    const TimeSlotDTOBookingModeEnum._('WAITLIST');
const TimeSlotDTOBookingModeEnum _$timeSlotDTOBookingModeEnum_FULL =
    const TimeSlotDTOBookingModeEnum._('FULL');
const TimeSlotDTOBookingModeEnum
_$timeSlotDTOBookingModeEnum_unknownDefaultOpenApi =
    const TimeSlotDTOBookingModeEnum._('unknownDefaultOpenApi');

TimeSlotDTOBookingModeEnum _$timeSlotDTOBookingModeEnumValueOf(String name) {
  switch (name) {
    case 'CONFIRMED':
      return _$timeSlotDTOBookingModeEnum_CONFIRMED;
    case 'WAITLIST':
      return _$timeSlotDTOBookingModeEnum_WAITLIST;
    case 'FULL':
      return _$timeSlotDTOBookingModeEnum_FULL;
    case 'unknownDefaultOpenApi':
      return _$timeSlotDTOBookingModeEnum_unknownDefaultOpenApi;
    default:
      return _$timeSlotDTOBookingModeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<TimeSlotDTOBookingModeEnum> _$timeSlotDTOBookingModeEnumValues =
    BuiltSet<TimeSlotDTOBookingModeEnum>(const <TimeSlotDTOBookingModeEnum>[
      _$timeSlotDTOBookingModeEnum_CONFIRMED,
      _$timeSlotDTOBookingModeEnum_WAITLIST,
      _$timeSlotDTOBookingModeEnum_FULL,
      _$timeSlotDTOBookingModeEnum_unknownDefaultOpenApi,
    ]);

Serializer<TimeSlotDTOBookingModeEnum> _$timeSlotDTOBookingModeEnumSerializer =
    _$TimeSlotDTOBookingModeEnumSerializer();

class _$TimeSlotDTOBookingModeEnumSerializer
    implements PrimitiveSerializer<TimeSlotDTOBookingModeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'CONFIRMED': 'CONFIRMED',
    'WAITLIST': 'WAITLIST',
    'FULL': 'FULL',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'CONFIRMED': 'CONFIRMED',
    'WAITLIST': 'WAITLIST',
    'FULL': 'FULL',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[TimeSlotDTOBookingModeEnum];
  @override
  final String wireName = 'TimeSlotDTOBookingModeEnum';

  @override
  Object serialize(
    Serializers serializers,
    TimeSlotDTOBookingModeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  TimeSlotDTOBookingModeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => TimeSlotDTOBookingModeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$TimeSlotDTO extends TimeSlotDTO {
  @override
  final String? time;
  @override
  final int? availableCapacity;
  @override
  final int? maxCapacity;
  @override
  final bool? isAvailable;
  @override
  final bool? waitlistAvailable;
  @override
  final TimeSlotDTOBookingModeEnum? bookingMode;
  @override
  final String? period;

  factory _$TimeSlotDTO([void Function(TimeSlotDTOBuilder)? updates]) =>
      (TimeSlotDTOBuilder()..update(updates))._build();

  _$TimeSlotDTO._({
    this.time,
    this.availableCapacity,
    this.maxCapacity,
    this.isAvailable,
    this.waitlistAvailable,
    this.bookingMode,
    this.period,
  }) : super._();
  @override
  TimeSlotDTO rebuild(void Function(TimeSlotDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TimeSlotDTOBuilder toBuilder() => TimeSlotDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TimeSlotDTO &&
        time == other.time &&
        availableCapacity == other.availableCapacity &&
        maxCapacity == other.maxCapacity &&
        isAvailable == other.isAvailable &&
        waitlistAvailable == other.waitlistAvailable &&
        bookingMode == other.bookingMode &&
        period == other.period;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, time.hashCode);
    _$hash = $jc(_$hash, availableCapacity.hashCode);
    _$hash = $jc(_$hash, maxCapacity.hashCode);
    _$hash = $jc(_$hash, isAvailable.hashCode);
    _$hash = $jc(_$hash, waitlistAvailable.hashCode);
    _$hash = $jc(_$hash, bookingMode.hashCode);
    _$hash = $jc(_$hash, period.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TimeSlotDTO')
          ..add('time', time)
          ..add('availableCapacity', availableCapacity)
          ..add('maxCapacity', maxCapacity)
          ..add('isAvailable', isAvailable)
          ..add('waitlistAvailable', waitlistAvailable)
          ..add('bookingMode', bookingMode)
          ..add('period', period))
        .toString();
  }
}

class TimeSlotDTOBuilder implements Builder<TimeSlotDTO, TimeSlotDTOBuilder> {
  _$TimeSlotDTO? _$v;

  String? _time;
  String? get time => _$this._time;
  set time(String? time) => _$this._time = time;

  int? _availableCapacity;
  int? get availableCapacity => _$this._availableCapacity;
  set availableCapacity(int? availableCapacity) =>
      _$this._availableCapacity = availableCapacity;

  int? _maxCapacity;
  int? get maxCapacity => _$this._maxCapacity;
  set maxCapacity(int? maxCapacity) => _$this._maxCapacity = maxCapacity;

  bool? _isAvailable;
  bool? get isAvailable => _$this._isAvailable;
  set isAvailable(bool? isAvailable) => _$this._isAvailable = isAvailable;

  bool? _waitlistAvailable;
  bool? get waitlistAvailable => _$this._waitlistAvailable;
  set waitlistAvailable(bool? waitlistAvailable) =>
      _$this._waitlistAvailable = waitlistAvailable;

  TimeSlotDTOBookingModeEnum? _bookingMode;
  TimeSlotDTOBookingModeEnum? get bookingMode => _$this._bookingMode;
  set bookingMode(TimeSlotDTOBookingModeEnum? bookingMode) =>
      _$this._bookingMode = bookingMode;

  String? _period;
  String? get period => _$this._period;
  set period(String? period) => _$this._period = period;

  TimeSlotDTOBuilder() {
    TimeSlotDTO._defaults(this);
  }

  TimeSlotDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _time = $v.time;
      _availableCapacity = $v.availableCapacity;
      _maxCapacity = $v.maxCapacity;
      _isAvailable = $v.isAvailable;
      _waitlistAvailable = $v.waitlistAvailable;
      _bookingMode = $v.bookingMode;
      _period = $v.period;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TimeSlotDTO other) {
    _$v = other as _$TimeSlotDTO;
  }

  @override
  void update(void Function(TimeSlotDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TimeSlotDTO build() => _build();

  _$TimeSlotDTO _build() {
    final _$result =
        _$v ??
        _$TimeSlotDTO._(
          time: time,
          availableCapacity: availableCapacity,
          maxCapacity: maxCapacity,
          isAvailable: isAvailable,
          waitlistAvailable: waitlistAvailable,
          bookingMode: bookingMode,
          period: period,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
