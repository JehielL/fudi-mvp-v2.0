//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:fudi_api/src/model/dish_menu_section.dart';
import 'package:fudi_api/src/model/dish_menu_summary.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dish.g.dart';

/// Dish
///
/// Properties:
/// * [id]
/// * [title]
/// * [description]
/// * [price]
/// * [imgDish]
/// * [active]
/// * [alergys]
/// * [menu]
/// * [menuSection]
@BuiltValue()
abstract class Dish implements Built<Dish, DishBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'price')
  double? get price;

  @BuiltValueField(wireName: r'imgDish')
  String? get imgDish;

  @BuiltValueField(wireName: r'active')
  bool? get active;

  @BuiltValueField(wireName: r'alergys')
  bool? get alergys;

  @BuiltValueField(wireName: r'menu')
  DishMenuSummary? get menu;

  @BuiltValueField(wireName: r'menuSection')
  DishMenuSection? get menuSection;

  Dish._();

  factory Dish([void updates(DishBuilder b)]) = _$Dish;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DishBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Dish> get serializer => _$DishSerializer();
}

class _$DishSerializer implements PrimitiveSerializer<Dish> {
  @override
  final Iterable<Type> types = const [Dish, _$Dish];

  @override
  final String wireName = r'Dish';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Dish object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.price != null) {
      yield r'price';
      yield serializers.serialize(
        object.price,
        specifiedType: const FullType(double),
      );
    }
    if (object.imgDish != null) {
      yield r'imgDish';
      yield serializers.serialize(
        object.imgDish,
        specifiedType: const FullType(String),
      );
    }
    if (object.active != null) {
      yield r'active';
      yield serializers.serialize(
        object.active,
        specifiedType: const FullType(bool),
      );
    }
    if (object.alergys != null) {
      yield r'alergys';
      yield serializers.serialize(
        object.alergys,
        specifiedType: const FullType(bool),
      );
    }
    if (object.menu != null) {
      yield r'menu';
      yield serializers.serialize(
        object.menu,
        specifiedType: const FullType(DishMenuSummary),
      );
    }
    if (object.menuSection != null) {
      yield r'menuSection';
      yield serializers.serialize(
        object.menuSection,
        specifiedType: const FullType(DishMenuSection),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Dish object, {
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
    required DishBuilder result,
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
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.price = valueDes;
          break;
        case r'imgDish':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.imgDish = valueDes;
          break;
        case r'active':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.active = valueDes;
          break;
        case r'alergys':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.alergys = valueDes;
          break;
        case r'menu':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DishMenuSummary),
          ) as DishMenuSummary?;
          if (valueDes == null) continue;
          result.menu.replace(valueDes);
          break;
        case r'menuSection':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DishMenuSection),
          ) as DishMenuSection?;
          if (valueDes == null) continue;
          result.menuSection.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Dish deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DishBuilder();
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
