// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promotion_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PromotionType _$PERCENTAGE_DISCOUNT = const PromotionType._(
  'PERCENTAGE_DISCOUNT',
);
const PromotionType _$FIXED_DISCOUNT = const PromotionType._('FIXED_DISCOUNT');
const PromotionType _$HAPPY_HOUR = const PromotionType._('HAPPY_HOUR');
const PromotionType _$TWO_FOR_ONE = const PromotionType._('TWO_FOR_ONE');
const PromotionType _$FREE_ITEM = const PromotionType._('FREE_ITEM');
const PromotionType _$FIRST_BOOKING = const PromotionType._('FIRST_BOOKING');
const PromotionType _$LOYALTY = const PromotionType._('LOYALTY');
const PromotionType _$SPECIAL_MENU = const PromotionType._('SPECIAL_MENU');
const PromotionType _$unknownDefaultOpenApi = const PromotionType._(
  'unknownDefaultOpenApi',
);

PromotionType _$valueOf(String name) {
  switch (name) {
    case 'PERCENTAGE_DISCOUNT':
      return _$PERCENTAGE_DISCOUNT;
    case 'FIXED_DISCOUNT':
      return _$FIXED_DISCOUNT;
    case 'HAPPY_HOUR':
      return _$HAPPY_HOUR;
    case 'TWO_FOR_ONE':
      return _$TWO_FOR_ONE;
    case 'FREE_ITEM':
      return _$FREE_ITEM;
    case 'FIRST_BOOKING':
      return _$FIRST_BOOKING;
    case 'LOYALTY':
      return _$LOYALTY;
    case 'SPECIAL_MENU':
      return _$SPECIAL_MENU;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<PromotionType> _$values = BuiltSet<PromotionType>(
  const <PromotionType>[
    _$PERCENTAGE_DISCOUNT,
    _$FIXED_DISCOUNT,
    _$HAPPY_HOUR,
    _$TWO_FOR_ONE,
    _$FREE_ITEM,
    _$FIRST_BOOKING,
    _$LOYALTY,
    _$SPECIAL_MENU,
    _$unknownDefaultOpenApi,
  ],
);

class _$PromotionTypeMeta {
  const _$PromotionTypeMeta();
  PromotionType get PERCENTAGE_DISCOUNT => _$PERCENTAGE_DISCOUNT;
  PromotionType get FIXED_DISCOUNT => _$FIXED_DISCOUNT;
  PromotionType get HAPPY_HOUR => _$HAPPY_HOUR;
  PromotionType get TWO_FOR_ONE => _$TWO_FOR_ONE;
  PromotionType get FREE_ITEM => _$FREE_ITEM;
  PromotionType get FIRST_BOOKING => _$FIRST_BOOKING;
  PromotionType get LOYALTY => _$LOYALTY;
  PromotionType get SPECIAL_MENU => _$SPECIAL_MENU;
  PromotionType get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  PromotionType valueOf(String name) => _$valueOf(name);
  BuiltSet<PromotionType> get values => _$values;
}

mixin _$PromotionTypeMixin {
  // ignore: non_constant_identifier_names
  _$PromotionTypeMeta get PromotionType => const _$PromotionTypeMeta();
}

Serializer<PromotionType> _$promotionTypeSerializer =
    _$PromotionTypeSerializer();

class _$PromotionTypeSerializer implements PrimitiveSerializer<PromotionType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'PERCENTAGE_DISCOUNT': 'PERCENTAGE_DISCOUNT',
    'FIXED_DISCOUNT': 'FIXED_DISCOUNT',
    'HAPPY_HOUR': 'HAPPY_HOUR',
    'TWO_FOR_ONE': 'TWO_FOR_ONE',
    'FREE_ITEM': 'FREE_ITEM',
    'FIRST_BOOKING': 'FIRST_BOOKING',
    'LOYALTY': 'LOYALTY',
    'SPECIAL_MENU': 'SPECIAL_MENU',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'PERCENTAGE_DISCOUNT': 'PERCENTAGE_DISCOUNT',
    'FIXED_DISCOUNT': 'FIXED_DISCOUNT',
    'HAPPY_HOUR': 'HAPPY_HOUR',
    'TWO_FOR_ONE': 'TWO_FOR_ONE',
    'FREE_ITEM': 'FREE_ITEM',
    'FIRST_BOOKING': 'FIRST_BOOKING',
    'LOYALTY': 'LOYALTY',
    'SPECIAL_MENU': 'SPECIAL_MENU',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[PromotionType];
  @override
  final String wireName = 'PromotionType';

  @override
  Object serialize(
    Serializers serializers,
    PromotionType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PromotionType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PromotionType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
