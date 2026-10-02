//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:fudi_api/src/model/recommendation_page.dart';
import 'package:built_collection/built_collection.dart';
import 'package:fudi_api/src/model/recommendation_summary.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'api_v1_recommendations_get200_response.g.dart';

/// ApiV1RecommendationsGet200Response
///
/// Properties:
/// * [content]
/// * [totalElements]
/// * [totalPages]
/// * [number]
/// * [size]
/// * [hasNext]
/// * [last]
@BuiltValue()
abstract class ApiV1RecommendationsGet200Response
    implements
        Built<
          ApiV1RecommendationsGet200Response,
          ApiV1RecommendationsGet200ResponseBuilder
        > {
  /// One Of [BuiltList<RecommendationSummary>], [RecommendationPage]
  OneOf get oneOf;

  ApiV1RecommendationsGet200Response._();

  factory ApiV1RecommendationsGet200Response([
    void updates(ApiV1RecommendationsGet200ResponseBuilder b),
  ]) = _$ApiV1RecommendationsGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApiV1RecommendationsGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiV1RecommendationsGet200Response> get serializer =>
      _$ApiV1RecommendationsGet200ResponseSerializer();
}

class _$ApiV1RecommendationsGet200ResponseSerializer
    implements PrimitiveSerializer<ApiV1RecommendationsGet200Response> {
  @override
  final Iterable<Type> types = const [
    ApiV1RecommendationsGet200Response,
    _$ApiV1RecommendationsGet200Response,
  ];

  @override
  final String wireName = r'ApiV1RecommendationsGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiV1RecommendationsGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    ApiV1RecommendationsGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(
      oneOf.value,
      specifiedType: FullType(oneOf.valueType),
    )!;
  }

  @override
  ApiV1RecommendationsGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiV1RecommendationsGet200ResponseBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(BuiltList, [FullType(RecommendationSummary)]),
      FullType(RecommendationPage),
    ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(
      oneOfDataSrc,
      specifiedType: targetType,
    ) as OneOf;
    return result.build();
  }
}
