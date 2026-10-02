//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'insights_dto.g.dart';

/// InsightsDTO
///
/// Properties:
/// * [peakHour] - Hora con más reservas (0-23)
/// * [peakDay]
/// * [avgLeadTimeDays] - Días promedio de anticipación
/// * [returningCustomerRate] - % clientes que vuelven
@BuiltValue()
abstract class InsightsDTO implements Built<InsightsDTO, InsightsDTOBuilder> {
  /// Hora con más reservas (0-23)
  @BuiltValueField(wireName: r'peakHour')
  int? get peakHour;

  @BuiltValueField(wireName: r'peakDay')
  String? get peakDay;

  /// Días promedio de anticipación
  @BuiltValueField(wireName: r'avgLeadTimeDays')
  double? get avgLeadTimeDays;

  /// % clientes que vuelven
  @BuiltValueField(wireName: r'returningCustomerRate')
  double? get returningCustomerRate;

  InsightsDTO._();

  factory InsightsDTO([void updates(InsightsDTOBuilder b)]) = _$InsightsDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InsightsDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InsightsDTO> get serializer => _$InsightsDTOSerializer();
}

class _$InsightsDTOSerializer implements PrimitiveSerializer<InsightsDTO> {
  @override
  final Iterable<Type> types = const [InsightsDTO, _$InsightsDTO];

  @override
  final String wireName = r'InsightsDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InsightsDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.peakHour != null) {
      yield r'peakHour';
      yield serializers.serialize(
        object.peakHour,
        specifiedType: const FullType(int),
      );
    }
    if (object.peakDay != null) {
      yield r'peakDay';
      yield serializers.serialize(
        object.peakDay,
        specifiedType: const FullType(String),
      );
    }
    if (object.avgLeadTimeDays != null) {
      yield r'avgLeadTimeDays';
      yield serializers.serialize(
        object.avgLeadTimeDays,
        specifiedType: const FullType(double),
      );
    }
    if (object.returningCustomerRate != null) {
      yield r'returningCustomerRate';
      yield serializers.serialize(
        object.returningCustomerRate,
        specifiedType: const FullType(double),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    InsightsDTO object, {
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
    required InsightsDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'peakHour':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.peakHour = valueDes;
          break;
        case r'peakDay':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.peakDay = valueDes;
          break;
        case r'avgLeadTimeDays':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.avgLeadTimeDays = valueDes;
          break;
        case r'returningCustomerRate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.returningCustomerRate = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InsightsDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InsightsDTOBuilder();
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
