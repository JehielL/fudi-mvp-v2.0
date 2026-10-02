//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'recommendation_category.g.dart';

class RecommendationCategory extends EnumClass {
  @BuiltValueEnumConst(wireName: r'BRUNCH')
  static const RecommendationCategory BRUNCH = _$BRUNCH;
  @BuiltValueEnumConst(wireName: r'DATE_NIGHT')
  static const RecommendationCategory DATE_NIGHT = _$DATE_NIGHT;
  @BuiltValueEnumConst(wireName: r'HIDDEN_GEMS')
  static const RecommendationCategory HIDDEN_GEMS = _$HIDDEN_GEMS;
  @BuiltValueEnumConst(wireName: r'FAMILY')
  static const RecommendationCategory FAMILY = _$FAMILY;
  @BuiltValueEnumConst(wireName: r'TERRACE')
  static const RecommendationCategory TERRACE = _$TERRACE;
  @BuiltValueEnumConst(wireName: r'CHEF_PICK')
  static const RecommendationCategory CHEF_PICK = _$CHEF_PICK;
  @BuiltValueEnumConst(wireName: r'NEW_OPENINGS')
  static const RecommendationCategory NEW_OPENINGS = _$NEW_OPENINGS;
  @BuiltValueEnumConst(wireName: r'OFFERS')
  static const RecommendationCategory OFFERS = _$OFFERS;
  @BuiltValueEnumConst(wireName: r'TOP_LIST')
  static const RecommendationCategory TOP_LIST = _$TOP_LIST;
  @BuiltValueEnumConst(wireName: r'EDITORIAL')
  static const RecommendationCategory EDITORIAL = _$EDITORIAL;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const RecommendationCategory unknownDefaultOpenApi =
      _$unknownDefaultOpenApi;

  static Serializer<RecommendationCategory> get serializer =>
      _$recommendationCategorySerializer;

  const RecommendationCategory._(String name) : super(name);

  static BuiltSet<RecommendationCategory> get values => _$values;
  static RecommendationCategory valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class RecommendationCategoryMixin = Object
    with _$RecommendationCategoryMixin;
