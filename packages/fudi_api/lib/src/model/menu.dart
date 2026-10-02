//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'menu.g.dart';

/// Menu
///
/// Properties:
/// * [id]
/// * [title]
/// * [description]
/// * [imgMenu]
/// * [active]
/// * [restaurantType]
/// * [alergys]
/// * [restaurantId]
@BuiltValue()
abstract class Menu implements Built<Menu, MenuBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'imgMenu')
  String? get imgMenu;

  @BuiltValueField(wireName: r'active')
  bool? get active;

  @BuiltValueField(wireName: r'restaurantType')
  MenuRestaurantTypeEnum? get restaurantType;
  // enum restaurantTypeEnum {  JAPANESE_FOOD,  THAI_FOOD,  SPAIN_FOOD,  CHINESE_FOOD,  BRUNCH,  COFFEE_STORE,  BAR,  VIETNAM_FOOD,  ITALIAN_FOOD,  FRENCH_FOOD,  TEX_MEX_FOOD,  KOREAN_FOOD,  VEGAN_FOOD,  AMERICAN_FOOD,  GERMAN_FOOD,  PORTUGUESE_FOOD,  FUSION_FOOD,  GREEK_FOOD,  INDIAN_FOOD,  PERUVIAN_FOOD,  CANADIAN_FOOD,  DOMINICAN_FOOD,  LATIN_AMERICAN_FOOD,  ARGENTINE_FOOD,  BALKAN_FOOD,  GEORGIAN_FOOD,  ARABIAN_FOOD,  MARRAKECH_FOOD,  ASIAN_FOOD,  AFRICAN_FOOD,  MAGHREB_FOOD,  CARIBBEAN_FOOD,  };

  @BuiltValueField(wireName: r'alergys')
  bool? get alergys;

  @BuiltValueField(wireName: r'restaurantId')
  int? get restaurantId;

  Menu._();

  factory Menu([void updates(MenuBuilder b)]) = _$Menu;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MenuBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Menu> get serializer => _$MenuSerializer();
}

class _$MenuSerializer implements PrimitiveSerializer<Menu> {
  @override
  final Iterable<Type> types = const [Menu, _$Menu];

