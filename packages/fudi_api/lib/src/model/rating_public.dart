//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:fudi_api/src/model/rating_author_public.dart';
import 'package:built_collection/built_collection.dart';
import 'package:fudi_api/src/model/rating_restaurant_summary.dart';
import 'package:fudi_api/src/model/rating_image_public.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rating_public.g.dart';

/// RatingPublic
///
/// Properties:
/// * [id]
/// * [score]
/// * [comment]
/// * [likesCount]
/// * [restaurant]
/// * [author]
/// * [images]
@BuiltValue()
abstract class RatingPublic
    implements Built<RatingPublic, RatingPublicBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'score')
  int? get score;

  @BuiltValueField(wireName: r'comment')
  String? get comment;

  @BuiltValueField(wireName: r'likesCount')
  int? get likesCount;

  @BuiltValueField(wireName: r'restaurant')
  RatingRestaurantSummary? get restaurant;

  @BuiltValueField(wireName: r'author')
  RatingAuthorPublic? get author;

  @BuiltValueField(wireName: r'images')
  BuiltList<RatingImagePublic>? get images;

  RatingPublic._();

  factory RatingPublic([void updates(RatingPublicBuilder b)]) = _$RatingPublic;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RatingPublicBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RatingPublic> get serializer => _$RatingPublicSerializer();
}

class _$RatingPublicSerializer implements PrimitiveSerializer<RatingPublic> {
  @override
  final Iterable<Type> types = const [RatingPublic, _$RatingPublic];

  @override
  final String wireName = r'RatingPublic';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RatingPublic object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
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
    if (object.likesCount != null) {
      yield r'likesCount';
      yield serializers.serialize(
        object.likesCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.restaurant != null) {
      yield r'restaurant';
      yield serializers.serialize(
        object.restaurant,
        specifiedType: const FullType(RatingRestaurantSummary),
      );
    }
    if (object.author != null) {
      yield r'author';
      yield serializers.serialize(
        object.author,
        specifiedType: const FullType(RatingAuthorPublic),
      );
    }
    if (object.images != null) {
      yield r'images';
      yield serializers.serialize(
        object.images,
        specifiedType: const FullType(BuiltList, [FullType(RatingImagePublic)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RatingPublic object, {
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
    required RatingPublicBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
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
        case r'likesCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.likesCount = valueDes;
          break;
        case r'restaurant':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RatingRestaurantSummary),
          ) as RatingRestaurantSummary?;
          if (valueDes == null) continue;
          result.restaurant.replace(valueDes);
          break;
        case r'author':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RatingAuthorPublic),
          ) as RatingAuthorPublic?;
          if (valueDes == null) continue;
          result.author.replace(valueDes);
          break;
        case r'images':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [
              FullType(RatingImagePublic),
            ]),
          ) as BuiltList<RatingImagePublic>?;
          if (valueDes == null) continue;
          result.images.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RatingPublic deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RatingPublicBuilder();
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
