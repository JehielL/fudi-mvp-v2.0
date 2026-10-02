//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'time_slot_dto.g.dart';

/// TimeSlotDTO
///
/// Properties:
/// * [time]
/// * [availableCapacity] - Personas que todavía caben en auto-confirmación
/// * [maxCapacity] - Capacidad auto-confirmable del slot
/// * [isAvailable]
/// * [waitlistAvailable]
/// * [bookingMode]
/// * [period] - Tramo operativo del slot (LUNCH, DINNER, GENERAL)
@BuiltValue()
abstract class TimeSlotDTO implements Built<TimeSlotDTO, TimeSlotDTOBuilder> {
  @BuiltValueField(wireName: r'time')
  String? get time;

  /// Personas que todavía caben en auto-confirmación
  @BuiltValueField(wireName: r'availableCapacity')
  int? get availableCapacity;

  /// Capacidad auto-confirmable del slot
  @BuiltValueField(wireName: r'maxCapacity')
  int? get maxCapacity;

  @BuiltValueField(wireName: r'isAvailable')
  bool? get isAvailable;

  @BuiltValueField(wireName: r'waitlistAvailable')
  bool? get waitlistAvailable;

  @BuiltValueField(wireName: r'bookingMode')
  TimeSlotDTOBookingModeEnum? get bookingMode;
  // enum bookingModeEnum {  CONFIRMED,  WAITLIST,  FULL,  };

  /// Tramo operativo del slot (LUNCH, DINNER, GENERAL)
  @BuiltValueField(wireName: r'period')
  String? get period;

  TimeSlotDTO._();

  factory TimeSlotDTO([void updates(TimeSlotDTOBuilder b)]) = _$TimeSlotDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TimeSlotDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TimeSlotDTO> get serializer => _$TimeSlotDTOSerializer();
}

class _$TimeSlotDTOSerializer implements PrimitiveSerializer<TimeSlotDTO> {
  @override
  final Iterable<Type> types = const [TimeSlotDTO, _$TimeSlotDTO];

  @override
  final String wireName = r'TimeSlotDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TimeSlotDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.time != null) {
      yield r'time';
      yield serializers.serialize(
        object.time,
        specifiedType: const FullType(String),
      );
    }
    if (object.availableCapacity != null) {
      yield r'availableCapacity';
      yield serializers.serialize(
        object.availableCapacity,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxCapacity != null) {
      yield r'maxCapacity';
      yield serializers.serialize(
        object.maxCapacity,
        specifiedType: const FullType(int),
      );
    }
    if (object.isAvailable != null) {
      yield r'isAvailable';
      yield serializers.serialize(
        object.isAvailable,
        specifiedType: const FullType(bool),
      );
    }
    if (object.waitlistAvailable != null) {
      yield r'waitlistAvailable';
      yield serializers.serialize(
        object.waitlistAvailable,
        specifiedType: const FullType(bool),
      );
    }
    if (object.bookingMode != null) {
      yield r'bookingMode';
      yield serializers.serialize(
        object.bookingMode,
        specifiedType: const FullType(TimeSlotDTOBookingModeEnum),
      );
    }
    if (object.period != null) {
      yield r'period';
      yield serializers.serialize(
        object.period,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TimeSlotDTO object, {
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
    required TimeSlotDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.time = valueDes;
          break;
        case r'availableCapacity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.availableCapacity = valueDes;
          break;
        case r'maxCapacity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxCapacity = valueDes;
          break;
        case r'isAvailable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isAvailable = valueDes;
          break;
        case r'waitlistAvailable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.waitlistAvailable = valueDes;
          break;
        case r'bookingMode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(TimeSlotDTOBookingModeEnum),
          ) as TimeSlotDTOBookingModeEnum?;
          if (valueDes == null) continue;
          result.bookingMode = valueDes;
          break;
        case r'period':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.period = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TimeSlotDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TimeSlotDTOBuilder();
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

class TimeSlotDTOBookingModeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'CONFIRMED')
  static const TimeSlotDTOBookingModeEnum CONFIRMED =
      _$timeSlotDTOBookingModeEnum_CONFIRMED;
  @BuiltValueEnumConst(wireName: r'WAITLIST')
  static const TimeSlotDTOBookingModeEnum WAITLIST =
      _$timeSlotDTOBookingModeEnum_WAITLIST;
  @BuiltValueEnumConst(wireName: r'FULL')
  static const TimeSlotDTOBookingModeEnum FULL =
      _$timeSlotDTOBookingModeEnum_FULL;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const TimeSlotDTOBookingModeEnum unknownDefaultOpenApi =
      _$timeSlotDTOBookingModeEnum_unknownDefaultOpenApi;

  static Serializer<TimeSlotDTOBookingModeEnum> get serializer =>
      _$timeSlotDTOBookingModeEnumSerializer;

  const TimeSlotDTOBookingModeEnum._(String name) : super(name);

  static BuiltSet<TimeSlotDTOBookingModeEnum> get values =>
      _$timeSlotDTOBookingModeEnumValues;
  static TimeSlotDTOBookingModeEnum valueOf(String name) =>
      _$timeSlotDTOBookingModeEnumValueOf(name);
}
