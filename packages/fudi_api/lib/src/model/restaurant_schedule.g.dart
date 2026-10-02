// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_schedule.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RestaurantScheduleDayOfWeekEnum _$restaurantScheduleDayOfWeekEnum_MONDAY =
    const RestaurantScheduleDayOfWeekEnum._('MONDAY');
const RestaurantScheduleDayOfWeekEnum
_$restaurantScheduleDayOfWeekEnum_TUESDAY =
    const RestaurantScheduleDayOfWeekEnum._('TUESDAY');
const RestaurantScheduleDayOfWeekEnum
_$restaurantScheduleDayOfWeekEnum_WEDNESDAY =
    const RestaurantScheduleDayOfWeekEnum._('WEDNESDAY');
const RestaurantScheduleDayOfWeekEnum
_$restaurantScheduleDayOfWeekEnum_THURSDAY =
    const RestaurantScheduleDayOfWeekEnum._('THURSDAY');
const RestaurantScheduleDayOfWeekEnum _$restaurantScheduleDayOfWeekEnum_FRIDAY =
    const RestaurantScheduleDayOfWeekEnum._('FRIDAY');
const RestaurantScheduleDayOfWeekEnum
_$restaurantScheduleDayOfWeekEnum_SATURDAY =
    const RestaurantScheduleDayOfWeekEnum._('SATURDAY');
const RestaurantScheduleDayOfWeekEnum _$restaurantScheduleDayOfWeekEnum_SUNDAY =
    const RestaurantScheduleDayOfWeekEnum._('SUNDAY');
const RestaurantScheduleDayOfWeekEnum
_$restaurantScheduleDayOfWeekEnum_unknownDefaultOpenApi =
    const RestaurantScheduleDayOfWeekEnum._('unknownDefaultOpenApi');

