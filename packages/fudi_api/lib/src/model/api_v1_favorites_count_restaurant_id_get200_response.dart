//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_v1_favorites_count_restaurant_id_get200_response.g.dart';

/// ApiV1FavoritesCountRestaurantIdGet200Response
///
/// Properties:
/// * [count]
@BuiltValue()
abstract class ApiV1FavoritesCountRestaurantIdGet200Response
    implements
        Built<
          ApiV1FavoritesCountRestaurantIdGet200Response,
          ApiV1FavoritesCountRestaurantIdGet200ResponseBuilder
        > {
  @BuiltValueField(wireName: r'count')
  int? get count;

  ApiV1FavoritesCountRestaurantIdGet200Response._();

  factory ApiV1FavoritesCountRestaurantIdGet200Response([
    void updates(ApiV1FavoritesCountRestaurantIdGet200ResponseBuilder b),
  ]) = _$ApiV1FavoritesCountRestaurantIdGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
    ApiV1FavoritesCountRestaurantIdGet200ResponseBuilder b,
  ) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiV1FavoritesCountRestaurantIdGet200Response>
  get serializer => _$ApiV1FavoritesCountRestaurantIdGet200ResponseSerializer();
}

class _$ApiV1FavoritesCountRestaurantIdGet200ResponseSerializer
    implements
        PrimitiveSerializer<ApiV1FavoritesCountRestaurantIdGet200Response> {
  @override
  final Iterable<Type> types = const [
    ApiV1FavoritesCountRestaurantIdGet200Response,
    _$ApiV1FavoritesCountRestaurantIdGet200Response,
  ];

  @override
  final String wireName = r'ApiV1FavoritesCountRestaurantIdGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiV1FavoritesCountRestaurantIdGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.count != null) {
      yield r'count';
      yield serializers.serialize(
        object.count,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApiV1FavoritesCountRestaurantIdGet200Response object, {
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
    required ApiV1FavoritesCountRestaurantIdGet200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.count = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApiV1FavoritesCountRestaurantIdGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiV1FavoritesCountRestaurantIdGet200ResponseBuilder();
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
