//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:fudi_api/src/model/recommendation_restaurant_public.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'recommendation_restaurant_admin.g.dart';

/// RecommendationRestaurantAdmin
///
/// Properties:
/// * [restaurantId]
/// * [name]
/// * [restaurantType]
/// * [city]
/// * [address]
/// * [countryCode]
/// * [coverImageUrl]
/// * [averageRating]
/// * [position]
/// * [editorialNote]
/// * [linkId]
@BuiltValue()
abstract class RecommendationRestaurantAdmin
    implements
        RecommendationRestaurantPublic,
        Built<
          RecommendationRestaurantAdmin,
          RecommendationRestaurantAdminBuilder
        > {
  @BuiltValueField(wireName: r'linkId')
  int? get linkId;

  RecommendationRestaurantAdmin._();

  factory RecommendationRestaurantAdmin([
    void updates(RecommendationRestaurantAdminBuilder b),
  ]) = _$RecommendationRestaurantAdmin;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RecommendationRestaurantAdminBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RecommendationRestaurantAdmin> get serializer =>
      _$RecommendationRestaurantAdminSerializer();
}

class _$RecommendationRestaurantAdminSerializer
    implements PrimitiveSerializer<RecommendationRestaurantAdmin> {
  @override
  final Iterable<Type> types = const [
    RecommendationRestaurantAdmin,
    _$RecommendationRestaurantAdmin,
  ];

  @override
  final String wireName = r'RecommendationRestaurantAdmin';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RecommendationRestaurantAdmin object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.editorialNote != null) {
      yield r'editorialNote';
      yield serializers.serialize(
        object.editorialNote,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'linkId';
    yield object.linkId == null
        ? null
        : serializers.serialize(
            object.linkId,
            specifiedType: const FullType.nullable(int),
          );
    if (object.address != null) {
      yield r'address';
      yield serializers.serialize(
        object.address,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.city != null) {
      yield r'city';
      yield serializers.serialize(
        object.city,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.countryCode != null) {
      yield r'countryCode';
      yield serializers.serialize(
        object.countryCode,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.coverImageUrl != null) {
      yield r'coverImageUrl';
      yield serializers.serialize(
        object.coverImageUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.restaurantType != null) {
      yield r'restaurantType';
      yield serializers.serialize(
        object.restaurantType,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.averageRating != null) {
      yield r'averageRating';
      yield serializers.serialize(
        object.averageRating,
        specifiedType: const FullType.nullable(double),
      );
    }
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'position';
    yield serializers.serialize(
      object.position,
      specifiedType: const FullType(int),
    );
    yield r'restaurantId';
    yield serializers.serialize(
      object.restaurantId,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    RecommendationRestaurantAdmin object, {
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
    required RecommendationRestaurantAdminBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'editorialNote':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.editorialNote = valueDes;
          break;
        case r'linkId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.linkId = valueDes;
          break;
        case r'address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.address = valueDes;
          break;
        case r'city':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.city = valueDes;
          break;
        case r'countryCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.countryCode = valueDes;
          break;
        case r'coverImageUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.coverImageUrl = valueDes;
          break;
        case r'restaurantType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.restaurantType = valueDes;
          break;
        case r'averageRating':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.averageRating = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'position':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.position = valueDes;
          break;
        case r'restaurantId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.restaurantId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RecommendationRestaurantAdmin deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RecommendationRestaurantAdminBuilder();
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
