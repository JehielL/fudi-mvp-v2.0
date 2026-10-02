//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:fudi_api/src/model/recommendation_summary.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'recommendation_page.g.dart';

/// RecommendationPage
///
/// Properties:
/// * [content]
/// * [totalElements]
/// * [totalPages]
/// * [number]
/// * [size]
/// * [hasNext]
/// * [last]
@BuiltValue()
abstract class RecommendationPage
    implements Built<RecommendationPage, RecommendationPageBuilder> {
  @BuiltValueField(wireName: r'content')
  BuiltList<RecommendationSummary> get content;

  @BuiltValueField(wireName: r'totalElements')
  int get totalElements;

  @BuiltValueField(wireName: r'totalPages')
  int get totalPages;

  @BuiltValueField(wireName: r'number')
  int get number;

  @BuiltValueField(wireName: r'size')
  int get size;

  @BuiltValueField(wireName: r'hasNext')
  bool get hasNext;

  @BuiltValueField(wireName: r'last')
  bool get last;

  RecommendationPage._();

  factory RecommendationPage([void updates(RecommendationPageBuilder b)]) =
      _$RecommendationPage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RecommendationPageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RecommendationPage> get serializer =>
      _$RecommendationPageSerializer();
}

class _$RecommendationPageSerializer
    implements PrimitiveSerializer<RecommendationPage> {
  @override
  final Iterable<Type> types = const [RecommendationPage, _$RecommendationPage];

  @override
  final String wireName = r'RecommendationPage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RecommendationPage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'content';
    yield serializers.serialize(
      object.content,
      specifiedType: const FullType(BuiltList, [
        FullType(RecommendationSummary),
      ]),
    );
    yield r'totalElements';
    yield serializers.serialize(
      object.totalElements,
      specifiedType: const FullType(int),
    );
    yield r'totalPages';
    yield serializers.serialize(
      object.totalPages,
      specifiedType: const FullType(int),
    );
    yield r'number';
    yield serializers.serialize(
      object.number,
      specifiedType: const FullType(int),
    );
    yield r'size';
    yield serializers.serialize(
      object.size,
      specifiedType: const FullType(int),
    );
    yield r'hasNext';
    yield serializers.serialize(
      object.hasNext,
      specifiedType: const FullType(bool),
    );
    yield r'last';
    yield serializers.serialize(
      object.last,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    RecommendationPage object, {
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
    required RecommendationPageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'content':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [
              FullType(RecommendationSummary),
            ]),
          ) as BuiltList<RecommendationSummary>;
          result.content.replace(valueDes);
          break;
        case r'totalElements':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalElements = valueDes;
          break;
        case r'totalPages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalPages = valueDes;
          break;
        case r'number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.number = valueDes;
          break;
        case r'size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.size = valueDes;
          break;
        case r'hasNext':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hasNext = valueDes;
          break;
        case r'last':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.last = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RecommendationPage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RecommendationPageBuilder();
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
