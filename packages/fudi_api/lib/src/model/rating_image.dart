//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rating_image.g.dart';

/// RatingImage
///
/// Properties:
/// * [id]
/// * [imagePath] - Nombre del archivo guardado
/// * [imageOrder] - Orden de la imagen (1, 2, 3)
@BuiltValue()
abstract class RatingImage implements Built<RatingImage, RatingImageBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  /// Nombre del archivo guardado
  @BuiltValueField(wireName: r'imagePath')
  String? get imagePath;

  /// Orden de la imagen (1, 2, 3)
  @BuiltValueField(wireName: r'imageOrder')
  int? get imageOrder;

  RatingImage._();

  factory RatingImage([void updates(RatingImageBuilder b)]) = _$RatingImage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RatingImageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RatingImage> get serializer => _$RatingImageSerializer();
}

class _$RatingImageSerializer implements PrimitiveSerializer<RatingImage> {
  @override
  final Iterable<Type> types = const [RatingImage, _$RatingImage];

  @override
  final String wireName = r'RatingImage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RatingImage object, {
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
    RatingImage object, {
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
    required RatingImageBuilder result,
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
  RatingImage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RatingImageBuilder();
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
