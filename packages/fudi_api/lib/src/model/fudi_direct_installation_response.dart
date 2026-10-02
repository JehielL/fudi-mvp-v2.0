//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:fudi_api/src/model/fudi_direct_installation_status.dart';
import 'package:fudi_api/src/model/fudi_direct_channel.dart';
import 'package:fudi_api/src/model/fudi_direct_installation_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'fudi_direct_installation_response.g.dart';

/// FudiDirectInstallationResponse
///
/// Properties:
/// * [id]
/// * [publicId]
/// * [restaurantId]
/// * [restaurantSlug]
/// * [name]
/// * [type]
/// * [channel]
/// * [status]
/// * [allowedDomains]
/// * [utmSource]
/// * [utmMedium]
/// * [utmCampaign]
/// * [utmContent]
/// * [createdBy]
/// * [createdAt]
/// * [updatedAt]
@BuiltValue()
abstract class FudiDirectInstallationResponse
    implements
        Built<
          FudiDirectInstallationResponse,
          FudiDirectInstallationResponseBuilder
        > {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'publicId')
  String? get publicId;

  @BuiltValueField(wireName: r'restaurantId')
  int? get restaurantId;

  @BuiltValueField(wireName: r'restaurantSlug')
  String? get restaurantSlug;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'type')
  FudiDirectInstallationType? get type;
  // enum typeEnum {  DIRECT_LINK,  WIDGET_MODAL,  WIDGET_INLINE,  QR,  };

  @BuiltValueField(wireName: r'channel')
  FudiDirectChannel? get channel;
  // enum channelEnum {  WEBSITE,  INSTAGRAM,  FACEBOOK,  GOOGLE,  EMAIL,  PRINT,  CAMPAIGN,  OTHER,  };

  @BuiltValueField(wireName: r'status')
  FudiDirectInstallationStatus? get status;
  // enum statusEnum {  ACTIVE,  DISABLED,  ARCHIVED,  };

  @BuiltValueField(wireName: r'allowedDomains')
  BuiltList<String>? get allowedDomains;

  @BuiltValueField(wireName: r'utmSource')
  String? get utmSource;

  @BuiltValueField(wireName: r'utmMedium')
  String? get utmMedium;

  @BuiltValueField(wireName: r'utmCampaign')
  String? get utmCampaign;

  @BuiltValueField(wireName: r'utmContent')
  String? get utmContent;

  @BuiltValueField(wireName: r'createdBy')
  int? get createdBy;

  @BuiltValueField(wireName: r'createdAt')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime? get updatedAt;

  FudiDirectInstallationResponse._();

  factory FudiDirectInstallationResponse([
    void updates(FudiDirectInstallationResponseBuilder b),
  ]) = _$FudiDirectInstallationResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FudiDirectInstallationResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FudiDirectInstallationResponse> get serializer =>
      _$FudiDirectInstallationResponseSerializer();
}

class _$FudiDirectInstallationResponseSerializer
    implements PrimitiveSerializer<FudiDirectInstallationResponse> {
  @override
  final Iterable<Type> types = const [
    FudiDirectInstallationResponse,
    _$FudiDirectInstallationResponse,
  ];

  @override
  final String wireName = r'FudiDirectInstallationResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FudiDirectInstallationResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
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
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(FudiDirectInstallationType),
      );
    }
    if (object.channel != null) {
      yield r'channel';
      yield serializers.serialize(
        object.channel,
        specifiedType: const FullType(FudiDirectChannel),
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
    if (object.utmSource != null) {
      yield r'utmSource';
      yield serializers.serialize(
        object.utmSource,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.utmMedium != null) {
      yield r'utmMedium';
      yield serializers.serialize(
        object.utmMedium,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.utmCampaign != null) {
      yield r'utmCampaign';
      yield serializers.serialize(
        object.utmCampaign,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.utmContent != null) {
      yield r'utmContent';
      yield serializers.serialize(
        object.utmContent,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.createdBy != null) {
      yield r'createdBy';
      yield serializers.serialize(
        object.createdBy,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.createdAt != null) {
      yield r'createdAt';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.updatedAt != null) {
      yield r'updatedAt';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FudiDirectInstallationResponse object, {
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
    required FudiDirectInstallationResponseBuilder result,
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
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(FudiDirectInstallationType),
          ) as FudiDirectInstallationType?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        case r'channel':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(FudiDirectChannel),
          ) as FudiDirectChannel?;
          if (valueDes == null) continue;
          result.channel = valueDes;
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
        case r'utmSource':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.utmSource = valueDes;
          break;
        case r'utmMedium':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.utmMedium = valueDes;
          break;
        case r'utmCampaign':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.utmCampaign = valueDes;
          break;
        case r'utmContent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.utmContent = valueDes;
          break;
        case r'createdBy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.createdBy = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.createdAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FudiDirectInstallationResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FudiDirectInstallationResponseBuilder();
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
