//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_v1_menus_menu_id_sections_reorder_put_request_items_inner.g.dart';

/// ApiV1MenusMenuIdSectionsReorderPutRequestItemsInner
///
/// Properties:
/// * [sectionId]
/// * [position]
@BuiltValue()
abstract class ApiV1MenusMenuIdSectionsReorderPutRequestItemsInner
    implements
        Built<
          ApiV1MenusMenuIdSectionsReorderPutRequestItemsInner,
          ApiV1MenusMenuIdSectionsReorderPutRequestItemsInnerBuilder
        > {
  @BuiltValueField(wireName: r'sectionId')
  int get sectionId;

  @BuiltValueField(wireName: r'position')
  int get position;

  ApiV1MenusMenuIdSectionsReorderPutRequestItemsInner._();

  factory ApiV1MenusMenuIdSectionsReorderPutRequestItemsInner([
    void updates(ApiV1MenusMenuIdSectionsReorderPutRequestItemsInnerBuilder b),
  ]) = _$ApiV1MenusMenuIdSectionsReorderPutRequestItemsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
    ApiV1MenusMenuIdSectionsReorderPutRequestItemsInnerBuilder b,
  ) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiV1MenusMenuIdSectionsReorderPutRequestItemsInner>
  get serializer =>
      _$ApiV1MenusMenuIdSectionsReorderPutRequestItemsInnerSerializer();
}

class _$ApiV1MenusMenuIdSectionsReorderPutRequestItemsInnerSerializer
    implements
        PrimitiveSerializer<
          ApiV1MenusMenuIdSectionsReorderPutRequestItemsInner
        > {
  @override
  final Iterable<Type> types = const [
    ApiV1MenusMenuIdSectionsReorderPutRequestItemsInner,
    _$ApiV1MenusMenuIdSectionsReorderPutRequestItemsInner,
  ];

  @override
  final String wireName =
      r'ApiV1MenusMenuIdSectionsReorderPutRequestItemsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiV1MenusMenuIdSectionsReorderPutRequestItemsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'sectionId';
    yield serializers.serialize(
      object.sectionId,
      specifiedType: const FullType(int),
    );
    yield r'position';
    yield serializers.serialize(
      object.position,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ApiV1MenusMenuIdSectionsReorderPutRequestItemsInner object, {
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
    required ApiV1MenusMenuIdSectionsReorderPutRequestItemsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sectionId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.sectionId = valueDes;
          break;
        case r'position':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.position = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApiV1MenusMenuIdSectionsReorderPutRequestItemsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiV1MenusMenuIdSectionsReorderPutRequestItemsInnerBuilder();
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
