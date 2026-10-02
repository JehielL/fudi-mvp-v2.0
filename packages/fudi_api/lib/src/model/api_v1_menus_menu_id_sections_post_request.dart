//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_v1_menus_menu_id_sections_post_request.g.dart';

/// ApiV1MenusMenuIdSectionsPostRequest
///
/// Properties:
/// * [name]
/// * [position]
/// * [active]
@BuiltValue()
abstract class ApiV1MenusMenuIdSectionsPostRequest
    implements
        Built<
          ApiV1MenusMenuIdSectionsPostRequest,
          ApiV1MenusMenuIdSectionsPostRequestBuilder
        > {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'position')
  int? get position;

  @BuiltValueField(wireName: r'active')
  bool? get active;

  ApiV1MenusMenuIdSectionsPostRequest._();

  factory ApiV1MenusMenuIdSectionsPostRequest([
    void updates(ApiV1MenusMenuIdSectionsPostRequestBuilder b),
  ]) = _$ApiV1MenusMenuIdSectionsPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApiV1MenusMenuIdSectionsPostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiV1MenusMenuIdSectionsPostRequest> get serializer =>
      _$ApiV1MenusMenuIdSectionsPostRequestSerializer();
}

class _$ApiV1MenusMenuIdSectionsPostRequestSerializer
    implements PrimitiveSerializer<ApiV1MenusMenuIdSectionsPostRequest> {
  @override
  final Iterable<Type> types = const [
    ApiV1MenusMenuIdSectionsPostRequest,
    _$ApiV1MenusMenuIdSectionsPostRequest,
  ];

  @override
  final String wireName = r'ApiV1MenusMenuIdSectionsPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiV1MenusMenuIdSectionsPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.position != null) {
      yield r'position';
      yield serializers.serialize(
        object.position,
        specifiedType: const FullType(int),
      );
    }
    if (object.active != null) {
      yield r'active';
      yield serializers.serialize(
        object.active,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApiV1MenusMenuIdSectionsPostRequest object, {
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
    required ApiV1MenusMenuIdSectionsPostRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'position':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.position = valueDes;
          break;
        case r'active':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.active = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApiV1MenusMenuIdSectionsPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiV1MenusMenuIdSectionsPostRequestBuilder();
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
