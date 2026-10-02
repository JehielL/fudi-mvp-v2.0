//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'comparison_dto.g.dart';

/// ComparisonDTO
///
/// Properties:
/// * [current]
/// * [previous]
/// * [changePercentage]
/// * [trend]
@BuiltValue()
abstract class ComparisonDTO
    implements Built<ComparisonDTO, ComparisonDTOBuilder> {
  @BuiltValueField(wireName: r'current')
  double? get current;

  @BuiltValueField(wireName: r'previous')
  double? get previous;

  @BuiltValueField(wireName: r'changePercentage')
  double? get changePercentage;

  @BuiltValueField(wireName: r'trend')
  ComparisonDTOTrendEnum? get trend;
  // enum trendEnum {  UP,  DOWN,  STABLE,  };

  ComparisonDTO._();

  factory ComparisonDTO([void updates(ComparisonDTOBuilder b)]) =
      _$ComparisonDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ComparisonDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ComparisonDTO> get serializer =>
      _$ComparisonDTOSerializer();
}

class _$ComparisonDTOSerializer implements PrimitiveSerializer<ComparisonDTO> {
  @override
  final Iterable<Type> types = const [ComparisonDTO, _$ComparisonDTO];

  @override
  final String wireName = r'ComparisonDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ComparisonDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.current != null) {
      yield r'current';
      yield serializers.serialize(
        object.current,
        specifiedType: const FullType(double),
      );
    }
    if (object.previous != null) {
      yield r'previous';
      yield serializers.serialize(
        object.previous,
        specifiedType: const FullType(double),
      );
    }
    if (object.changePercentage != null) {
      yield r'changePercentage';
      yield serializers.serialize(
        object.changePercentage,
        specifiedType: const FullType(double),
      );
    }
    if (object.trend != null) {
      yield r'trend';
      yield serializers.serialize(
        object.trend,
        specifiedType: const FullType(ComparisonDTOTrendEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ComparisonDTO object, {
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
    required ComparisonDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'current':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.current = valueDes;
          break;
        case r'previous':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.previous = valueDes;
          break;
        case r'changePercentage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.changePercentage = valueDes;
          break;
        case r'trend':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ComparisonDTOTrendEnum),
          ) as ComparisonDTOTrendEnum?;
          if (valueDes == null) continue;
          result.trend = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ComparisonDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ComparisonDTOBuilder();
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

class ComparisonDTOTrendEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'UP')
  static const ComparisonDTOTrendEnum UP = _$comparisonDTOTrendEnum_UP;
  @BuiltValueEnumConst(wireName: r'DOWN')
  static const ComparisonDTOTrendEnum DOWN = _$comparisonDTOTrendEnum_DOWN;
  @BuiltValueEnumConst(wireName: r'STABLE')
  static const ComparisonDTOTrendEnum STABLE = _$comparisonDTOTrendEnum_STABLE;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ComparisonDTOTrendEnum unknownDefaultOpenApi =
      _$comparisonDTOTrendEnum_unknownDefaultOpenApi;

  static Serializer<ComparisonDTOTrendEnum> get serializer =>
      _$comparisonDTOTrendEnumSerializer;

  const ComparisonDTOTrendEnum._(String name) : super(name);

  static BuiltSet<ComparisonDTOTrendEnum> get values =>
      _$comparisonDTOTrendEnumValues;
  static ComparisonDTOTrendEnum valueOf(String name) =>
      _$comparisonDTOTrendEnumValueOf(name);
}
