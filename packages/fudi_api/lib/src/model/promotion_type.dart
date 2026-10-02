//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'promotion_type.g.dart';

class PromotionType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'PERCENTAGE_DISCOUNT')
  static const PromotionType PERCENTAGE_DISCOUNT = _$PERCENTAGE_DISCOUNT;
  @BuiltValueEnumConst(wireName: r'FIXED_DISCOUNT')
  static const PromotionType FIXED_DISCOUNT = _$FIXED_DISCOUNT;
  @BuiltValueEnumConst(wireName: r'HAPPY_HOUR')
  static const PromotionType HAPPY_HOUR = _$HAPPY_HOUR;
  @BuiltValueEnumConst(wireName: r'TWO_FOR_ONE')
  static const PromotionType TWO_FOR_ONE = _$TWO_FOR_ONE;
  @BuiltValueEnumConst(wireName: r'FREE_ITEM')
  static const PromotionType FREE_ITEM = _$FREE_ITEM;
  @BuiltValueEnumConst(wireName: r'FIRST_BOOKING')
  static const PromotionType FIRST_BOOKING = _$FIRST_BOOKING;
  @BuiltValueEnumConst(wireName: r'LOYALTY')
  static const PromotionType LOYALTY = _$LOYALTY;
  @BuiltValueEnumConst(wireName: r'SPECIAL_MENU')
  static const PromotionType SPECIAL_MENU = _$SPECIAL_MENU;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const PromotionType unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<PromotionType> get serializer => _$promotionTypeSerializer;

  const PromotionType._(String name) : super(name);

  static BuiltSet<PromotionType> get values => _$values;
  static PromotionType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class PromotionTypeMixin = Object with _$PromotionTypeMixin;
