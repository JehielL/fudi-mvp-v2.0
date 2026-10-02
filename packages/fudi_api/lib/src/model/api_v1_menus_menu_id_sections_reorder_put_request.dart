//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:fudi_api/src/model/api_v1_menus_menu_id_sections_reorder_put_request_items_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_v1_menus_menu_id_sections_reorder_put_request.g.dart';

/// ApiV1MenusMenuIdSectionsReorderPutRequest
///
/// Properties:
/// * [items]
@BuiltValue()
abstract class ApiV1MenusMenuIdSectionsReorderPutRequest
    implements
        Built<
          ApiV1MenusMenuIdSectionsReorderPutRequest,
          ApiV1MenusMenuIdSectionsReorderPutRequestBuilder
        > {
  @BuiltValueField(wireName: r'items')
  BuiltList<ApiV1MenusMenuIdSectionsReorderPutRequestItemsInner> get items;

  ApiV1MenusMenuIdSectionsReorderPutRequest._();

  factory ApiV1MenusMenuIdSectionsReorderPutRequest([
    void updates(ApiV1MenusMenuIdSectionsReorderPutRequestBuilder b),
  ]) = _$ApiV1MenusMenuIdSectionsReorderPutRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApiV1MenusMenuIdSectionsReorderPutRequestBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiV1MenusMenuIdSectionsReorderPutRequest> get serializer =>
      _$ApiV1MenusMenuIdSectionsReorderPutRequestSerializer();
}

class _$ApiV1MenusMenuIdSectionsReorderPutRequestSerializer
    implements PrimitiveSerializer<ApiV1MenusMenuIdSectionsReorderPutRequest> {
  @override
  final Iterable<Type> types = const [
    ApiV1MenusMenuIdSectionsReorderPutRequest,
    _$ApiV1MenusMenuIdSectionsReorderPutRequest,
  ];

  @override
  final String wireName = r'ApiV1MenusMenuIdSectionsReorderPutRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiV1MenusMenuIdSectionsReorderPutRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [
        FullType(ApiV1MenusMenuIdSectionsReorderPutRequestItemsInner),
      ]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ApiV1MenusMenuIdSectionsReorderPutRequest object, {
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
    required ApiV1MenusMenuIdSectionsReorderPutRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [
              FullType(ApiV1MenusMenuIdSectionsReorderPutRequestItemsInner),
            ]),
          ) as BuiltList<ApiV1MenusMenuIdSectionsReorderPutRequestItemsInner>;
          result.items.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApiV1MenusMenuIdSectionsReorderPutRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiV1MenusMenuIdSectionsReorderPutRequestBuilder();
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
