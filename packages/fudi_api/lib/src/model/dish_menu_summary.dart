//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:fudi_api/src/model/dish_menu_restaurant.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dish_menu_summary.g.dart';

/// DishMenuSummary
///
/// Properties:
/// * [id]
/// * [title]
/// * [description]
/// * [imgMenu]
/// * [active]
/// * [restaurantType]
/// * [alergys]
/// * [likesCount]
/// * [restaurant]
@BuiltValue()
abstract class DishMenuSummary
    implements Built<DishMenuSummary, DishMenuSummaryBuilder> {
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
  String? get restaurantType;

  @BuiltValueField(wireName: r'alergys')
  bool? get alergys;

  @BuiltValueField(wireName: r'likesCount')
  int? get likesCount;

  @BuiltValueField(wireName: r'restaurant')
  DishMenuRestaurant? get restaurant;

  DishMenuSummary._();

  factory DishMenuSummary([void updates(DishMenuSummaryBuilder b)]) =
      _$DishMenuSummary;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DishMenuSummaryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DishMenuSummary> get serializer =>
      _$DishMenuSummarySerializer();
}

class _$DishMenuSummarySerializer
    implements PrimitiveSerializer<DishMenuSummary> {
  @override
  final Iterable<Type> types = const [DishMenuSummary, _$DishMenuSummary];

  @override
  final String wireName = r'DishMenuSummary';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DishMenuSummary object, {
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
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.imgMenu != null) {
      yield r'imgMenu';
      yield serializers.serialize(
        object.imgMenu,
        specifiedType: const FullType.nullable(String),
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
        specifiedType: const FullType(String),
      );
    }
    if (object.alergys != null) {
      yield r'alergys';
      yield serializers.serialize(
        object.alergys,
        specifiedType: const FullType(bool),
      );
    }
    if (object.likesCount != null) {
      yield r'likesCount';
      yield serializers.serialize(
        object.likesCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.restaurant != null) {
      yield r'restaurant';
      yield serializers.serialize(
        object.restaurant,
        specifiedType: const FullType(DishMenuRestaurant),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DishMenuSummary object, {
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
    required DishMenuSummaryBuilder result,
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
            specifiedType: const FullType.nullable(String),
          ) as String?;
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
        case r'likesCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.likesCount = valueDes;
          break;
        case r'restaurant':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DishMenuRestaurant),
          ) as DishMenuRestaurant?;
          if (valueDes == null) continue;
          result.restaurant.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DishMenuSummary deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DishMenuSummaryBuilder();
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
