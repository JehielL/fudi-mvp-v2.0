//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dish_filter_section.g.dart';

/// DishFilterSection
///
/// Properties:
/// * [id]
/// * [slug]
/// * [name]
/// * [position]
/// * [totalDishes]
/// * [activeDishes]
@BuiltValue()
abstract class DishFilterSection
    implements Built<DishFilterSection, DishFilterSectionBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'slug')
  String? get slug;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'position')
  int? get position;

  @BuiltValueField(wireName: r'totalDishes')
  int? get totalDishes;

  @BuiltValueField(wireName: r'activeDishes')
  int? get activeDishes;

  DishFilterSection._();

  factory DishFilterSection([void updates(DishFilterSectionBuilder b)]) =
      _$DishFilterSection;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DishFilterSectionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DishFilterSection> get serializer =>
      _$DishFilterSectionSerializer();
}

class _$DishFilterSectionSerializer
    implements PrimitiveSerializer<DishFilterSection> {
  @override
  final Iterable<Type> types = const [DishFilterSection, _$DishFilterSection];

  @override
  final String wireName = r'DishFilterSection';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DishFilterSection object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.slug != null) {
      yield r'slug';
      yield serializers.serialize(
        object.slug,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.position != null) {
      yield r'position';
      yield serializers.serialize(
        object.position,
        specifiedType: const FullType(int),
      );
    }
    if (object.totalDishes != null) {
      yield r'totalDishes';
      yield serializers.serialize(
        object.totalDishes,
        specifiedType: const FullType(int),
      );
    }
    if (object.activeDishes != null) {
      yield r'activeDishes';
      yield serializers.serialize(
        object.activeDishes,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DishFilterSection object, {
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
    required DishFilterSectionBuilder result,
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
        case r'slug':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.slug = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'position':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.position = valueDes;
          break;
        case r'totalDishes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.totalDishes = valueDes;
          break;
        case r'activeDishes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.activeDishes = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DishFilterSection deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DishFilterSectionBuilder();
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
