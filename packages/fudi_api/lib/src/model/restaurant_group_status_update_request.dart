//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'restaurant_group_status_update_request.g.dart';

/// RestaurantGroupStatusUpdateRequest
///
/// Properties:
/// * [status]
@BuiltValue()
abstract class RestaurantGroupStatusUpdateRequest
    implements
        Built<
          RestaurantGroupStatusUpdateRequest,
          RestaurantGroupStatusUpdateRequestBuilder
        > {
  @BuiltValueField(wireName: r'status')
  bool get status;

  RestaurantGroupStatusUpdateRequest._();

  factory RestaurantGroupStatusUpdateRequest([
    void updates(RestaurantGroupStatusUpdateRequestBuilder b),
  ]) = _$RestaurantGroupStatusUpdateRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RestaurantGroupStatusUpdateRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RestaurantGroupStatusUpdateRequest> get serializer =>
      _$RestaurantGroupStatusUpdateRequestSerializer();
}

class _$RestaurantGroupStatusUpdateRequestSerializer
    implements PrimitiveSerializer<RestaurantGroupStatusUpdateRequest> {
  @override
  final Iterable<Type> types = const [
    RestaurantGroupStatusUpdateRequest,
    _$RestaurantGroupStatusUpdateRequest,
  ];

  @override
  final String wireName = r'RestaurantGroupStatusUpdateRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RestaurantGroupStatusUpdateRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    RestaurantGroupStatusUpdateRequest object, {
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
    required RestaurantGroupStatusUpdateRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.status = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RestaurantGroupStatusUpdateRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RestaurantGroupStatusUpdateRequestBuilder();
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
