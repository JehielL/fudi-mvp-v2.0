//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:fudi_api/src/model/recommendation_category.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'recommendation_summary.g.dart';

/// RecommendationSummary
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
@BuiltValue(instantiable: false)
abstract class RecommendationSummary {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'slug')
  String get slug;

  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'subtitle')
  String? get subtitle;

  @BuiltValueField(wireName: r'excerpt')
  String? get excerpt;

  @BuiltValueField(wireName: r'category')
  RecommendationCategory get category;
  // enum categoryEnum {  BRUNCH,  DATE_NIGHT,  HIDDEN_GEMS,  FAMILY,  TERRACE,  CHEF_PICK,  NEW_OPENINGS,  OFFERS,  TOP_LIST,  EDITORIAL,  };

  @BuiltValueField(wireName: r'countryCode')
  String get countryCode;

  @BuiltValueField(wireName: r'city')
  String? get city;

  @BuiltValueField(wireName: r'heroImageUrl')
  String? get heroImageUrl;

  @BuiltValueField(wireName: r'cardImageUrl')
  String? get cardImageUrl;

  @BuiltValueField(wireName: r'featured')
  bool get featured;

  @BuiltValueField(wireName: r'publishedAt')
  DateTime? get publishedAt;

  @BuiltValueField(wireName: r'readTimeMinutes')
  int? get readTimeMinutes;

  @BuiltValueField(wireName: r'restaurantsCount')
  int get restaurantsCount;

  @BuiltValueField(wireName: r'commentsCount')
  int get commentsCount;

  @BuiltValueSerializer(custom: true)
  static Serializer<RecommendationSummary> get serializer =>
      _$RecommendationSummarySerializer();
}

class _$RecommendationSummarySerializer
    implements PrimitiveSerializer<RecommendationSummary> {
  @override
  final Iterable<Type> types = const [RecommendationSummary];

  @override
  final String wireName = r'RecommendationSummary';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RecommendationSummary object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(object.id, specifiedType: const FullType(int));
    yield r'slug';
    yield serializers.serialize(
      object.slug,
      specifiedType: const FullType(String),
    );
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
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
    yield r'category';
    yield serializers.serialize(
      object.category,
      specifiedType: const FullType(RecommendationCategory),
    );
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
    yield r'featured';
    yield serializers.serialize(
      object.featured,
      specifiedType: const FullType(bool),
    );
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
    yield r'commentsCount';
    yield serializers.serialize(
      object.commentsCount,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    RecommendationSummary object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(
      serializers,
      object,
      specifiedType: specifiedType,
    ).toList();
  }

  @override
  RecommendationSummary deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(
      serialized,
      specifiedType: FullType($RecommendationSummary),
    ) as $RecommendationSummary;
  }
}

/// a concrete implementation of [RecommendationSummary], since [RecommendationSummary] is not instantiable
@BuiltValue(instantiable: true)
abstract class $RecommendationSummary
    implements
        RecommendationSummary,
        Built<$RecommendationSummary, $RecommendationSummaryBuilder> {
  $RecommendationSummary._();

  factory $RecommendationSummary([
    void Function($RecommendationSummaryBuilder)? updates,
  ]) = _$$RecommendationSummary;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($RecommendationSummaryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$RecommendationSummary> get serializer =>
      _$$RecommendationSummarySerializer();
}

class _$$RecommendationSummarySerializer
    implements PrimitiveSerializer<$RecommendationSummary> {
  @override
  final Iterable<Type> types = const [
    $RecommendationSummary,
    _$$RecommendationSummary,
  ];

  @override
  final String wireName = r'$RecommendationSummary';

  @override
  Object serialize(
    Serializers serializers,
    $RecommendationSummary object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(
      object,
      specifiedType: FullType(RecommendationSummary),
    )!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RecommendationSummaryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'slug':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.slug = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
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
        case r'category':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RecommendationCategory),
          ) as RecommendationCategory;
          result.category = valueDes;
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
            specifiedType: const FullType(bool),
          ) as bool;
          result.featured = valueDes;
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
        case r'commentsCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.commentsCount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $RecommendationSummary deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $RecommendationSummaryBuilder();
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
