//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:fudi_api/src/model/fudi_direct_installation_status.dart';
import 'package:fudi_api/src/model/fudi_direct_installation_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'fudi_direct_public_installation_response.g.dart';

/// FudiDirectPublicInstallationResponse
///
/// Properties:
/// * [publicId]
/// * [restaurantId]
/// * [restaurantSlug]
/// * [type]
/// * [status]
/// * [allowedDomains]
@BuiltValue()
abstract class FudiDirectPublicInstallationResponse
    implements
        Built<
          FudiDirectPublicInstallationResponse,
          FudiDirectPublicInstallationResponseBuilder
        > {
  @BuiltValueField(wireName: r'publicId')
  String? get publicId;

  @BuiltValueField(wireName: r'restaurantId')
  int? get restaurantId;

  @BuiltValueField(wireName: r'restaurantSlug')
  String? get restaurantSlug;

  @BuiltValueField(wireName: r'type')
  FudiDirectInstallationType? get type;
  // enum typeEnum {  DIRECT_LINK,  WIDGET_MODAL,  WIDGET_INLINE,  QR,  };

  @BuiltValueField(wireName: r'status')
  FudiDirectInstallationStatus? get status;
  // enum statusEnum {  ACTIVE,  DISABLED,  ARCHIVED,  };

  @BuiltValueField(wireName: r'allowedDomains')
  BuiltList<String>? get allowedDomains;

  FudiDirectPublicInstallationResponse._();

  factory FudiDirectPublicInstallationResponse([
    void updates(FudiDirectPublicInstallationResponseBuilder b),
  ]) = _$FudiDirectPublicInstallationResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FudiDirectPublicInstallationResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FudiDirectPublicInstallationResponse> get serializer =>
      _$FudiDirectPublicInstallationResponseSerializer();
}

class _$FudiDirectPublicInstallationResponseSerializer
    implements PrimitiveSerializer<FudiDirectPublicInstallationResponse> {
  @override
  final Iterable<Type> types = const [
    FudiDirectPublicInstallationResponse,
    _$FudiDirectPublicInstallationResponse,
  ];

  @override
  final String wireName = r'FudiDirectPublicInstallationResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FudiDirectPublicInstallationResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.publicId != null) {
      yield r'publicId';
      yield serializers.serialize(
        object.publicId,
        specifiedType: const FullType(String),
      );
    }
    if (object.restaurantId != null) {
      yield r'restaurantId';
      yield serializers.serialize(
        object.restaurantId,
        specifiedType: const FullType(int),
      );
    }
    if (object.restaurantSlug != null) {
      yield r'restaurantSlug';
      yield serializers.serialize(
        object.restaurantSlug,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(FudiDirectInstallationType),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(FudiDirectInstallationStatus),
      );
    }
    if (object.allowedDomains != null) {
      yield r'allowedDomains';
      yield serializers.serialize(
        object.allowedDomains,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FudiDirectPublicInstallationResponse object, {
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
    required FudiDirectPublicInstallationResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'publicId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.publicId = valueDes;
          break;
        case r'restaurantId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.restaurantId = valueDes;
          break;
        case r'restaurantSlug':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.restaurantSlug = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(FudiDirectInstallationType),
          ) as FudiDirectInstallationType?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
              FudiDirectInstallationStatus,
            ),
          ) as FudiDirectInstallationStatus?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        case r'allowedDomains':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [
              FullType(String),
            ]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.allowedDomains.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FudiDirectPublicInstallationResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FudiDirectPublicInstallationResponseBuilder();
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
