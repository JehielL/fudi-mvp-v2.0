//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_v1_menus_menu_id_sections_section_id_patch_request.g.dart';

/// ApiV1MenusMenuIdSectionsSectionIdPatchRequest
///
/// Properties:
/// * [name]
/// * [position]
/// * [active]
@BuiltValue()
abstract class ApiV1MenusMenuIdSectionsSectionIdPatchRequest
    implements
        Built<
          ApiV1MenusMenuIdSectionsSectionIdPatchRequest,
          ApiV1MenusMenuIdSectionsSectionIdPatchRequestBuilder
        > {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'position')
  int? get position;

  @BuiltValueField(wireName: r'active')
  bool? get active;

  ApiV1MenusMenuIdSectionsSectionIdPatchRequest._();

  factory ApiV1MenusMenuIdSectionsSectionIdPatchRequest([
    void updates(ApiV1MenusMenuIdSectionsSectionIdPatchRequestBuilder b),
  ]) = _$ApiV1MenusMenuIdSectionsSectionIdPatchRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
    ApiV1MenusMenuIdSectionsSectionIdPatchRequestBuilder b,
  ) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiV1MenusMenuIdSectionsSectionIdPatchRequest>
  get serializer => _$ApiV1MenusMenuIdSectionsSectionIdPatchRequestSerializer();
}

class _$ApiV1MenusMenuIdSectionsSectionIdPatchRequestSerializer
    implements
        PrimitiveSerializer<ApiV1MenusMenuIdSectionsSectionIdPatchRequest> {
  @override
  final Iterable<Type> types = const [
    ApiV1MenusMenuIdSectionsSectionIdPatchRequest,
    _$ApiV1MenusMenuIdSectionsSectionIdPatchRequest,
  ];

  @override
  final String wireName = r'ApiV1MenusMenuIdSectionsSectionIdPatchRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiV1MenusMenuIdSectionsSectionIdPatchRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
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
    ApiV1MenusMenuIdSectionsSectionIdPatchRequest object, {
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
    required ApiV1MenusMenuIdSectionsSectionIdPatchRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
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
  ApiV1MenusMenuIdSectionsSectionIdPatchRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiV1MenusMenuIdSectionsSectionIdPatchRequestBuilder();
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
