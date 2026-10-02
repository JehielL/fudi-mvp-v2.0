//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'restaurant_schedule_request.g.dart';

/// RestaurantScheduleRequest
///
/// Properties:
/// * [dayOfWeek]
/// * [isOpen]
/// * [openTime]
/// * [closeTime]
/// * [lunchStart]
/// * [lunchEnd]
/// * [dinnerStart]
/// * [dinnerEnd]
/// * [maxCapacity]
/// * [maxCapacityPerSlot]
/// * [defaultBookingDurationMinutes]
/// * [slotIntervalMinutes]
/// * [minAdvanceHours]
/// * [maxAdvanceDays]
/// * [acceptsOnlineBookings]
/// * [notes]
@BuiltValue()
abstract class RestaurantScheduleRequest
    implements
        Built<RestaurantScheduleRequest, RestaurantScheduleRequestBuilder> {
  @BuiltValueField(wireName: r'dayOfWeek')
  RestaurantScheduleRequestDayOfWeekEnum get dayOfWeek;
  // enum dayOfWeekEnum {  MONDAY,  TUESDAY,  WEDNESDAY,  THURSDAY,  FRIDAY,  SATURDAY,  SUNDAY,  };

  @BuiltValueField(wireName: r'isOpen')
  bool? get isOpen;

  @BuiltValueField(wireName: r'openTime')
  String? get openTime;

  @BuiltValueField(wireName: r'closeTime')
  String? get closeTime;

  @BuiltValueField(wireName: r'lunchStart')
  String? get lunchStart;

  @BuiltValueField(wireName: r'lunchEnd')
  String? get lunchEnd;

  @BuiltValueField(wireName: r'dinnerStart')
  String? get dinnerStart;

  @BuiltValueField(wireName: r'dinnerEnd')
  String? get dinnerEnd;

  @BuiltValueField(wireName: r'maxCapacity')
  int? get maxCapacity;

  @BuiltValueField(wireName: r'maxCapacityPerSlot')
  int? get maxCapacityPerSlot;

  @BuiltValueField(wireName: r'defaultBookingDurationMinutes')
  int? get defaultBookingDurationMinutes;

  @BuiltValueField(wireName: r'slotIntervalMinutes')
  int? get slotIntervalMinutes;

  @BuiltValueField(wireName: r'minAdvanceHours')
  int? get minAdvanceHours;

  @BuiltValueField(wireName: r'maxAdvanceDays')
  int? get maxAdvanceDays;

  @BuiltValueField(wireName: r'acceptsOnlineBookings')
  bool? get acceptsOnlineBookings;

  @BuiltValueField(wireName: r'notes')
  String? get notes;

  RestaurantScheduleRequest._();

  factory RestaurantScheduleRequest([
    void updates(RestaurantScheduleRequestBuilder b),
  ]) = _$RestaurantScheduleRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RestaurantScheduleRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RestaurantScheduleRequest> get serializer =>
      _$RestaurantScheduleRequestSerializer();
}

