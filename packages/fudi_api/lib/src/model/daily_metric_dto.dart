//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:fudi_api/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'daily_metric_dto.g.dart';

/// DailyMetricDTO
///
/// Properties:
/// * [date]
/// * [bookings]
/// * [guests]
@BuiltValue()
abstract class DailyMetricDTO
    implements Built<DailyMetricDTO, DailyMetricDTOBuilder> {
  @BuiltValueField(wireName: r'date')
  Date? get date;

  @BuiltValueField(wireName: r'bookings')
  int? get bookings;

  @BuiltValueField(wireName: r'guests')
  int? get guests;

  DailyMetricDTO._();

  factory DailyMetricDTO([void updates(DailyMetricDTOBuilder b)]) =
      _$DailyMetricDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DailyMetricDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DailyMetricDTO> get serializer =>
      _$DailyMetricDTOSerializer();
}

class _$DailyMetricDTOSerializer
    implements PrimitiveSerializer<DailyMetricDTO> {
  @override
  final Iterable<Type> types = const [DailyMetricDTO, _$DailyMetricDTO];

  @override
  final String wireName = r'DailyMetricDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DailyMetricDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.date != null) {
      yield r'date';
      yield serializers.serialize(
        object.date,
        specifiedType: const FullType(Date),
      );
    }
    if (object.bookings != null) {
      yield r'bookings';
      yield serializers.serialize(
        object.bookings,
        specifiedType: const FullType(int),
      );
    }
    if (object.guests != null) {
      yield r'guests';
      yield serializers.serialize(
        object.guests,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DailyMetricDTO object, {
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
    required DailyMetricDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Date),
          ) as Date?;
          if (valueDes == null) continue;
          result.date = valueDes;
          break;
        case r'bookings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.bookings = valueDes;
          break;
        case r'guests':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.guests = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DailyMetricDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DailyMetricDTOBuilder();
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
