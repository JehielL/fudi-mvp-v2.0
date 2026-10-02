//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'admin_restaurant_owner_assign_request.g.dart';

/// AdminRestaurantOwnerAssignRequest
///
/// Properties:
/// * [userId]
@BuiltValue()
abstract class AdminRestaurantOwnerAssignRequest
    implements
        Built<
          AdminRestaurantOwnerAssignRequest,
          AdminRestaurantOwnerAssignRequestBuilder
        > {
  @BuiltValueField(wireName: r'userId')
  int get userId;

  AdminRestaurantOwnerAssignRequest._();

  factory AdminRestaurantOwnerAssignRequest([
    void updates(AdminRestaurantOwnerAssignRequestBuilder b),
  ]) = _$AdminRestaurantOwnerAssignRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AdminRestaurantOwnerAssignRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AdminRestaurantOwnerAssignRequest> get serializer =>
      _$AdminRestaurantOwnerAssignRequestSerializer();
}

class _$AdminRestaurantOwnerAssignRequestSerializer
    implements PrimitiveSerializer<AdminRestaurantOwnerAssignRequest> {
  @override
  final Iterable<Type> types = const [
    AdminRestaurantOwnerAssignRequest,
    _$AdminRestaurantOwnerAssignRequest,
  ];

  @override
  final String wireName = r'AdminRestaurantOwnerAssignRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AdminRestaurantOwnerAssignRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'userId';
    yield serializers.serialize(
      object.userId,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AdminRestaurantOwnerAssignRequest object, {
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
    required AdminRestaurantOwnerAssignRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'userId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.userId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AdminRestaurantOwnerAssignRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AdminRestaurantOwnerAssignRequestBuilder();
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
