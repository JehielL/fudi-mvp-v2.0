//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'recommendation_restaurant_public.g.dart';

/// RecommendationRestaurantPublic
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
@BuiltValue(instantiable: false)
abstract class RecommendationRestaurantPublic {
  @BuiltValueField(wireName: r'restaurantId')
  int get restaurantId;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'restaurantType')
  String? get restaurantType;

  @BuiltValueField(wireName: r'city')
  String? get city;

  @BuiltValueField(wireName: r'address')
  String? get address;

  @BuiltValueField(wireName: r'countryCode')
  String? get countryCode;

  @BuiltValueField(wireName: r'coverImageUrl')
  String? get coverImageUrl;

  @BuiltValueField(wireName: r'averageRating')
  double? get averageRating;

  @BuiltValueField(wireName: r'position')
  int get position;

  @BuiltValueField(wireName: r'editorialNote')
  String? get editorialNote;

  @BuiltValueSerializer(custom: true)
  static Serializer<RecommendationRestaurantPublic> get serializer =>
      _$RecommendationRestaurantPublicSerializer();
}

class _$RecommendationRestaurantPublicSerializer
    implements PrimitiveSerializer<RecommendationRestaurantPublic> {
  @override
  final Iterable<Type> types = const [RecommendationRestaurantPublic];

  @override
  final String wireName = r'RecommendationRestaurantPublic';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RecommendationRestaurantPublic object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'restaurantId';
    yield serializers.serialize(
      object.restaurantId,
      specifiedType: const FullType(int),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.restaurantType != null) {
      yield r'restaurantType';
      yield serializers.serialize(
        object.restaurantType,
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
    if (object.address != null) {
      yield r'address';
      yield serializers.serialize(
        object.address,
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
    if (object.averageRating != null) {
      yield r'averageRating';
      yield serializers.serialize(
        object.averageRating,
        specifiedType: const FullType.nullable(double),
      );
    }
    yield r'position';
    yield serializers.serialize(
      object.position,
      specifiedType: const FullType(int),
    );
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
    RecommendationRestaurantPublic object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(
      serializers,
      object,
      specifiedType: specifiedType,
    ).toList();
  }

  @override
  RecommendationRestaurantPublic deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(
      serialized,
      specifiedType: FullType($RecommendationRestaurantPublic),
    ) as $RecommendationRestaurantPublic;
  }
}

/// a concrete implementation of [RecommendationRestaurantPublic], since [RecommendationRestaurantPublic] is not instantiable
@BuiltValue(instantiable: true)
abstract class $RecommendationRestaurantPublic
    implements
        RecommendationRestaurantPublic,
        Built<
          $RecommendationRestaurantPublic,
          $RecommendationRestaurantPublicBuilder
        > {
  $RecommendationRestaurantPublic._();

  factory $RecommendationRestaurantPublic([
    void Function($RecommendationRestaurantPublicBuilder)? updates,
  ]) = _$$RecommendationRestaurantPublic;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($RecommendationRestaurantPublicBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$RecommendationRestaurantPublic> get serializer =>
      _$$RecommendationRestaurantPublicSerializer();
}

class _$$RecommendationRestaurantPublicSerializer
    implements PrimitiveSerializer<$RecommendationRestaurantPublic> {
  @override
  final Iterable<Type> types = const [
    $RecommendationRestaurantPublic,
    _$$RecommendationRestaurantPublic,
  ];

  @override
  final String wireName = r'$RecommendationRestaurantPublic';

  @override
  Object serialize(
    Serializers serializers,
    $RecommendationRestaurantPublic object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(
      object,
      specifiedType: FullType(RecommendationRestaurantPublic),
    )!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RecommendationRestaurantPublicBuilder result,
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
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'restaurantType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.restaurantType = valueDes;
          break;
        case r'city':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.city = valueDes;
          break;
        case r'address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.address = valueDes;
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
        case r'averageRating':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.averageRating = valueDes;
          break;
        case r'position':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
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
  $RecommendationRestaurantPublic deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $RecommendationRestaurantPublicBuilder();
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
