//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'weekday_metric_dto.g.dart';

/// WeekdayMetricDTO
///
/// Properties:
/// * [dayOfWeek] - 1=Domingo, 2=Lunes... 7=Sábado
/// * [dayName]
/// * [bookings]
/// * [avgGuests]
@BuiltValue()
abstract class WeekdayMetricDTO
    implements Built<WeekdayMetricDTO, WeekdayMetricDTOBuilder> {
  /// 1=Domingo, 2=Lunes... 7=Sábado
  @BuiltValueField(wireName: r'dayOfWeek')
  int? get dayOfWeek;

  @BuiltValueField(wireName: r'dayName')
  String? get dayName;

  @BuiltValueField(wireName: r'bookings')
  int? get bookings;

  @BuiltValueField(wireName: r'avgGuests')
  double? get avgGuests;

  WeekdayMetricDTO._();

  factory WeekdayMetricDTO([void updates(WeekdayMetricDTOBuilder b)]) =
      _$WeekdayMetricDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WeekdayMetricDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WeekdayMetricDTO> get serializer =>
      _$WeekdayMetricDTOSerializer();
}

class _$WeekdayMetricDTOSerializer
    implements PrimitiveSerializer<WeekdayMetricDTO> {
  @override
  final Iterable<Type> types = const [WeekdayMetricDTO, _$WeekdayMetricDTO];

  @override
  final String wireName = r'WeekdayMetricDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WeekdayMetricDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.dayOfWeek != null) {
      yield r'dayOfWeek';
      yield serializers.serialize(
        object.dayOfWeek,
        specifiedType: const FullType(int),
      );
    }
    if (object.dayName != null) {
      yield r'dayName';
      yield serializers.serialize(
        object.dayName,
        specifiedType: const FullType(String),
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
    WeekdayMetricDTO object, {
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
    required WeekdayMetricDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'dayOfWeek':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.dayOfWeek = valueDes;
          break;
        case r'dayName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.dayName = valueDes;
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
  WeekdayMetricDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WeekdayMetricDTOBuilder();
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
