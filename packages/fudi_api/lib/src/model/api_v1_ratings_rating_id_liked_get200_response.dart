//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_v1_ratings_rating_id_liked_get200_response.g.dart';

/// ApiV1RatingsRatingIdLikedGet200Response
///
/// Properties:
/// * [liked] - true si el usuario actual dio like
/// * [likesCount] - Total de likes del rating
@BuiltValue()
abstract class ApiV1RatingsRatingIdLikedGet200Response
    implements
        Built<
          ApiV1RatingsRatingIdLikedGet200Response,
          ApiV1RatingsRatingIdLikedGet200ResponseBuilder
        > {
  /// true si el usuario actual dio like
  @BuiltValueField(wireName: r'liked')
  bool? get liked;

  /// Total de likes del rating
  @BuiltValueField(wireName: r'likesCount')
  int? get likesCount;

  ApiV1RatingsRatingIdLikedGet200Response._();

  factory ApiV1RatingsRatingIdLikedGet200Response([
    void updates(ApiV1RatingsRatingIdLikedGet200ResponseBuilder b),
  ]) = _$ApiV1RatingsRatingIdLikedGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApiV1RatingsRatingIdLikedGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiV1RatingsRatingIdLikedGet200Response> get serializer =>
      _$ApiV1RatingsRatingIdLikedGet200ResponseSerializer();
}

class _$ApiV1RatingsRatingIdLikedGet200ResponseSerializer
    implements PrimitiveSerializer<ApiV1RatingsRatingIdLikedGet200Response> {
  @override
  final Iterable<Type> types = const [
    ApiV1RatingsRatingIdLikedGet200Response,
    _$ApiV1RatingsRatingIdLikedGet200Response,
  ];

  @override
  final String wireName = r'ApiV1RatingsRatingIdLikedGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiV1RatingsRatingIdLikedGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.liked != null) {
      yield r'liked';
      yield serializers.serialize(
        object.liked,
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
  }

  @override
  Object serialize(
    Serializers serializers,
    ApiV1RatingsRatingIdLikedGet200Response object, {
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
    required ApiV1RatingsRatingIdLikedGet200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'liked':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.liked = valueDes;
          break;
        case r'likesCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.likesCount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApiV1RatingsRatingIdLikedGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiV1RatingsRatingIdLikedGet200ResponseBuilder();
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
