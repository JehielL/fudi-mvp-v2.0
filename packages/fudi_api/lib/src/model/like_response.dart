//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'like_response.g.dart';

/// LikeResponse
///
/// Properties:
/// * [message] - Mensaje descriptivo de la acción realizada
/// * [liked] - Estado actual del like (true si el usuario tiene like activo)
/// * [likesCount] - Número total de likes después de la acción
@BuiltValue()
abstract class LikeResponse
    implements Built<LikeResponse, LikeResponseBuilder> {
  /// Mensaje descriptivo de la acción realizada
  @BuiltValueField(wireName: r'message')
  String? get message;

  /// Estado actual del like (true si el usuario tiene like activo)
  @BuiltValueField(wireName: r'liked')
  bool? get liked;

  /// Número total de likes después de la acción
  @BuiltValueField(wireName: r'likesCount')
  int? get likesCount;

  LikeResponse._();

  factory LikeResponse([void updates(LikeResponseBuilder b)]) = _$LikeResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LikeResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LikeResponse> get serializer => _$LikeResponseSerializer();
}

class _$LikeResponseSerializer implements PrimitiveSerializer<LikeResponse> {
  @override
  final Iterable<Type> types = const [LikeResponse, _$LikeResponse];

  @override
  final String wireName = r'LikeResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LikeResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
    if (object.liked != null) {
      yield r'liked';
      yield serializers.serialize(
        object.liked,
        specifiedType: const FullType(bool),
      );
    }
    if (object.likesCount != null) {
      yield r'likesCount';
      yield serializers.serialize(
        object.likesCount,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LikeResponse object, {
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
    required LikeResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.message = valueDes;
          break;
        case r'liked':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.liked = valueDes;
          break;
        case r'likesCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.likesCount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LikeResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LikeResponseBuilder();
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
