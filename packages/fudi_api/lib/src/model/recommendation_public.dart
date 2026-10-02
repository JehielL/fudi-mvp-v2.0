//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:fudi_api/src/model/recommendation_restaurant_public.dart';
import 'package:fudi_api/src/model/recommendation_summary.dart';
import 'package:fudi_api/src/model/recommendation_category.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'recommendation_public.g.dart';

/// RecommendationPublic
///
/// Properties:
/// * [id]
/// * [slug]
/// * [title]
/// * [subtitle]
/// * [excerpt]
/// * [category]
/// * [countryCode]
/// * [city]
/// * [heroImageUrl]
/// * [cardImageUrl]
/// * [featured]
/// * [publishedAt]
/// * [readTimeMinutes]
/// * [restaurantsCount]
/// * [commentsCount]
/// * [body]
/// * [restaurants] - Solo restaurantes públicos, ordenados por position e id de asociación.
@BuiltValue()
abstract class RecommendationPublic
    implements
        RecommendationSummary,
        Built<RecommendationPublic, RecommendationPublicBuilder> {
  /// Solo restaurantes públicos, ordenados por position e id de asociación.
  @BuiltValueField(wireName: r'restaurants')
  BuiltList<RecommendationRestaurantPublic> get restaurants;

  @BuiltValueField(wireName: r'body')
  String get body;

  RecommendationPublic._();

  factory RecommendationPublic([void updates(RecommendationPublicBuilder b)]) =
      _$RecommendationPublic;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RecommendationPublicBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RecommendationPublic> get serializer =>
      _$RecommendationPublicSerializer();
}

class _$RecommendationPublicSerializer
    implements PrimitiveSerializer<RecommendationPublic> {
  @override
  final Iterable<Type> types = const [
    RecommendationPublic,
    _$RecommendationPublic,
  ];

  @override
  final String wireName = r'RecommendationPublic';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RecommendationPublic object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'featured';
    yield serializers.serialize(
      object.featured,
      specifiedType: const FullType(bool),
    );
    if (object.city != null) {
      yield r'city';
      yield serializers.serialize(
        object.city,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.publishedAt != null) {
      yield r'publishedAt';
      yield serializers.serialize(
        object.publishedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.readTimeMinutes != null) {
      yield r'readTimeMinutes';
      yield serializers.serialize(
        object.readTimeMinutes,
        specifiedType: const FullType.nullable(int),
      );
    }
    yield r'restaurantsCount';
    yield serializers.serialize(
      object.restaurantsCount,
      specifiedType: const FullType(int),
    );
    yield r'body';
    yield serializers.serialize(
      object.body,
      specifiedType: const FullType(String),
    );
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    if (object.cardImageUrl != null) {
      yield r'cardImageUrl';
      yield serializers.serialize(
        object.cardImageUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.heroImageUrl != null) {
      yield r'heroImageUrl';
      yield serializers.serialize(
        object.heroImageUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'countryCode';
    yield serializers.serialize(
      object.countryCode,
      specifiedType: const FullType(String),
    );
    yield r'commentsCount';
    yield serializers.serialize(
      object.commentsCount,
      specifiedType: const FullType(int),
    );
    if (object.subtitle != null) {
      yield r'subtitle';
      yield serializers.serialize(
        object.subtitle,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'restaurants';
    yield serializers.serialize(
      object.restaurants,
      specifiedType: const FullType(BuiltList, [
        FullType(RecommendationRestaurantPublic),
      ]),
    );
    yield r'id';
    yield serializers.serialize(object.id, specifiedType: const FullType(int));
    if (object.excerpt != null) {
      yield r'excerpt';
      yield serializers.serialize(
        object.excerpt,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'category';
    yield serializers.serialize(
      object.category,
      specifiedType: const FullType(RecommendationCategory),
    );
    yield r'slug';
    yield serializers.serialize(
      object.slug,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    RecommendationPublic object, {
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
    required RecommendationPublicBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'featured':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.featured = valueDes;
          break;
        case r'city':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.city = valueDes;
          break;
        case r'publishedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.publishedAt = valueDes;
          break;
        case r'readTimeMinutes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.readTimeMinutes = valueDes;
          break;
        case r'restaurantsCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.restaurantsCount = valueDes;
          break;
        case r'body':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.body = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'cardImageUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.cardImageUrl = valueDes;
          break;
        case r'heroImageUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.heroImageUrl = valueDes;
          break;
        case r'countryCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.countryCode = valueDes;
          break;
        case r'commentsCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.commentsCount = valueDes;
          break;
        case r'subtitle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.subtitle = valueDes;
          break;
        case r'restaurants':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [
              FullType(RecommendationRestaurantPublic),
            ]),
          ) as BuiltList<RecommendationRestaurantPublic>;
          result.restaurants.replace(valueDes);
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'excerpt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.excerpt = valueDes;
          break;
        case r'category':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RecommendationCategory),
          ) as RecommendationCategory;
          result.category = valueDes;
          break;
        case r'slug':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.slug = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RecommendationPublic deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RecommendationPublicBuilder();
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
