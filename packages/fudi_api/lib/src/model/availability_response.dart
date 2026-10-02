//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:fudi_api/src/model/date.dart';
import 'package:built_collection/built_collection.dart';
import 'package:fudi_api/src/model/time_slot_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'availability_response.g.dart';

/// AvailabilityResponse
///
/// Properties:
/// * [restaurantId]
/// * [date]
/// * [isOpen]
/// * [closedReason] - Motivo si está cerrado
/// * [minimumBookableAt] - Cutoff canónico calculado por backend para esa fecha
/// * [evaluatedAtRestaurant] - Momento exacto en zona del restaurante usado para calcular disponibilidad
/// * [restaurantTimeZone] - Zona horaria usada por backend para el cálculo
/// * [availableSlots]
@BuiltValue()
abstract class AvailabilityResponse
    implements Built<AvailabilityResponse, AvailabilityResponseBuilder> {
  @BuiltValueField(wireName: r'restaurantId')
  int? get restaurantId;

  @BuiltValueField(wireName: r'date')
  Date? get date;

  @BuiltValueField(wireName: r'isOpen')
  bool? get isOpen;

  /// Motivo si está cerrado
  @BuiltValueField(wireName: r'closedReason')
  String? get closedReason;

  /// Cutoff canónico calculado por backend para esa fecha
  @BuiltValueField(wireName: r'minimumBookableAt')
  DateTime? get minimumBookableAt;

  /// Momento exacto en zona del restaurante usado para calcular disponibilidad
  @BuiltValueField(wireName: r'evaluatedAtRestaurant')
  DateTime? get evaluatedAtRestaurant;

  /// Zona horaria usada por backend para el cálculo
  @BuiltValueField(wireName: r'restaurantTimeZone')
  String? get restaurantTimeZone;

  @BuiltValueField(wireName: r'availableSlots')
  BuiltList<TimeSlotDTO>? get availableSlots;

  AvailabilityResponse._();

  factory AvailabilityResponse([void updates(AvailabilityResponseBuilder b)]) =
      _$AvailabilityResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AvailabilityResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AvailabilityResponse> get serializer =>
      _$AvailabilityResponseSerializer();
}

class _$AvailabilityResponseSerializer
    implements PrimitiveSerializer<AvailabilityResponse> {
  @override
  final Iterable<Type> types = const [
    AvailabilityResponse,
    _$AvailabilityResponse,
  ];

  @override
  final String wireName = r'AvailabilityResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AvailabilityResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.restaurantId != null) {
      yield r'restaurantId';
      yield serializers.serialize(
        object.restaurantId,
        specifiedType: const FullType(int),
      );
    }
    if (object.date != null) {
      yield r'date';
      yield serializers.serialize(
        object.date,
        specifiedType: const FullType(Date),
      );
    }
    if (object.isOpen != null) {
      yield r'isOpen';
      yield serializers.serialize(
        object.isOpen,
        specifiedType: const FullType(bool),
      );
    }
    if (object.closedReason != null) {
      yield r'closedReason';
      yield serializers.serialize(
        object.closedReason,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.minimumBookableAt != null) {
      yield r'minimumBookableAt';
      yield serializers.serialize(
        object.minimumBookableAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.evaluatedAtRestaurant != null) {
      yield r'evaluatedAtRestaurant';
      yield serializers.serialize(
        object.evaluatedAtRestaurant,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.restaurantTimeZone != null) {
      yield r'restaurantTimeZone';
      yield serializers.serialize(
        object.restaurantTimeZone,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.availableSlots != null) {
      yield r'availableSlots';
      yield serializers.serialize(
        object.availableSlots,
        specifiedType: const FullType(BuiltList, [FullType(TimeSlotDTO)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AvailabilityResponse object, {
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
    required AvailabilityResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'restaurantId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.restaurantId = valueDes;
          break;
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Date),
          ) as Date?;
          if (valueDes == null) continue;
          result.date = valueDes;
          break;
        case r'isOpen':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isOpen = valueDes;
          break;
        case r'closedReason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.closedReason = valueDes;
          break;
        case r'minimumBookableAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.minimumBookableAt = valueDes;
          break;
        case r'evaluatedAtRestaurant':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.evaluatedAtRestaurant = valueDes;
          break;
        case r'restaurantTimeZone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.restaurantTimeZone = valueDes;
          break;
        case r'availableSlots':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [
              FullType(TimeSlotDTO),
            ]),
          ) as BuiltList<TimeSlotDTO>?;
          if (valueDes == null) continue;
          result.availableSlots.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AvailabilityResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AvailabilityResponseBuilder();
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
