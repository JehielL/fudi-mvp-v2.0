//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:fudi_api/src/model/dish_filter_section.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dish_filters_response.g.dart';

/// DishFiltersResponse
///
/// Properties:
/// * [sections]
/// * [totalDishes]
/// * [minPrice]
/// * [maxPrice]
@BuiltValue()
abstract class DishFiltersResponse
    implements Built<DishFiltersResponse, DishFiltersResponseBuilder> {
  @BuiltValueField(wireName: r'sections')
  BuiltList<DishFilterSection>? get sections;

  @BuiltValueField(wireName: r'totalDishes')
  int? get totalDishes;

  @BuiltValueField(wireName: r'minPrice')
  double? get minPrice;

  @BuiltValueField(wireName: r'maxPrice')
  double? get maxPrice;

  DishFiltersResponse._();

  factory DishFiltersResponse([void updates(DishFiltersResponseBuilder b)]) =
      _$DishFiltersResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DishFiltersResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DishFiltersResponse> get serializer =>
      _$DishFiltersResponseSerializer();
}

class _$DishFiltersResponseSerializer
    implements PrimitiveSerializer<DishFiltersResponse> {
  @override
  final Iterable<Type> types = const [
    DishFiltersResponse,
    _$DishFiltersResponse,
  ];

  @override
  final String wireName = r'DishFiltersResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DishFiltersResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.sections != null) {
      yield r'sections';
      yield serializers.serialize(
        object.sections,
        specifiedType: const FullType(BuiltList, [FullType(DishFilterSection)]),
      );
    }
    if (object.totalDishes != null) {
      yield r'totalDishes';
      yield serializers.serialize(
        object.totalDishes,
        specifiedType: const FullType(int),
      );
    }
    if (object.minPrice != null) {
      yield r'minPrice';
      yield serializers.serialize(
        object.minPrice,
        specifiedType: const FullType(double),
      );
    }
    if (object.maxPrice != null) {
      yield r'maxPrice';
      yield serializers.serialize(
        object.maxPrice,
        specifiedType: const FullType(double),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DishFiltersResponse object, {
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
    required DishFiltersResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sections':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [
              FullType(DishFilterSection),
            ]),
          ) as BuiltList<DishFilterSection>?;
          if (valueDes == null) continue;
          result.sections.replace(valueDes);
          break;
        case r'totalDishes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.totalDishes = valueDes;
          break;
        case r'minPrice':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.minPrice = valueDes;
          break;
        case r'maxPrice':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.maxPrice = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DishFiltersResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DishFiltersResponseBuilder();
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
