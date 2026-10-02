//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rating_image_public.g.dart';

/// RatingImagePublic
///
/// Properties:
/// * [id]
/// * [imagePath]
/// * [imageOrder]
@BuiltValue()
abstract class RatingImagePublic
    implements Built<RatingImagePublic, RatingImagePublicBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'imagePath')
  String? get imagePath;

  @BuiltValueField(wireName: r'imageOrder')
  int? get imageOrder;

  RatingImagePublic._();

  factory RatingImagePublic([void updates(RatingImagePublicBuilder b)]) =
      _$RatingImagePublic;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RatingImagePublicBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RatingImagePublic> get serializer =>
      _$RatingImagePublicSerializer();
}

class _$RatingImagePublicSerializer
    implements PrimitiveSerializer<RatingImagePublic> {
  @override
  final Iterable<Type> types = const [RatingImagePublic, _$RatingImagePublic];

  @override
  final String wireName = r'RatingImagePublic';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RatingImagePublic object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.imagePath != null) {
      yield r'imagePath';
      yield serializers.serialize(
        object.imagePath,
        specifiedType: const FullType(String),
      );
    }
    if (object.imageOrder != null) {
      yield r'imageOrder';
      yield serializers.serialize(
        object.imageOrder,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RatingImagePublic object, {
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
    required RatingImagePublicBuilder result,
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
        case r'imagePath':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.imagePath = valueDes;
          break;
        case r'imageOrder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.imageOrder = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RatingImagePublic deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RatingImagePublicBuilder();
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
