//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'hourly_metric_dto.g.dart';

/// HourlyMetricDTO
///
/// Properties:
/// * [hour]
/// * [bookings]
/// * [avgGuests]
@BuiltValue()
abstract class HourlyMetricDTO
    implements Built<HourlyMetricDTO, HourlyMetricDTOBuilder> {
  @BuiltValueField(wireName: r'hour')
  int? get hour;

  @BuiltValueField(wireName: r'bookings')
  int? get bookings;

  @BuiltValueField(wireName: r'avgGuests')
  double? get avgGuests;

  HourlyMetricDTO._();

  factory HourlyMetricDTO([void updates(HourlyMetricDTOBuilder b)]) =
      _$HourlyMetricDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HourlyMetricDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HourlyMetricDTO> get serializer =>
      _$HourlyMetricDTOSerializer();
}

class _$HourlyMetricDTOSerializer
    implements PrimitiveSerializer<HourlyMetricDTO> {
  @override
  final Iterable<Type> types = const [HourlyMetricDTO, _$HourlyMetricDTO];

  @override
  final String wireName = r'HourlyMetricDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HourlyMetricDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.hour != null) {
      yield r'hour';
      yield serializers.serialize(
        object.hour,
        specifiedType: const FullType(int),
      );
    }
    if (object.bookings != null) {
      yield r'bookings';
      yield serializers.serialize(
        object.bookings,
        specifiedType: const FullType(int),
      );
    }
    if (object.avgGuests != null) {
      yield r'avgGuests';
      yield serializers.serialize(
        object.avgGuests,
        specifiedType: const FullType(double),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HourlyMetricDTO object, {
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
    required HourlyMetricDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'hour':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.hour = valueDes;
          break;
        case r'bookings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.bookings = valueDes;
          break;
        case r'avgGuests':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.avgGuests = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HourlyMetricDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HourlyMetricDTOBuilder();
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
