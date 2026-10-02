//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:fudi_api/src/model/recommendation_restaurant_link_request.dart';
import 'package:built_collection/built_collection.dart';
import 'package:fudi_api/src/model/recommendation_status.dart';
import 'package:fudi_api/src/model/recommendation_category.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'recommendation_write_request.g.dart';

/// RecommendationWriteRequest
///
/// Properties:
/// * [title]
/// * [slug]
/// * [subtitle]
/// * [excerpt]
/// * [body]
/// * [category]
/// * [status]
/// * [countryCode]
/// * [city]
/// * [heroImageUrl]
/// * [cardImageUrl]
/// * [featured]
/// * [displayOrder]
/// * [readTimeMinutes]
/// * [publishedAt]
/// * [restaurants]
@BuiltValue()
abstract class RecommendationWriteRequest
    implements
        Built<RecommendationWriteRequest, RecommendationWriteRequestBuilder> {
  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'slug')
  String? get slug;

  @BuiltValueField(wireName: r'subtitle')
  String? get subtitle;

  @BuiltValueField(wireName: r'excerpt')
  String? get excerpt;

  @BuiltValueField(wireName: r'body')
  String? get body;

  @BuiltValueField(wireName: r'category')
  RecommendationCategory? get category;
  // enum categoryEnum {  BRUNCH,  DATE_NIGHT,  HIDDEN_GEMS,  FAMILY,  TERRACE,  CHEF_PICK,  NEW_OPENINGS,  OFFERS,  TOP_LIST,  EDITORIAL,  };

  @BuiltValueField(wireName: r'status')
  RecommendationStatus? get status;
  // enum statusEnum {  DRAFT,  SCHEDULED,  PUBLISHED,  ARCHIVED,  };

  @BuiltValueField(wireName: r'countryCode')
  String get countryCode;

  @BuiltValueField(wireName: r'city')
  String? get city;

  @BuiltValueField(wireName: r'heroImageUrl')
  String? get heroImageUrl;

  @BuiltValueField(wireName: r'cardImageUrl')
  String? get cardImageUrl;

  @BuiltValueField(wireName: r'featured')
  bool? get featured;

  @BuiltValueField(wireName: r'displayOrder')
  int? get displayOrder;

  @BuiltValueField(wireName: r'readTimeMinutes')
  int? get readTimeMinutes;

  @BuiltValueField(wireName: r'publishedAt')
  DateTime? get publishedAt;

  @BuiltValueField(wireName: r'restaurants')
  BuiltList<RecommendationRestaurantLinkRequest>? get restaurants;

  RecommendationWriteRequest._();

  factory RecommendationWriteRequest([
    void updates(RecommendationWriteRequestBuilder b),
  ]) = _$RecommendationWriteRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RecommendationWriteRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RecommendationWriteRequest> get serializer =>
      _$RecommendationWriteRequestSerializer();
}

class _$RecommendationWriteRequestSerializer
    implements PrimitiveSerializer<RecommendationWriteRequest> {
  @override
  final Iterable<Type> types = const [
    RecommendationWriteRequest,
    _$RecommendationWriteRequest,
  ];

  @override
  final String wireName = r'RecommendationWriteRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RecommendationWriteRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    if (object.slug != null) {
      yield r'slug';
      yield serializers.serialize(
        object.slug,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.subtitle != null) {
      yield r'subtitle';
      yield serializers.serialize(
        object.subtitle,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.excerpt != null) {
      yield r'excerpt';
      yield serializers.serialize(
        object.excerpt,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.body != null) {
      yield r'body';
      yield serializers.serialize(
        object.body,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.category != null) {
      yield r'category';
      yield serializers.serialize(
        object.category,
        specifiedType: const FullType(RecommendationCategory),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(RecommendationStatus),
      );
    }
    yield r'countryCode';
    yield serializers.serialize(
      object.countryCode,
      specifiedType: const FullType(String),
    );
    if (object.city != null) {
      yield r'city';
      yield serializers.serialize(
        object.city,
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
    if (object.cardImageUrl != null) {
      yield r'cardImageUrl';
      yield serializers.serialize(
        object.cardImageUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.featured != null) {
      yield r'featured';
      yield serializers.serialize(
        object.featured,
        specifiedType: const FullType(bool),
      );
    }
    if (object.displayOrder != null) {
      yield r'displayOrder';
      yield serializers.serialize(
        object.displayOrder,
        specifiedType: const FullType(int),
      );
    }
    if (object.readTimeMinutes != null) {
      yield r'readTimeMinutes';
      yield serializers.serialize(
        object.readTimeMinutes,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.publishedAt != null) {
      yield r'publishedAt';
      yield serializers.serialize(
        object.publishedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.restaurants != null) {
      yield r'restaurants';
      yield serializers.serialize(
        object.restaurants,
        specifiedType: const FullType(BuiltList, [
          FullType(RecommendationRestaurantLinkRequest),
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RecommendationWriteRequest object, {
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
    required RecommendationWriteRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'slug':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.slug = valueDes;
          break;
        case r'subtitle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.subtitle = valueDes;
          break;
        case r'excerpt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.excerpt = valueDes;
          break;
        case r'body':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.body = valueDes;
          break;
        case r'category':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RecommendationCategory),
          ) as RecommendationCategory?;
          if (valueDes == null) continue;
          result.category = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RecommendationStatus),
          ) as RecommendationStatus?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        case r'countryCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.countryCode = valueDes;
          break;
        case r'city':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.city = valueDes;
          break;
        case r'heroImageUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.heroImageUrl = valueDes;
          break;
        case r'cardImageUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.cardImageUrl = valueDes;
          break;
        case r'featured':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.featured = valueDes;
          break;
        case r'displayOrder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.displayOrder = valueDes;
          break;
        case r'readTimeMinutes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.readTimeMinutes = valueDes;
          break;
        case r'publishedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.publishedAt = valueDes;
          break;
        case r'restaurants':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [
              FullType(RecommendationRestaurantLinkRequest),
            ]),
          ) as BuiltList<RecommendationRestaurantLinkRequest>?;
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
  RecommendationWriteRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RecommendationWriteRequestBuilder();
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
