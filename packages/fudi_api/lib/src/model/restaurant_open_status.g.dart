// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_open_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RestaurantOpenStatusStatusSourceEnum
_$restaurantOpenStatusStatusSourceEnum_CLOSED_DATE =
    const RestaurantOpenStatusStatusSourceEnum._('CLOSED_DATE');
const RestaurantOpenStatusStatusSourceEnum
_$restaurantOpenStatusStatusSourceEnum_WEEKLY_SCHEDULE =
    const RestaurantOpenStatusStatusSourceEnum._('WEEKLY_SCHEDULE');
const RestaurantOpenStatusStatusSourceEnum
_$restaurantOpenStatusStatusSourceEnum_GENERAL_HOURS =
    const RestaurantOpenStatusStatusSourceEnum._('GENERAL_HOURS');
const RestaurantOpenStatusStatusSourceEnum
_$restaurantOpenStatusStatusSourceEnum_NO_SCHEDULE =
    const RestaurantOpenStatusStatusSourceEnum._('NO_SCHEDULE');
const RestaurantOpenStatusStatusSourceEnum
_$restaurantOpenStatusStatusSourceEnum_unknownDefaultOpenApi =
    const RestaurantOpenStatusStatusSourceEnum._('unknownDefaultOpenApi');

RestaurantOpenStatusStatusSourceEnum
_$restaurantOpenStatusStatusSourceEnumValueOf(String name) {
  switch (name) {
    case 'CLOSED_DATE':
      return _$restaurantOpenStatusStatusSourceEnum_CLOSED_DATE;
    case 'WEEKLY_SCHEDULE':
      return _$restaurantOpenStatusStatusSourceEnum_WEEKLY_SCHEDULE;
    case 'GENERAL_HOURS':
      return _$restaurantOpenStatusStatusSourceEnum_GENERAL_HOURS;
    case 'NO_SCHEDULE':
      return _$restaurantOpenStatusStatusSourceEnum_NO_SCHEDULE;
    case 'unknownDefaultOpenApi':
      return _$restaurantOpenStatusStatusSourceEnum_unknownDefaultOpenApi;
    default:
      return _$restaurantOpenStatusStatusSourceEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<RestaurantOpenStatusStatusSourceEnum>
_$restaurantOpenStatusStatusSourceEnumValues =
    BuiltSet<RestaurantOpenStatusStatusSourceEnum>(
      const <RestaurantOpenStatusStatusSourceEnum>[
        _$restaurantOpenStatusStatusSourceEnum_CLOSED_DATE,
        _$restaurantOpenStatusStatusSourceEnum_WEEKLY_SCHEDULE,
        _$restaurantOpenStatusStatusSourceEnum_GENERAL_HOURS,
        _$restaurantOpenStatusStatusSourceEnum_NO_SCHEDULE,
        _$restaurantOpenStatusStatusSourceEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<RestaurantOpenStatusStatusSourceEnum>
_$restaurantOpenStatusStatusSourceEnumSerializer =
    _$RestaurantOpenStatusStatusSourceEnumSerializer();

class _$RestaurantOpenStatusStatusSourceEnumSerializer
    implements PrimitiveSerializer<RestaurantOpenStatusStatusSourceEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'CLOSED_DATE': 'CLOSED_DATE',
    'WEEKLY_SCHEDULE': 'WEEKLY_SCHEDULE',
    'GENERAL_HOURS': 'GENERAL_HOURS',
    'NO_SCHEDULE': 'NO_SCHEDULE',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'CLOSED_DATE': 'CLOSED_DATE',
    'WEEKLY_SCHEDULE': 'WEEKLY_SCHEDULE',
    'GENERAL_HOURS': 'GENERAL_HOURS',
    'NO_SCHEDULE': 'NO_SCHEDULE',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    RestaurantOpenStatusStatusSourceEnum,
  ];
  @override
  final String wireName = 'RestaurantOpenStatusStatusSourceEnum';

  @override
  Object serialize(
    Serializers serializers,
    RestaurantOpenStatusStatusSourceEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  RestaurantOpenStatusStatusSourceEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => RestaurantOpenStatusStatusSourceEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$RestaurantOpenStatus extends RestaurantOpenStatus {
  @override
  final int? restaurantId;
  @override
  final bool? isOpenNow;
  @override
  final String? reason;
  @override
  final RestaurantOpenStatusStatusSourceEnum? statusSource;
  @override
  final DateTime? evaluatedAtRestaurant;
  @override
  final String? restaurantTimeZone;
  @override
  final DateTime? evaluatedAtClient;

  factory _$RestaurantOpenStatus([
    void Function(RestaurantOpenStatusBuilder)? updates,
  ]) => (RestaurantOpenStatusBuilder()..update(updates))._build();

  _$RestaurantOpenStatus._({
    this.restaurantId,
    this.isOpenNow,
    this.reason,
    this.statusSource,
    this.evaluatedAtRestaurant,
    this.restaurantTimeZone,
    this.evaluatedAtClient,
  }) : super._();
  @override
  RestaurantOpenStatus rebuild(
    void Function(RestaurantOpenStatusBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RestaurantOpenStatusBuilder toBuilder() =>
      RestaurantOpenStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestaurantOpenStatus &&
        restaurantId == other.restaurantId &&
        isOpenNow == other.isOpenNow &&
        reason == other.reason &&
        statusSource == other.statusSource &&
        evaluatedAtRestaurant == other.evaluatedAtRestaurant &&
        restaurantTimeZone == other.restaurantTimeZone &&
        evaluatedAtClient == other.evaluatedAtClient;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, restaurantId.hashCode);
    _$hash = $jc(_$hash, isOpenNow.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, statusSource.hashCode);
    _$hash = $jc(_$hash, evaluatedAtRestaurant.hashCode);
    _$hash = $jc(_$hash, restaurantTimeZone.hashCode);
    _$hash = $jc(_$hash, evaluatedAtClient.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RestaurantOpenStatus')
          ..add('restaurantId', restaurantId)
          ..add('isOpenNow', isOpenNow)
          ..add('reason', reason)
          ..add('statusSource', statusSource)
          ..add('evaluatedAtRestaurant', evaluatedAtRestaurant)
          ..add('restaurantTimeZone', restaurantTimeZone)
          ..add('evaluatedAtClient', evaluatedAtClient))
        .toString();
  }
}

class RestaurantOpenStatusBuilder
    implements Builder<RestaurantOpenStatus, RestaurantOpenStatusBuilder> {
  _$RestaurantOpenStatus? _$v;

  int? _restaurantId;
  int? get restaurantId => _$this._restaurantId;
  set restaurantId(int? restaurantId) => _$this._restaurantId = restaurantId;

  bool? _isOpenNow;
  bool? get isOpenNow => _$this._isOpenNow;
  set isOpenNow(bool? isOpenNow) => _$this._isOpenNow = isOpenNow;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  RestaurantOpenStatusStatusSourceEnum? _statusSource;
  RestaurantOpenStatusStatusSourceEnum? get statusSource =>
      _$this._statusSource;
  set statusSource(RestaurantOpenStatusStatusSourceEnum? statusSource) =>
      _$this._statusSource = statusSource;

  DateTime? _evaluatedAtRestaurant;
  DateTime? get evaluatedAtRestaurant => _$this._evaluatedAtRestaurant;
  set evaluatedAtRestaurant(DateTime? evaluatedAtRestaurant) =>
      _$this._evaluatedAtRestaurant = evaluatedAtRestaurant;

  String? _restaurantTimeZone;
  String? get restaurantTimeZone => _$this._restaurantTimeZone;
  set restaurantTimeZone(String? restaurantTimeZone) =>
      _$this._restaurantTimeZone = restaurantTimeZone;

  DateTime? _evaluatedAtClient;
  DateTime? get evaluatedAtClient => _$this._evaluatedAtClient;
  set evaluatedAtClient(DateTime? evaluatedAtClient) =>
      _$this._evaluatedAtClient = evaluatedAtClient;

  RestaurantOpenStatusBuilder() {
    RestaurantOpenStatus._defaults(this);
  }

  RestaurantOpenStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _restaurantId = $v.restaurantId;
      _isOpenNow = $v.isOpenNow;
      _reason = $v.reason;
      _statusSource = $v.statusSource;
      _evaluatedAtRestaurant = $v.evaluatedAtRestaurant;
      _restaurantTimeZone = $v.restaurantTimeZone;
      _evaluatedAtClient = $v.evaluatedAtClient;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestaurantOpenStatus other) {
    _$v = other as _$RestaurantOpenStatus;
  }

  @override
  void update(void Function(RestaurantOpenStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RestaurantOpenStatus build() => _build();

  _$RestaurantOpenStatus _build() {
    final _$result =
        _$v ??
        _$RestaurantOpenStatus._(
          restaurantId: restaurantId,
          isOpenNow: isOpenNow,
          reason: reason,
          statusSource: statusSource,
          evaluatedAtRestaurant: evaluatedAtRestaurant,
          restaurantTimeZone: restaurantTimeZone,
          evaluatedAtClient: evaluatedAtClient,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
