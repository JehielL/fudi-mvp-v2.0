//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_v1_favorites_check_restaurant_id_get200_response.g.dart';

/// ApiV1FavoritesCheckRestaurantIdGet200Response
///
/// Properties:
/// * [isFavorite]
@BuiltValue()
abstract class ApiV1FavoritesCheckRestaurantIdGet200Response
    implements
        Built<
          ApiV1FavoritesCheckRestaurantIdGet200Response,
          ApiV1FavoritesCheckRestaurantIdGet200ResponseBuilder
        > {
  @BuiltValueField(wireName: r'isFavorite')
  bool? get isFavorite;

  ApiV1FavoritesCheckRestaurantIdGet200Response._();

  factory ApiV1FavoritesCheckRestaurantIdGet200Response([
    void updates(ApiV1FavoritesCheckRestaurantIdGet200ResponseBuilder b),
  ]) = _$ApiV1FavoritesCheckRestaurantIdGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
    ApiV1FavoritesCheckRestaurantIdGet200ResponseBuilder b,
  ) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiV1FavoritesCheckRestaurantIdGet200Response>
  get serializer => _$ApiV1FavoritesCheckRestaurantIdGet200ResponseSerializer();
}

class _$ApiV1FavoritesCheckRestaurantIdGet200ResponseSerializer
    implements
        PrimitiveSerializer<ApiV1FavoritesCheckRestaurantIdGet200Response> {
  @override
  final Iterable<Type> types = const [
    ApiV1FavoritesCheckRestaurantIdGet200Response,
    _$ApiV1FavoritesCheckRestaurantIdGet200Response,
  ];

  @override
  final String wireName = r'ApiV1FavoritesCheckRestaurantIdGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiV1FavoritesCheckRestaurantIdGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.isFavorite != null) {
      yield r'isFavorite';
      yield serializers.serialize(
        object.isFavorite,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApiV1FavoritesCheckRestaurantIdGet200Response object, {
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
    required ApiV1FavoritesCheckRestaurantIdGet200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'isFavorite':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isFavorite = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApiV1FavoritesCheckRestaurantIdGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiV1FavoritesCheckRestaurantIdGet200ResponseBuilder();
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