class _$RestaurantScheduleRequestSerializer
    implements PrimitiveSerializer<RestaurantScheduleRequest> {
  @override
  final Iterable<Type> types = const [
    RestaurantScheduleRequest,
    _$RestaurantScheduleRequest,
  ];

  @override
  final String wireName = r'RestaurantScheduleRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RestaurantScheduleRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'dayOfWeek';
    yield serializers.serialize(
      object.dayOfWeek,
      specifiedType: const FullType(RestaurantScheduleRequestDayOfWeekEnum),
    );
    if (object.isOpen != null) {
      yield r'isOpen';
      yield serializers.serialize(
        object.isOpen,
        specifiedType: const FullType(bool),
      );
    }
    if (object.openTime != null) {
      yield r'openTime';
      yield serializers.serialize(
        object.openTime,
        specifiedType: const FullType(String),
      );
    }
    if (object.closeTime != null) {
      yield r'closeTime';
      yield serializers.serialize(
        object.closeTime,
        specifiedType: const FullType(String),
      );
    }
    if (object.lunchStart != null) {
      yield r'lunchStart';
      yield serializers.serialize(
        object.lunchStart,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.lunchEnd != null) {
      yield r'lunchEnd';
      yield serializers.serialize(
        object.lunchEnd,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.dinnerStart != null) {
      yield r'dinnerStart';
      yield serializers.serialize(
        object.dinnerStart,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.dinnerEnd != null) {
      yield r'dinnerEnd';
      yield serializers.serialize(
        object.dinnerEnd,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.maxCapacity != null) {
      yield r'maxCapacity';
      yield serializers.serialize(
        object.maxCapacity,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxCapacityPerSlot != null) {
      yield r'maxCapacityPerSlot';
      yield serializers.serialize(
        object.maxCapacityPerSlot,
        specifiedType: const FullType(int),
      );
    }
    if (object.defaultBookingDurationMinutes != null) {
      yield r'defaultBookingDurationMinutes';
      yield serializers.serialize(
        object.defaultBookingDurationMinutes,
        specifiedType: const FullType(int),
      );
    }
    if (object.slotIntervalMinutes != null) {
      yield r'slotIntervalMinutes';
      yield serializers.serialize(
        object.slotIntervalMinutes,
        specifiedType: const FullType(int),
      );
    }
    if (object.minAdvanceHours != null) {
      yield r'minAdvanceHours';
      yield serializers.serialize(
        object.minAdvanceHours,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxAdvanceDays != null) {
      yield r'maxAdvanceDays';
      yield serializers.serialize(
        object.maxAdvanceDays,
        specifiedType: const FullType(int),
      );
    }
    if (object.acceptsOnlineBookings != null) {
      yield r'acceptsOnlineBookings';
      yield serializers.serialize(
        object.acceptsOnlineBookings,
        specifiedType: const FullType(bool),
      );
    }
    if (object.notes != null) {
      yield r'notes';
      yield serializers.serialize(
        object.notes,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RestaurantScheduleRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(
      serializers,
      object,
      specifiedType: specifiedType,
    ).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RestaurantScheduleRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'dayOfWeek':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
              RestaurantScheduleRequestDayOfWeekEnum,
            ),
          ) as RestaurantScheduleRequestDayOfWeekEnum;
          result.dayOfWeek = valueDes;
          break;
        case r'isOpen':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isOpen = valueDes;
          break;
        case r'openTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.openTime = valueDes;
          break;
        case r'closeTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.closeTime = valueDes;
          break;
        case r'lunchStart':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.lunchStart = valueDes;
          break;
        case r'lunchEnd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.lunchEnd = valueDes;
          break;
        case r'dinnerStart':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.dinnerStart = valueDes;
          break;
        case r'dinnerEnd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.dinnerEnd = valueDes;
          break;
        case r'maxCapacity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxCapacity = valueDes;
          break;
        case r'maxCapacityPerSlot':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxCapacityPerSlot = valueDes;
          break;
        case r'defaultBookingDurationMinutes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.defaultBookingDurationMinutes = valueDes;
          break;
        case r'slotIntervalMinutes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.slotIntervalMinutes = valueDes;
          break;
        case r'minAdvanceHours':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.minAdvanceHours = valueDes;
          break;
        case r'maxAdvanceDays':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxAdvanceDays = valueDes;
          break;
        case r'acceptsOnlineBookings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.acceptsOnlineBookings = valueDes;
          break;
        case r'notes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.notes = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RestaurantScheduleRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RestaurantScheduleRequestBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

class RestaurantScheduleRequestDayOfWeekEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'MONDAY')
  static const RestaurantScheduleRequestDayOfWeekEnum MONDAY =
      _$restaurantScheduleRequestDayOfWeekEnum_MONDAY;
  @BuiltValueEnumConst(wireName: r'TUESDAY')
  static const RestaurantScheduleRequestDayOfWeekEnum TUESDAY =
      _$restaurantScheduleRequestDayOfWeekEnum_TUESDAY;
  @BuiltValueEnumConst(wireName: r'WEDNESDAY')
  static const RestaurantScheduleRequestDayOfWeekEnum WEDNESDAY =
      _$restaurantScheduleRequestDayOfWeekEnum_WEDNESDAY;
  @BuiltValueEnumConst(wireName: r'THURSDAY')
  static const RestaurantScheduleRequestDayOfWeekEnum THURSDAY =
      _$restaurantScheduleRequestDayOfWeekEnum_THURSDAY;
  @BuiltValueEnumConst(wireName: r'FRIDAY')
  static const RestaurantScheduleRequestDayOfWeekEnum FRIDAY =
      _$restaurantScheduleRequestDayOfWeekEnum_FRIDAY;
  @BuiltValueEnumConst(wireName: r'SATURDAY')
  static const RestaurantScheduleRequestDayOfWeekEnum SATURDAY =
      _$restaurantScheduleRequestDayOfWeekEnum_SATURDAY;
  @BuiltValueEnumConst(wireName: r'SUNDAY')
  static const RestaurantScheduleRequestDayOfWeekEnum SUNDAY =
      _$restaurantScheduleRequestDayOfWeekEnum_SUNDAY;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const RestaurantScheduleRequestDayOfWeekEnum unknownDefaultOpenApi =
      _$restaurantScheduleRequestDayOfWeekEnum_unknownDefaultOpenApi;

  static Serializer<RestaurantScheduleRequestDayOfWeekEnum> get serializer =>
      _$restaurantScheduleRequestDayOfWeekEnumSerializer;

  const RestaurantScheduleRequestDayOfWeekEnum._(String name) : super(name);

  static BuiltSet<RestaurantScheduleRequestDayOfWeekEnum> get values =>
      _$restaurantScheduleRequestDayOfWeekEnumValues;
  static RestaurantScheduleRequestDayOfWeekEnum valueOf(String name) =>
      _$restaurantScheduleRequestDayOfWeekEnumValueOf(name);
}
