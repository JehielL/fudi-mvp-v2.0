//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:fudi_api/src/model/restaurant_public.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'favorite_response.g.dart';

/// FavoriteResponse
///
/// Properties:
/// * [id]
/// * [createdAt]
/// * [restaurant]
@BuiltValue()
abstract class FavoriteResponse
    implements Built<FavoriteResponse, FavoriteResponseBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'createdAt')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'restaurant')
  RestaurantPublic? get restaurant;

  FavoriteResponse._();

  factory FavoriteResponse([void updates(FavoriteResponseBuilder b)]) =
      _$FavoriteResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FavoriteResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FavoriteResponse> get serializer =>
      _$FavoriteResponseSerializer();
}

class _$FavoriteResponseSerializer
    implements PrimitiveSerializer<FavoriteResponse> {
  @override
  final Iterable<Type> types = const [FavoriteResponse, _$FavoriteResponse];

  @override
  final String wireName = r'FavoriteResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FavoriteResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.createdAt != null) {
      yield r'createdAt';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.restaurant != null) {
      yield r'restaurant';
      yield serializers.serialize(
        object.restaurant,
        specifiedType: const FullType(RestaurantPublic),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FavoriteResponse object, {
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
    required FavoriteResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.createdAt = valueDes;
          break;
        case r'restaurant':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RestaurantPublic),
          ) as RestaurantPublic?;
          if (valueDes == null) continue;
          result.restaurant = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FavoriteResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FavoriteResponseBuilder();
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
