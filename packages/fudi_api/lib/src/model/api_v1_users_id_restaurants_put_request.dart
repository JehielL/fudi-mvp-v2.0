//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_v1_users_id_restaurants_put_request.g.dart';

/// ApiV1UsersIdRestaurantsPutRequest
///
/// Properties:
/// * [restaurantIds]
@BuiltValue()
abstract class ApiV1UsersIdRestaurantsPutRequest
    implements
        Built<
          ApiV1UsersIdRestaurantsPutRequest,
          ApiV1UsersIdRestaurantsPutRequestBuilder
        > {
  @BuiltValueField(wireName: r'restaurantIds')
  BuiltList<int>? get restaurantIds;

  ApiV1UsersIdRestaurantsPutRequest._();

  factory ApiV1UsersIdRestaurantsPutRequest([
    void updates(ApiV1UsersIdRestaurantsPutRequestBuilder b),
  ]) = _$ApiV1UsersIdRestaurantsPutRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApiV1UsersIdRestaurantsPutRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiV1UsersIdRestaurantsPutRequest> get serializer =>
      _$ApiV1UsersIdRestaurantsPutRequestSerializer();
}

class _$ApiV1UsersIdRestaurantsPutRequestSerializer
    implements PrimitiveSerializer<ApiV1UsersIdRestaurantsPutRequest> {
  @override
  final Iterable<Type> types = const [
    ApiV1UsersIdRestaurantsPutRequest,
    _$ApiV1UsersIdRestaurantsPutRequest,
  ];

  @override
  final String wireName = r'ApiV1UsersIdRestaurantsPutRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiV1UsersIdRestaurantsPutRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.restaurantIds != null) {
      yield r'restaurantIds';
      yield serializers.serialize(
        object.restaurantIds,
        specifiedType: const FullType(BuiltList, [FullType(int)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApiV1UsersIdRestaurantsPutRequest object, {
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
    required ApiV1UsersIdRestaurantsPutRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'restaurantIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(int)]),
          ) as BuiltList<int>?;
          if (valueDes == null) continue;
          result.restaurantIds.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApiV1UsersIdRestaurantsPutRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiV1UsersIdRestaurantsPutRequestBuilder();
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
