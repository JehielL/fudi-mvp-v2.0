// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'availability_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AvailabilityResponse extends AvailabilityResponse {
  @override
  final int? restaurantId;
  @override
  final Date? date;
  @override
  final bool? isOpen;
  @override
  final String? closedReason;
  @override
  final DateTime? minimumBookableAt;
  @override
  final DateTime? evaluatedAtRestaurant;
  @override
  final String? restaurantTimeZone;
  @override
  final BuiltList<TimeSlotDTO>? availableSlots;

  factory _$AvailabilityResponse([
    void Function(AvailabilityResponseBuilder)? updates,
  ]) => (AvailabilityResponseBuilder()..update(updates))._build();

  _$AvailabilityResponse._({
    this.restaurantId,
    this.date,
    this.isOpen,
    this.closedReason,
    this.minimumBookableAt,
    this.evaluatedAtRestaurant,
    this.restaurantTimeZone,
    this.availableSlots,
  }) : super._();
  @override
  AvailabilityResponse rebuild(
    void Function(AvailabilityResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AvailabilityResponseBuilder toBuilder() =>
      AvailabilityResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AvailabilityResponse &&
        restaurantId == other.restaurantId &&
        date == other.date &&
        isOpen == other.isOpen &&
        closedReason == other.closedReason &&
        minimumBookableAt == other.minimumBookableAt &&
        evaluatedAtRestaurant == other.evaluatedAtRestaurant &&
        restaurantTimeZone == other.restaurantTimeZone &&
        availableSlots == other.availableSlots;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, restaurantId.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, isOpen.hashCode);
    _$hash = $jc(_$hash, closedReason.hashCode);
    _$hash = $jc(_$hash, minimumBookableAt.hashCode);
    _$hash = $jc(_$hash, evaluatedAtRestaurant.hashCode);
    _$hash = $jc(_$hash, restaurantTimeZone.hashCode);
    _$hash = $jc(_$hash, availableSlots.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AvailabilityResponse')
          ..add('restaurantId', restaurantId)
          ..add('date', date)
          ..add('isOpen', isOpen)
          ..add('closedReason', closedReason)
          ..add('minimumBookableAt', minimumBookableAt)
          ..add('evaluatedAtRestaurant', evaluatedAtRestaurant)
          ..add('restaurantTimeZone', restaurantTimeZone)
          ..add('availableSlots', availableSlots))
        .toString();
  }
}

class AvailabilityResponseBuilder
    implements Builder<AvailabilityResponse, AvailabilityResponseBuilder> {
  _$AvailabilityResponse? _$v;

  int? _restaurantId;
  int? get restaurantId => _$this._restaurantId;
  set restaurantId(int? restaurantId) => _$this._restaurantId = restaurantId;

  Date? _date;
  Date? get date => _$this._date;
  set date(Date? date) => _$this._date = date;

  bool? _isOpen;
  bool? get isOpen => _$this._isOpen;
  set isOpen(bool? isOpen) => _$this._isOpen = isOpen;

  String? _closedReason;
  String? get closedReason => _$this._closedReason;
  set closedReason(String? closedReason) => _$this._closedReason = closedReason;

  DateTime? _minimumBookableAt;
  DateTime? get minimumBookableAt => _$this._minimumBookableAt;
  set minimumBookableAt(DateTime? minimumBookableAt) =>
      _$this._minimumBookableAt = minimumBookableAt;

  DateTime? _evaluatedAtRestaurant;
  DateTime? get evaluatedAtRestaurant => _$this._evaluatedAtRestaurant;
  set evaluatedAtRestaurant(DateTime? evaluatedAtRestaurant) =>
      _$this._evaluatedAtRestaurant = evaluatedAtRestaurant;

  String? _restaurantTimeZone;
  String? get restaurantTimeZone => _$this._restaurantTimeZone;
  set restaurantTimeZone(String? restaurantTimeZone) =>
      _$this._restaurantTimeZone = restaurantTimeZone;

  ListBuilder<TimeSlotDTO>? _availableSlots;
  ListBuilder<TimeSlotDTO> get availableSlots =>
      _$this._availableSlots ??= ListBuilder<TimeSlotDTO>();
  set availableSlots(ListBuilder<TimeSlotDTO>? availableSlots) =>
      _$this._availableSlots = availableSlots;

  AvailabilityResponseBuilder() {
    AvailabilityResponse._defaults(this);
  }

  AvailabilityResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _restaurantId = $v.restaurantId;
      _date = $v.date;
      _isOpen = $v.isOpen;
      _closedReason = $v.closedReason;
      _minimumBookableAt = $v.minimumBookableAt;
      _evaluatedAtRestaurant = $v.evaluatedAtRestaurant;
      _restaurantTimeZone = $v.restaurantTimeZone;
      _availableSlots = $v.availableSlots?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AvailabilityResponse other) {
    _$v = other as _$AvailabilityResponse;
  }

  @override
  void update(void Function(AvailabilityResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AvailabilityResponse build() => _build();

  _$AvailabilityResponse _build() {
    _$AvailabilityResponse _$result;
    try {
      _$result =
          _$v ??
          _$AvailabilityResponse._(
            restaurantId: restaurantId,
            date: date,
            isOpen: isOpen,
            closedReason: closedReason,
            minimumBookableAt: minimumBookableAt,
            evaluatedAtRestaurant: evaluatedAtRestaurant,
            restaurantTimeZone: restaurantTimeZone,
            availableSlots: _availableSlots?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'availableSlots';
        _availableSlots?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AvailabilityResponse',
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
