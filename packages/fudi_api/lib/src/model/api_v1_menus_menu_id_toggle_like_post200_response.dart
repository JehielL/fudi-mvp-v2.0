//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_v1_menus_menu_id_toggle_like_post200_response.g.dart';

/// ApiV1MenusMenuIdToggleLikePost200Response
///
/// Properties:
/// * [liked]
/// * [likesCount]
@BuiltValue()
abstract class ApiV1MenusMenuIdToggleLikePost200Response
    implements
        Built<
          ApiV1MenusMenuIdToggleLikePost200Response,
          ApiV1MenusMenuIdToggleLikePost200ResponseBuilder
        > {
  @BuiltValueField(wireName: r'liked')
  bool? get liked;

  @BuiltValueField(wireName: r'likesCount')
  int? get likesCount;

  ApiV1MenusMenuIdToggleLikePost200Response._();

  factory ApiV1MenusMenuIdToggleLikePost200Response([
    void updates(ApiV1MenusMenuIdToggleLikePost200ResponseBuilder b),
  ]) = _$ApiV1MenusMenuIdToggleLikePost200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApiV1MenusMenuIdToggleLikePost200ResponseBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiV1MenusMenuIdToggleLikePost200Response> get serializer =>
      _$ApiV1MenusMenuIdToggleLikePost200ResponseSerializer();
}

class _$ApiV1MenusMenuIdToggleLikePost200ResponseSerializer
    implements PrimitiveSerializer<ApiV1MenusMenuIdToggleLikePost200Response> {
  @override
  final Iterable<Type> types = const [
    ApiV1MenusMenuIdToggleLikePost200Response,
    _$ApiV1MenusMenuIdToggleLikePost200Response,
  ];

  @override
  final String wireName = r'ApiV1MenusMenuIdToggleLikePost200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiV1MenusMenuIdToggleLikePost200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    ApiV1MenusMenuIdToggleLikePost200Response object, {
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
    required ApiV1MenusMenuIdToggleLikePost200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
  ApiV1MenusMenuIdToggleLikePost200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiV1MenusMenuIdToggleLikePost200ResponseBuilder();
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
