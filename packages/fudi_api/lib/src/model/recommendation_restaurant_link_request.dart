//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'recommendation_restaurant_link_request.g.dart';

/// RecommendationRestaurantLinkRequest
///
/// Properties:
/// * [restaurantId]
/// * [position]
/// * [editorialNote]
@BuiltValue()
abstract class RecommendationRestaurantLinkRequest
    implements
        Built<
          RecommendationRestaurantLinkRequest,
          RecommendationRestaurantLinkRequestBuilder
        > {
  @BuiltValueField(wireName: r'restaurantId')
  int get restaurantId;

  @BuiltValueField(wireName: r'position')
  int? get position;

  @BuiltValueField(wireName: r'editorialNote')
  String? get editorialNote;

  RecommendationRestaurantLinkRequest._();

  factory RecommendationRestaurantLinkRequest([
    void updates(RecommendationRestaurantLinkRequestBuilder b),
  ]) = _$RecommendationRestaurantLinkRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RecommendationRestaurantLinkRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RecommendationRestaurantLinkRequest> get serializer =>
      _$RecommendationRestaurantLinkRequestSerializer();
}

class _$RecommendationRestaurantLinkRequestSerializer
    implements PrimitiveSerializer<RecommendationRestaurantLinkRequest> {
  @override
  final Iterable<Type> types = const [
    RecommendationRestaurantLinkRequest,
    _$RecommendationRestaurantLinkRequest,
  ];

  @override
  final String wireName = r'RecommendationRestaurantLinkRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RecommendationRestaurantLinkRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'restaurantId';
    yield serializers.serialize(
      object.restaurantId,
      specifiedType: const FullType(int),
    );
    if (object.position != null) {
      yield r'position';
      yield serializers.serialize(
        object.position,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.editorialNote != null) {
      yield r'editorialNote';
      yield serializers.serialize(
        object.editorialNote,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RecommendationRestaurantLinkRequest object, {
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
    required RecommendationRestaurantLinkRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'restaurantId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.restaurantId = valueDes;
          break;
        case r'position':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.position = valueDes;
          break;
        case r'editorialNote':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.editorialNote = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RecommendationRestaurantLinkRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RecommendationRestaurantLinkRequestBuilder();
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