RestaurantScheduleDayOfWeekEnum _$restaurantScheduleDayOfWeekEnumValueOf(
  String name,
) {
  switch (name) {
    case 'MONDAY':
      return _$restaurantScheduleDayOfWeekEnum_MONDAY;
    case 'TUESDAY':
      return _$restaurantScheduleDayOfWeekEnum_TUESDAY;
    case 'WEDNESDAY':
      return _$restaurantScheduleDayOfWeekEnum_WEDNESDAY;
    case 'THURSDAY':
      return _$restaurantScheduleDayOfWeekEnum_THURSDAY;
    case 'FRIDAY':
      return _$restaurantScheduleDayOfWeekEnum_FRIDAY;
    case 'SATURDAY':
      return _$restaurantScheduleDayOfWeekEnum_SATURDAY;
    case 'SUNDAY':
      return _$restaurantScheduleDayOfWeekEnum_SUNDAY;
    case 'unknownDefaultOpenApi':
      return _$restaurantScheduleDayOfWeekEnum_unknownDefaultOpenApi;
    default:
      return _$restaurantScheduleDayOfWeekEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<RestaurantScheduleDayOfWeekEnum>
_$restaurantScheduleDayOfWeekEnumValues =
    BuiltSet<RestaurantScheduleDayOfWeekEnum>(
      const <RestaurantScheduleDayOfWeekEnum>[
        _$restaurantScheduleDayOfWeekEnum_MONDAY,
        _$restaurantScheduleDayOfWeekEnum_TUESDAY,
        _$restaurantScheduleDayOfWeekEnum_WEDNESDAY,
        _$restaurantScheduleDayOfWeekEnum_THURSDAY,
        _$restaurantScheduleDayOfWeekEnum_FRIDAY,
        _$restaurantScheduleDayOfWeekEnum_SATURDAY,
        _$restaurantScheduleDayOfWeekEnum_SUNDAY,
        _$restaurantScheduleDayOfWeekEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<RestaurantScheduleDayOfWeekEnum>
_$restaurantScheduleDayOfWeekEnumSerializer =
    _$RestaurantScheduleDayOfWeekEnumSerializer();

class _$RestaurantScheduleDayOfWeekEnumSerializer
    implements PrimitiveSerializer<RestaurantScheduleDayOfWeekEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'MONDAY': 'MONDAY',
    'TUESDAY': 'TUESDAY',
    'WEDNESDAY': 'WEDNESDAY',
    'THURSDAY': 'THURSDAY',
    'FRIDAY': 'FRIDAY',
    'SATURDAY': 'SATURDAY',
    'SUNDAY': 'SUNDAY',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'MONDAY': 'MONDAY',
    'TUESDAY': 'TUESDAY',
    'WEDNESDAY': 'WEDNESDAY',
    'THURSDAY': 'THURSDAY',
    'FRIDAY': 'FRIDAY',
    'SATURDAY': 'SATURDAY',
    'SUNDAY': 'SUNDAY',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[RestaurantScheduleDayOfWeekEnum];
  @override
  final String wireName = 'RestaurantScheduleDayOfWeekEnum';

  @override
  Object serialize(
    Serializers serializers,
    RestaurantScheduleDayOfWeekEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  RestaurantScheduleDayOfWeekEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => RestaurantScheduleDayOfWeekEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$RestaurantSchedule extends RestaurantSchedule {
  @override
  final int? id;
  @override
  final int? restaurantId;
  @override
  final RestaurantScheduleDayOfWeekEnum? dayOfWeek;
  @override
  final bool? isOpen;
  @override
  final String? openTime;
  @override
  final String? closeTime;
  @override
  final String? lunchStart;
  @override
  final String? lunchEnd;
  @override
  final String? dinnerStart;
  @override
  final String? dinnerEnd;
  @override
  final int? maxCapacity;
  @override
  final int? maxCapacityPerSlot;
  @override
  final int? defaultBookingDurationMinutes;
  @override
  final int? slotIntervalMinutes;
  @override
  final int? minAdvanceHours;
  @override
  final int? maxAdvanceDays;
  @override
  final bool? acceptsOnlineBookings;
  @override
  final String? notes;

  factory _$RestaurantSchedule([
    void Function(RestaurantScheduleBuilder)? updates,
  ]) => (RestaurantScheduleBuilder()..update(updates))._build();

  _$RestaurantSchedule._({
    this.id,
    this.restaurantId,
    this.dayOfWeek,
    this.isOpen,
    this.openTime,
    this.closeTime,
    this.lunchStart,
    this.lunchEnd,
    this.dinnerStart,
    this.dinnerEnd,
    this.maxCapacity,
    this.maxCapacityPerSlot,
    this.defaultBookingDurationMinutes,
    this.slotIntervalMinutes,
    this.minAdvanceHours,
    this.maxAdvanceDays,
    this.acceptsOnlineBookings,
    this.notes,
  }) : super._();
  @override
  RestaurantSchedule rebuild(
    void Function(RestaurantScheduleBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RestaurantScheduleBuilder toBuilder() =>
      RestaurantScheduleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestaurantSchedule &&
        id == other.id &&
        restaurantId == other.restaurantId &&
        dayOfWeek == other.dayOfWeek &&
        isOpen == other.isOpen &&
        openTime == other.openTime &&
        closeTime == other.closeTime &&
        lunchStart == other.lunchStart &&
        lunchEnd == other.lunchEnd &&
        dinnerStart == other.dinnerStart &&
        dinnerEnd == other.dinnerEnd &&
        maxCapacity == other.maxCapacity &&
        maxCapacityPerSlot == other.maxCapacityPerSlot &&
        defaultBookingDurationMinutes == other.defaultBookingDurationMinutes &&
        slotIntervalMinutes == other.slotIntervalMinutes &&
        minAdvanceHours == other.minAdvanceHours &&
        maxAdvanceDays == other.maxAdvanceDays &&
        acceptsOnlineBookings == other.acceptsOnlineBookings &&
        notes == other.notes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, restaurantId.hashCode);
    _$hash = $jc(_$hash, dayOfWeek.hashCode);
    _$hash = $jc(_$hash, isOpen.hashCode);
    _$hash = $jc(_$hash, openTime.hashCode);
    _$hash = $jc(_$hash, closeTime.hashCode);
    _$hash = $jc(_$hash, lunchStart.hashCode);
    _$hash = $jc(_$hash, lunchEnd.hashCode);
    _$hash = $jc(_$hash, dinnerStart.hashCode);
    _$hash = $jc(_$hash, dinnerEnd.hashCode);
    _$hash = $jc(_$hash, maxCapacity.hashCode);
    _$hash = $jc(_$hash, maxCapacityPerSlot.hashCode);
    _$hash = $jc(_$hash, defaultBookingDurationMinutes.hashCode);
    _$hash = $jc(_$hash, slotIntervalMinutes.hashCode);
    _$hash = $jc(_$hash, minAdvanceHours.hashCode);
    _$hash = $jc(_$hash, maxAdvanceDays.hashCode);
    _$hash = $jc(_$hash, acceptsOnlineBookings.hashCode);
    _$hash = $jc(_$hash, notes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RestaurantSchedule')
          ..add('id', id)
          ..add('restaurantId', restaurantId)
          ..add('dayOfWeek', dayOfWeek)
          ..add('isOpen', isOpen)
          ..add('openTime', openTime)
          ..add('closeTime', closeTime)
          ..add('lunchStart', lunchStart)
          ..add('lunchEnd', lunchEnd)
          ..add('dinnerStart', dinnerStart)
          ..add('dinnerEnd', dinnerEnd)
          ..add('maxCapacity', maxCapacity)
          ..add('maxCapacityPerSlot', maxCapacityPerSlot)
          ..add('defaultBookingDurationMinutes', defaultBookingDurationMinutes)
          ..add('slotIntervalMinutes', slotIntervalMinutes)
          ..add('minAdvanceHours', minAdvanceHours)
          ..add('maxAdvanceDays', maxAdvanceDays)
          ..add('acceptsOnlineBookings', acceptsOnlineBookings)
          ..add('notes', notes))
        .toString();
  }
}

class RestaurantScheduleBuilder
    implements Builder<RestaurantSchedule, RestaurantScheduleBuilder> {
  _$RestaurantSchedule? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _restaurantId;
  int? get restaurantId => _$this._restaurantId;
  set restaurantId(int? restaurantId) => _$this._restaurantId = restaurantId;

  RestaurantScheduleDayOfWeekEnum? _dayOfWeek;
  RestaurantScheduleDayOfWeekEnum? get dayOfWeek => _$this._dayOfWeek;
  set dayOfWeek(RestaurantScheduleDayOfWeekEnum? dayOfWeek) =>
      _$this._dayOfWeek = dayOfWeek;

  bool? _isOpen;
  bool? get isOpen => _$this._isOpen;
  set isOpen(bool? isOpen) => _$this._isOpen = isOpen;

  String? _openTime;
  String? get openTime => _$this._openTime;
  set openTime(String? openTime) => _$this._openTime = openTime;

  String? _closeTime;
  String? get closeTime => _$this._closeTime;
  set closeTime(String? closeTime) => _$this._closeTime = closeTime;

  String? _lunchStart;
  String? get lunchStart => _$this._lunchStart;
  set lunchStart(String? lunchStart) => _$this._lunchStart = lunchStart;

  String? _lunchEnd;
  String? get lunchEnd => _$this._lunchEnd;
  set lunchEnd(String? lunchEnd) => _$this._lunchEnd = lunchEnd;

  String? _dinnerStart;
  String? get dinnerStart => _$this._dinnerStart;
  set dinnerStart(String? dinnerStart) => _$this._dinnerStart = dinnerStart;

  String? _dinnerEnd;
  String? get dinnerEnd => _$this._dinnerEnd;
  set dinnerEnd(String? dinnerEnd) => _$this._dinnerEnd = dinnerEnd;

  int? _maxCapacity;
  int? get maxCapacity => _$this._maxCapacity;
  set maxCapacity(int? maxCapacity) => _$this._maxCapacity = maxCapacity;

  int? _maxCapacityPerSlot;
  int? get maxCapacityPerSlot => _$this._maxCapacityPerSlot;
  set maxCapacityPerSlot(int? maxCapacityPerSlot) =>
      _$this._maxCapacityPerSlot = maxCapacityPerSlot;

  int? _defaultBookingDurationMinutes;
  int? get defaultBookingDurationMinutes =>
      _$this._defaultBookingDurationMinutes;
  set defaultBookingDurationMinutes(int? defaultBookingDurationMinutes) =>
      _$this._defaultBookingDurationMinutes = defaultBookingDurationMinutes;

  int? _slotIntervalMinutes;
  int? get slotIntervalMinutes => _$this._slotIntervalMinutes;
  set slotIntervalMinutes(int? slotIntervalMinutes) =>
      _$this._slotIntervalMinutes = slotIntervalMinutes;

  int? _minAdvanceHours;
  int? get minAdvanceHours => _$this._minAdvanceHours;
  set minAdvanceHours(int? minAdvanceHours) =>
      _$this._minAdvanceHours = minAdvanceHours;

  int? _maxAdvanceDays;
  int? get maxAdvanceDays => _$this._maxAdvanceDays;
  set maxAdvanceDays(int? maxAdvanceDays) =>
      _$this._maxAdvanceDays = maxAdvanceDays;

  bool? _acceptsOnlineBookings;
  bool? get acceptsOnlineBookings => _$this._acceptsOnlineBookings;
  set acceptsOnlineBookings(bool? acceptsOnlineBookings) =>
      _$this._acceptsOnlineBookings = acceptsOnlineBookings;

  String? _notes;
  String? get notes => _$this._notes;
  set notes(String? notes) => _$this._notes = notes;

  RestaurantScheduleBuilder() {
    RestaurantSchedule._defaults(this);
  }

  RestaurantScheduleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _restaurantId = $v.restaurantId;
      _dayOfWeek = $v.dayOfWeek;
      _isOpen = $v.isOpen;
      _openTime = $v.openTime;
      _closeTime = $v.closeTime;
      _lunchStart = $v.lunchStart;
      _lunchEnd = $v.lunchEnd;
      _dinnerStart = $v.dinnerStart;
      _dinnerEnd = $v.dinnerEnd;
      _maxCapacity = $v.maxCapacity;
      _maxCapacityPerSlot = $v.maxCapacityPerSlot;
      _defaultBookingDurationMinutes = $v.defaultBookingDurationMinutes;
      _slotIntervalMinutes = $v.slotIntervalMinutes;
      _minAdvanceHours = $v.minAdvanceHours;
      _maxAdvanceDays = $v.maxAdvanceDays;
      _acceptsOnlineBookings = $v.acceptsOnlineBookings;
      _notes = $v.notes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestaurantSchedule other) {
    _$v = other as _$RestaurantSchedule;
  }

  @override
  void update(void Function(RestaurantScheduleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RestaurantSchedule build() => _build();

  _$RestaurantSchedule _build() {
    final _$result =
        _$v ??
        _$RestaurantSchedule._(
          id: id,
          restaurantId: restaurantId,
          dayOfWeek: dayOfWeek,
          isOpen: isOpen,
          openTime: openTime,
          closeTime: closeTime,
          lunchStart: lunchStart,
          lunchEnd: lunchEnd,
          dinnerStart: dinnerStart,
          dinnerEnd: dinnerEnd,
          maxCapacity: maxCapacity,
          maxCapacityPerSlot: maxCapacityPerSlot,
          defaultBookingDurationMinutes: defaultBookingDurationMinutes,
          slotIntervalMinutes: slotIntervalMinutes,
          minAdvanceHours: minAdvanceHours,
          maxAdvanceDays: maxAdvanceDays,
          acceptsOnlineBookings: acceptsOnlineBookings,
          notes: notes,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
