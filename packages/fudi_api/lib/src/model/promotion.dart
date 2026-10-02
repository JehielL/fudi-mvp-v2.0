//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:fudi_api/src/model/date.dart';
import 'package:fudi_api/src/model/promotion_type.dart';
import 'package:fudi_api/src/model/restaurant.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'promotion.g.dart';

/// Promotion
///
/// Properties:
/// * [id]
/// * [title] - Título de la promoción
/// * [description] - Descripción detallada
/// * [type]
/// * [discountValue] - Valor del descuento (% o €)
/// * [fixedPrice] - Precio fijo para SPECIAL_MENU
/// * [startDate]
/// * [endDate]
/// * [startTime] - Hora inicio (para HAPPY_HOUR)
/// * [endTime] - Hora fin (para HAPPY_HOUR)
/// * [validDays] - Días válidos separados por coma (MONDAY,TUESDAY,...)
/// * [minPeople] - Mínimo de personas requeridas
/// * [maxUses] - Máximo de usos permitidos
/// * [currentUses] - Usos actuales
/// * [promoCode] - Código promocional
/// * [active] - Si está activa
/// * [featured] - Si está destacada
/// * [restaurant]
@BuiltValue()
abstract class Promotion implements Built<Promotion, PromotionBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  /// Título de la promoción
  @BuiltValueField(wireName: r'title')
  String? get title;

  /// Descripción detallada
  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'type')
  PromotionType? get type;
  // enum typeEnum {  PERCENTAGE_DISCOUNT,  FIXED_DISCOUNT,  HAPPY_HOUR,  TWO_FOR_ONE,  FREE_ITEM,  FIRST_BOOKING,  LOYALTY,  SPECIAL_MENU,  };

  /// Valor del descuento (% o €)
  @BuiltValueField(wireName: r'discountValue')
  num? get discountValue;

  /// Precio fijo para SPECIAL_MENU
  @BuiltValueField(wireName: r'fixedPrice')
  num? get fixedPrice;

  @BuiltValueField(wireName: r'startDate')
  Date? get startDate;

  @BuiltValueField(wireName: r'endDate')
  Date? get endDate;

  /// Hora inicio (para HAPPY_HOUR)
  @BuiltValueField(wireName: r'startTime')
  String? get startTime;

  /// Hora fin (para HAPPY_HOUR)
  @BuiltValueField(wireName: r'endTime')
  String? get endTime;

  /// Días válidos separados por coma (MONDAY,TUESDAY,...)
  @BuiltValueField(wireName: r'validDays')
  String? get validDays;

  /// Mínimo de personas requeridas
  @BuiltValueField(wireName: r'minPeople')
  int? get minPeople;

  /// Máximo de usos permitidos
  @BuiltValueField(wireName: r'maxUses')
  int? get maxUses;

  /// Usos actuales
  @BuiltValueField(wireName: r'currentUses')
  int? get currentUses;

  /// Código promocional
  @BuiltValueField(wireName: r'promoCode')
  String? get promoCode;

  /// Si está activa
  @BuiltValueField(wireName: r'active')
  bool? get active;

  /// Si está destacada
  @BuiltValueField(wireName: r'featured')
  bool? get featured;

  @BuiltValueField(wireName: r'restaurant')
  Restaurant? get restaurant;

  Promotion._();

  factory Promotion([void updates(PromotionBuilder b)]) = _$Promotion;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PromotionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Promotion> get serializer => _$PromotionSerializer();
}

class _$PromotionSerializer implements PrimitiveSerializer<Promotion> {
  @override
  final Iterable<Type> types = const [Promotion, _$Promotion];

  @override
  final String wireName = r'Promotion';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Promotion object, {
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
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(PromotionType),
      );
    }
    if (object.discountValue != null) {
      yield r'discountValue';
      yield serializers.serialize(
        object.discountValue,
        specifiedType: const FullType(num),
      );
    }
    if (object.fixedPrice != null) {
      yield r'fixedPrice';
      yield serializers.serialize(
        object.fixedPrice,
        specifiedType: const FullType(num),
      );
    }
    if (object.startDate != null) {
      yield r'startDate';
      yield serializers.serialize(
        object.startDate,
        specifiedType: const FullType(Date),
      );
    }
    if (object.endDate != null) {
      yield r'endDate';
      yield serializers.serialize(
        object.endDate,
        specifiedType: const FullType(Date),
      );
    }
    if (object.startTime != null) {
      yield r'startTime';
      yield serializers.serialize(
        object.startTime,
        specifiedType: const FullType(String),
      );
    }
    if (object.endTime != null) {
      yield r'endTime';
      yield serializers.serialize(
        object.endTime,
        specifiedType: const FullType(String),
      );
    }
    if (object.validDays != null) {
      yield r'validDays';
      yield serializers.serialize(
        object.validDays,
        specifiedType: const FullType(String),
      );
    }
    if (object.minPeople != null) {
      yield r'minPeople';
      yield serializers.serialize(
        object.minPeople,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxUses != null) {
      yield r'maxUses';
      yield serializers.serialize(
        object.maxUses,
        specifiedType: const FullType(int),
      );
    }
    if (object.currentUses != null) {
      yield r'currentUses';
      yield serializers.serialize(
        object.currentUses,
        specifiedType: const FullType(int),
      );
    }
    if (object.promoCode != null) {
      yield r'promoCode';
      yield serializers.serialize(
        object.promoCode,
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
    if (object.featured != null) {
      yield r'featured';
      yield serializers.serialize(
        object.featured,
        specifiedType: const FullType(bool),
      );
    }
    if (object.restaurant != null) {
      yield r'restaurant';
      yield serializers.serialize(
        object.restaurant,
        specifiedType: const FullType(Restaurant),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Promotion object, {
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
    required PromotionBuilder result,
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
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(PromotionType),
          ) as PromotionType?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        case r'discountValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.discountValue = valueDes;
          break;
        case r'fixedPrice':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.fixedPrice = valueDes;
          break;
        case r'startDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Date),
          ) as Date?;
          if (valueDes == null) continue;
          result.startDate = valueDes;
          break;
        case r'endDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Date),
          ) as Date?;
          if (valueDes == null) continue;
          result.endDate = valueDes;
          break;
        case r'startTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.startTime = valueDes;
          break;
        case r'endTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.endTime = valueDes;
          break;
        case r'validDays':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.validDays = valueDes;
          break;
        case r'minPeople':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.minPeople = valueDes;
          break;
        case r'maxUses':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxUses = valueDes;
          break;
        case r'currentUses':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.currentUses = valueDes;
          break;
        case r'promoCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.promoCode = valueDes;
          break;
        case r'active':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.active = valueDes;
          break;
        case r'featured':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.featured = valueDes;
          break;
        case r'restaurant':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Restaurant),
          ) as Restaurant?;
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
  Promotion deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PromotionBuilder();
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
