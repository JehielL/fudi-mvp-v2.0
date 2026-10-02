//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_v1_favorites_restaurant_id_toggle_post200_response.g.dart';

/// ApiV1FavoritesRestaurantIdTogglePost200Response
///
/// Properties:
/// * [isFavorite]
/// * [message]
@BuiltValue()
abstract class ApiV1FavoritesRestaurantIdTogglePost200Response
    implements
        Built<
          ApiV1FavoritesRestaurantIdTogglePost200Response,
          ApiV1FavoritesRestaurantIdTogglePost200ResponseBuilder
        > {
  @BuiltValueField(wireName: r'isFavorite')
  bool? get isFavorite;

  @BuiltValueField(wireName: r'message')
  String? get message;

  ApiV1FavoritesRestaurantIdTogglePost200Response._();

  factory ApiV1FavoritesRestaurantIdTogglePost200Response([
    void updates(ApiV1FavoritesRestaurantIdTogglePost200ResponseBuilder b),
  ]) = _$ApiV1FavoritesRestaurantIdTogglePost200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
    ApiV1FavoritesRestaurantIdTogglePost200ResponseBuilder b,
  ) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiV1FavoritesRestaurantIdTogglePost200Response>
  get serializer =>
      _$ApiV1FavoritesRestaurantIdTogglePost200ResponseSerializer();
}

class _$ApiV1FavoritesRestaurantIdTogglePost200ResponseSerializer
    implements
        PrimitiveSerializer<ApiV1FavoritesRestaurantIdTogglePost200Response> {
  @override
  final Iterable<Type> types = const [
    ApiV1FavoritesRestaurantIdTogglePost200Response,
    _$ApiV1FavoritesRestaurantIdTogglePost200Response,
  ];

  @override
  final String wireName = r'ApiV1FavoritesRestaurantIdTogglePost200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiV1FavoritesRestaurantIdTogglePost200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.isFavorite != null) {
      yield r'isFavorite';
      yield serializers.serialize(
        object.isFavorite,
        specifiedType: const FullType(bool),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApiV1FavoritesRestaurantIdTogglePost200Response object, {
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
    required ApiV1FavoritesRestaurantIdTogglePost200ResponseBuilder result,
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
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.message = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApiV1FavoritesRestaurantIdTogglePost200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiV1FavoritesRestaurantIdTogglePost200ResponseBuilder();
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
