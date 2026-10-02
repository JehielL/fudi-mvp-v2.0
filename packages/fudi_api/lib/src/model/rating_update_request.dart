//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:fudi_api/src/model/rating_restaurant_reference.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rating_update_request.g.dart';

/// RatingUpdateRequest
///
/// Properties:
/// * [score]
/// * [comment]
/// * [restaurantId]
/// * [restaurant]
@BuiltValue()
abstract class RatingUpdateRequest
    implements Built<RatingUpdateRequest, RatingUpdateRequestBuilder> {
  @BuiltValueField(wireName: r'score')
  int? get score;

  @BuiltValueField(wireName: r'comment')
  String? get comment;

  @BuiltValueField(wireName: r'restaurantId')
  int? get restaurantId;

  @BuiltValueField(wireName: r'restaurant')
  RatingRestaurantReference? get restaurant;

  RatingUpdateRequest._();

  factory RatingUpdateRequest([void updates(RatingUpdateRequestBuilder b)]) =
      _$RatingUpdateRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RatingUpdateRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RatingUpdateRequest> get serializer =>
      _$RatingUpdateRequestSerializer();
}

class _$RatingUpdateRequestSerializer
    implements PrimitiveSerializer<RatingUpdateRequest> {
  @override
  final Iterable<Type> types = const [
    RatingUpdateRequest,
    _$RatingUpdateRequest,
  ];

  @override
  final String wireName = r'RatingUpdateRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RatingUpdateRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.score != null) {
      yield r'score';
      yield serializers.serialize(
        object.score,
        specifiedType: const FullType(int),
      );
    }
    if (object.comment != null) {
      yield r'comment';
      yield serializers.serialize(
        object.comment,
        specifiedType: const FullType(String),
      );
    }
    if (object.restaurantId != null) {
      yield r'restaurantId';
      yield serializers.serialize(
        object.restaurantId,
        specifiedType: const FullType(int),
      );
    }
    if (object.restaurant != null) {
      yield r'restaurant';
      yield serializers.serialize(
        object.restaurant,
        specifiedType: const FullType(RatingRestaurantReference),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RatingUpdateRequest object, {
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
    required RatingUpdateRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'score':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.score = valueDes;
          break;
        case r'comment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.comment = valueDes;
          break;
        case r'restaurantId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.restaurantId = valueDes;
          break;
        case r'restaurant':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RatingRestaurantReference),
          ) as RatingRestaurantReference?;
          if (valueDes == null) continue;
          result.restaurant.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RatingUpdateRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RatingUpdateRequestBuilder();
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
