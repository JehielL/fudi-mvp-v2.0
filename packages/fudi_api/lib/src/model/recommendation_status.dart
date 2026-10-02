//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'recommendation_status.g.dart';

/// SCHEDULED existe como estado administrativo, pero no dispone de activación automática en FÜDI 1.0.
class RecommendationStatus extends EnumClass {
  @BuiltValueEnumConst(wireName: r'DRAFT')
  static const RecommendationStatus DRAFT = _$DRAFT;
  @BuiltValueEnumConst(wireName: r'SCHEDULED')
  static const RecommendationStatus SCHEDULED = _$SCHEDULED;
  @BuiltValueEnumConst(wireName: r'PUBLISHED')
  static const RecommendationStatus PUBLISHED = _$PUBLISHED;
  @BuiltValueEnumConst(wireName: r'ARCHIVED')
  static const RecommendationStatus ARCHIVED = _$ARCHIVED;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const RecommendationStatus unknownDefaultOpenApi =
      _$unknownDefaultOpenApi;

  static Serializer<RecommendationStatus> get serializer =>
      _$recommendationStatusSerializer;

  const RecommendationStatus._(String name) : super(name);

  static BuiltSet<RecommendationStatus> get values => _$values;
  static RecommendationStatus valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class RecommendationStatusMixin = Object
    with _$RecommendationStatusMixin;