  @override
  final String wireName = r'Menu';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Menu object, {
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
    if (object.imgMenu != null) {
      yield r'imgMenu';
      yield serializers.serialize(
        object.imgMenu,
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
    if (object.restaurantType != null) {
      yield r'restaurantType';
      yield serializers.serialize(
        object.restaurantType,
        specifiedType: const FullType(MenuRestaurantTypeEnum),
      );
    }
    if (object.alergys != null) {
      yield r'alergys';
      yield serializers.serialize(
        object.alergys,
        specifiedType: const FullType(bool),
      );
    }
    if (object.restaurantId != null) {
      yield r'restaurantId';
      yield serializers.serialize(
        object.restaurantId,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Menu object, {
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
    required MenuBuilder result,
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
        case r'imgMenu':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.imgMenu = valueDes;
          break;
        case r'active':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.active = valueDes;
          break;
        case r'restaurantType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(MenuRestaurantTypeEnum),
          ) as MenuRestaurantTypeEnum?;
          if (valueDes == null) continue;
          result.restaurantType = valueDes;
          break;
        case r'alergys':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.alergys = valueDes;
          break;
        case r'restaurantId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.restaurantId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Menu deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MenuBuilder();
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

class MenuRestaurantTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'JAPANESE_FOOD')
  static const MenuRestaurantTypeEnum JAPANESE_FOOD =
      _$menuRestaurantTypeEnum_JAPANESE_FOOD;
  @BuiltValueEnumConst(wireName: r'THAI_FOOD')
  static const MenuRestaurantTypeEnum THAI_FOOD =
      _$menuRestaurantTypeEnum_THAI_FOOD;
  @BuiltValueEnumConst(wireName: r'SPAIN_FOOD')
  static const MenuRestaurantTypeEnum SPAIN_FOOD =
      _$menuRestaurantTypeEnum_SPAIN_FOOD;
  @BuiltValueEnumConst(wireName: r'CHINESE_FOOD')
  static const MenuRestaurantTypeEnum CHINESE_FOOD =
      _$menuRestaurantTypeEnum_CHINESE_FOOD;
  @BuiltValueEnumConst(wireName: r'BRUNCH')
  static const MenuRestaurantTypeEnum BRUNCH = _$menuRestaurantTypeEnum_BRUNCH;
  @BuiltValueEnumConst(wireName: r'COFFEE_STORE')
  static const MenuRestaurantTypeEnum COFFEE_STORE =
      _$menuRestaurantTypeEnum_COFFEE_STORE;
  @BuiltValueEnumConst(wireName: r'BAR')
  static const MenuRestaurantTypeEnum BAR = _$menuRestaurantTypeEnum_BAR;
  @BuiltValueEnumConst(wireName: r'VIETNAM_FOOD')
  static const MenuRestaurantTypeEnum VIETNAM_FOOD =
      _$menuRestaurantTypeEnum_VIETNAM_FOOD;
  @BuiltValueEnumConst(wireName: r'ITALIAN_FOOD')
  static const MenuRestaurantTypeEnum ITALIAN_FOOD =
      _$menuRestaurantTypeEnum_ITALIAN_FOOD;
  @BuiltValueEnumConst(wireName: r'FRENCH_FOOD')
  static const MenuRestaurantTypeEnum FRENCH_FOOD =
      _$menuRestaurantTypeEnum_FRENCH_FOOD;
  @BuiltValueEnumConst(wireName: r'TEX_MEX_FOOD')
  static const MenuRestaurantTypeEnum TEX_MEX_FOOD =
      _$menuRestaurantTypeEnum_TEX_MEX_FOOD;
  @BuiltValueEnumConst(wireName: r'KOREAN_FOOD')
  static const MenuRestaurantTypeEnum KOREAN_FOOD =
      _$menuRestaurantTypeEnum_KOREAN_FOOD;
  @BuiltValueEnumConst(wireName: r'VEGAN_FOOD')
  static const MenuRestaurantTypeEnum VEGAN_FOOD =
      _$menuRestaurantTypeEnum_VEGAN_FOOD;
  @BuiltValueEnumConst(wireName: r'AMERICAN_FOOD')
  static const MenuRestaurantTypeEnum AMERICAN_FOOD =
      _$menuRestaurantTypeEnum_AMERICAN_FOOD;
  @BuiltValueEnumConst(wireName: r'GERMAN_FOOD')
  static const MenuRestaurantTypeEnum GERMAN_FOOD =
      _$menuRestaurantTypeEnum_GERMAN_FOOD;
  @BuiltValueEnumConst(wireName: r'PORTUGUESE_FOOD')
  static const MenuRestaurantTypeEnum PORTUGUESE_FOOD =
      _$menuRestaurantTypeEnum_PORTUGUESE_FOOD;
  @BuiltValueEnumConst(wireName: r'FUSION_FOOD')
  static const MenuRestaurantTypeEnum FUSION_FOOD =
      _$menuRestaurantTypeEnum_FUSION_FOOD;
  @BuiltValueEnumConst(wireName: r'GREEK_FOOD')
  static const MenuRestaurantTypeEnum GREEK_FOOD =
      _$menuRestaurantTypeEnum_GREEK_FOOD;
  @BuiltValueEnumConst(wireName: r'INDIAN_FOOD')
  static const MenuRestaurantTypeEnum INDIAN_FOOD =
      _$menuRestaurantTypeEnum_INDIAN_FOOD;
  @BuiltValueEnumConst(wireName: r'PERUVIAN_FOOD')
  static const MenuRestaurantTypeEnum PERUVIAN_FOOD =
      _$menuRestaurantTypeEnum_PERUVIAN_FOOD;
  @BuiltValueEnumConst(wireName: r'CANADIAN_FOOD')
  static const MenuRestaurantTypeEnum CANADIAN_FOOD =
      _$menuRestaurantTypeEnum_CANADIAN_FOOD;
  @BuiltValueEnumConst(wireName: r'DOMINICAN_FOOD')
  static const MenuRestaurantTypeEnum DOMINICAN_FOOD =
      _$menuRestaurantTypeEnum_DOMINICAN_FOOD;
  @BuiltValueEnumConst(wireName: r'LATIN_AMERICAN_FOOD')
  static const MenuRestaurantTypeEnum LATIN_AMERICAN_FOOD =
      _$menuRestaurantTypeEnum_LATIN_AMERICAN_FOOD;
  @BuiltValueEnumConst(wireName: r'ARGENTINE_FOOD')
  static const MenuRestaurantTypeEnum ARGENTINE_FOOD =
      _$menuRestaurantTypeEnum_ARGENTINE_FOOD;
  @BuiltValueEnumConst(wireName: r'BALKAN_FOOD')
  static const MenuRestaurantTypeEnum BALKAN_FOOD =
      _$menuRestaurantTypeEnum_BALKAN_FOOD;
  @BuiltValueEnumConst(wireName: r'GEORGIAN_FOOD')
  static const MenuRestaurantTypeEnum GEORGIAN_FOOD =
      _$menuRestaurantTypeEnum_GEORGIAN_FOOD;
  @BuiltValueEnumConst(wireName: r'ARABIAN_FOOD')
  static const MenuRestaurantTypeEnum ARABIAN_FOOD =
      _$menuRestaurantTypeEnum_ARABIAN_FOOD;
  @BuiltValueEnumConst(wireName: r'MARRAKECH_FOOD')
  static const MenuRestaurantTypeEnum MARRAKECH_FOOD =
      _$menuRestaurantTypeEnum_MARRAKECH_FOOD;
  @BuiltValueEnumConst(wireName: r'ASIAN_FOOD')
  static const MenuRestaurantTypeEnum ASIAN_FOOD =
      _$menuRestaurantTypeEnum_ASIAN_FOOD;
  @BuiltValueEnumConst(wireName: r'AFRICAN_FOOD')
  static const MenuRestaurantTypeEnum AFRICAN_FOOD =
      _$menuRestaurantTypeEnum_AFRICAN_FOOD;
  @BuiltValueEnumConst(wireName: r'MAGHREB_FOOD')
  static const MenuRestaurantTypeEnum MAGHREB_FOOD =
      _$menuRestaurantTypeEnum_MAGHREB_FOOD;
  @BuiltValueEnumConst(wireName: r'CARIBBEAN_FOOD')
  static const MenuRestaurantTypeEnum CARIBBEAN_FOOD =
      _$menuRestaurantTypeEnum_CARIBBEAN_FOOD;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const MenuRestaurantTypeEnum unknownDefaultOpenApi =
      _$menuRestaurantTypeEnum_unknownDefaultOpenApi;

  static Serializer<MenuRestaurantTypeEnum> get serializer =>
      _$menuRestaurantTypeEnumSerializer;

  const MenuRestaurantTypeEnum._(String name) : super(name);

  static BuiltSet<MenuRestaurantTypeEnum> get values =>
      _$menuRestaurantTypeEnumValues;
  static MenuRestaurantTypeEnum valueOf(String name) =>
      _$menuRestaurantTypeEnumValueOf(name);
}
