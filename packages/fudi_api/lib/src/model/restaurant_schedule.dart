//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'restaurant_schedule.g.dart';

/// RestaurantSchedule
///
/// Properties:
/// * [id]
/// * [restaurantId]
/// * [dayOfWeek]
/// * [isOpen]
/// * [openTime]
/// * [closeTime]
/// * [lunchStart]
/// * [lunchEnd]
/// * [dinnerStart]
/// * [dinnerEnd]
/// * [maxCapacity] - Aforo total del restaurante
/// * [maxCapacityPerSlot] - Máximo personas por slot
/// * [defaultBookingDurationMinutes]
/// * [slotIntervalMinutes] - Duración del slot en minutos
/// * [minAdvanceHours]
/// * [maxAdvanceDays]
/// * [acceptsOnlineBookings]
/// * [notes]
@BuiltValue()
abstract class RestaurantSchedule
    implements Built<RestaurantSchedule, RestaurantScheduleBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'restaurantId')
  int? get restaurantId;

  @BuiltValueField(wireName: r'dayOfWeek')
  RestaurantScheduleDayOfWeekEnum? get dayOfWeek;
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

  /// Aforo total del restaurante
  @BuiltValueField(wireName: r'maxCapacity')
  int? get maxCapacity;

  /// Máximo personas por slot
  @BuiltValueField(wireName: r'maxCapacityPerSlot')
  int? get maxCapacityPerSlot;

  @BuiltValueField(wireName: r'defaultBookingDurationMinutes')
  int? get defaultBookingDurationMinutes;

  /// Duración del slot en minutos
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

  RestaurantSchedule._();

  factory RestaurantSchedule([void updates(RestaurantScheduleBuilder b)]) =
      _$RestaurantSchedule;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RestaurantScheduleBuilder b) =>
      b..slotIntervalMinutes = 30;

  @BuiltValueSerializer(custom: true)
  static Serializer<RestaurantSchedule> get serializer =>
      _$RestaurantScheduleSerializer();
}

class _$RestaurantScheduleSerializer
    implements PrimitiveSerializer<RestaurantSchedule> {
  @override
  final Iterable<Type> types = const [RestaurantSchedule, _$RestaurantSchedule];

  @override
  final String wireName = r'RestaurantSchedule';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RestaurantSchedule object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.restaurantId != null) {
      yield r'restaurantId';
      yield serializers.serialize(
        object.restaurantId,
        specifiedType: const FullType(int),
      );
    }
    if (object.dayOfWeek != null) {
      yield r'dayOfWeek';
      yield serializers.serialize(
        object.dayOfWeek,
        specifiedType: const FullType(RestaurantScheduleDayOfWeekEnum),
      );
    }
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
    RestaurantSchedule object, {
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
    required RestaurantScheduleBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'restaurantId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.restaurantId = valueDes;
          break;
        case r'dayOfWeek':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
              RestaurantScheduleDayOfWeekEnum,
            ),
          ) as RestaurantScheduleDayOfWeekEnum?;
          if (valueDes == null) continue;
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
  RestaurantSchedule deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RestaurantScheduleBuilder();
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

class RestaurantScheduleDayOfWeekEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'MONDAY')
  static const RestaurantScheduleDayOfWeekEnum MONDAY =
      _$restaurantScheduleDayOfWeekEnum_MONDAY;
  @BuiltValueEnumConst(wireName: r'TUESDAY')
  static const RestaurantScheduleDayOfWeekEnum TUESDAY =
      _$restaurantScheduleDayOfWeekEnum_TUESDAY;
  @BuiltValueEnumConst(wireName: r'WEDNESDAY')
  static const RestaurantScheduleDayOfWeekEnum WEDNESDAY =
      _$restaurantScheduleDayOfWeekEnum_WEDNESDAY;
  @BuiltValueEnumConst(wireName: r'THURSDAY')
  static const RestaurantScheduleDayOfWeekEnum THURSDAY =
      _$restaurantScheduleDayOfWeekEnum_THURSDAY;
  @BuiltValueEnumConst(wireName: r'FRIDAY')
  static const RestaurantScheduleDayOfWeekEnum FRIDAY =
      _$restaurantScheduleDayOfWeekEnum_FRIDAY;
  @BuiltValueEnumConst(wireName: r'SATURDAY')
  static const RestaurantScheduleDayOfWeekEnum SATURDAY =
      _$restaurantScheduleDayOfWeekEnum_SATURDAY;
  @BuiltValueEnumConst(wireName: r'SUNDAY')
  static const RestaurantScheduleDayOfWeekEnum SUNDAY =
      _$restaurantScheduleDayOfWeekEnum_SUNDAY;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const RestaurantScheduleDayOfWeekEnum unknownDefaultOpenApi =
      _$restaurantScheduleDayOfWeekEnum_unknownDefaultOpenApi;

  static Serializer<RestaurantScheduleDayOfWeekEnum> get serializer =>
      _$restaurantScheduleDayOfWeekEnumSerializer;

  const RestaurantScheduleDayOfWeekEnum._(String name) : super(name);

  static BuiltSet<RestaurantScheduleDayOfWeekEnum> get values =>
      _$restaurantScheduleDayOfWeekEnumValues;
  static RestaurantScheduleDayOfWeekEnum valueOf(String name) =>
      _$restaurantScheduleDayOfWeekEnumValueOf(name);
}
