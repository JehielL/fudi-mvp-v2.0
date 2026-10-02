//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:fudi_api/src/model/recommendation_restaurant_admin.dart';
import 'package:fudi_api/src/model/recommendation_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'recommendation_admin.g.dart';

/// RecommendationAdmin
///
/// Properties:
/// * [status]
/// * [displayOrder]
/// * [createdAt]
/// * [updatedAt]
/// * [restaurants]
@BuiltValue()
abstract class RecommendationAdmin
    implements Built<RecommendationAdmin, RecommendationAdminBuilder> {
  @BuiltValueField(wireName: r'status')
  RecommendationStatus get status;
  // enum statusEnum {  DRAFT,  SCHEDULED,  PUBLISHED,  ARCHIVED,  };

  @BuiltValueField(wireName: r'displayOrder')
  int get displayOrder;

  @BuiltValueField(wireName: r'createdAt')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime? get updatedAt;

  @BuiltValueField(wireName: r'restaurants')
  BuiltList<RecommendationRestaurantAdmin>? get restaurants;

  RecommendationAdmin._();

  factory RecommendationAdmin([void updates(RecommendationAdminBuilder b)]) =
      _$RecommendationAdmin;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RecommendationAdminBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RecommendationAdmin> get serializer =>
      _$RecommendationAdminSerializer();
}

class _$RecommendationAdminSerializer
    implements PrimitiveSerializer<RecommendationAdmin> {
  @override
  final Iterable<Type> types = const [
    RecommendationAdmin,
    _$RecommendationAdmin,
  ];

  @override
  final String wireName = r'RecommendationAdmin';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RecommendationAdmin object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(RecommendationStatus),
    );
    yield r'displayOrder';
    yield serializers.serialize(
      object.displayOrder,
      specifiedType: const FullType(int),
    );
    if (object.createdAt != null) {
      yield r'createdAt';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.updatedAt != null) {
      yield r'updatedAt';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.restaurants != null) {
      yield r'restaurants';
      yield serializers.serialize(
        object.restaurants,
        specifiedType: const FullType(BuiltList, [
          FullType(RecommendationRestaurantAdmin),
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RecommendationAdmin object, {
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
    required RecommendationAdminBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RecommendationStatus),
          ) as RecommendationStatus;
          result.status = valueDes;
          break;
        case r'displayOrder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.displayOrder = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.createdAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.updatedAt = valueDes;
          break;
        case r'restaurants':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [
              FullType(RecommendationRestaurantAdmin),
            ]),
          ) as BuiltList<RecommendationRestaurantAdmin>?;
          if (valueDes == null) continue;
          result.restaurants.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RecommendationAdmin deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RecommendationAdminBuilder();
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
