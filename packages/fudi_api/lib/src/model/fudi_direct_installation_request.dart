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

part 'fudi_direct_installation_request.g.dart';

/// FudiDirectInstallationRequest
///
/// Properties:
/// * [name]
/// * [type]
/// * [channel]
/// * [status]
/// * [allowedDomains]
/// * [utmSource]
/// * [utmMedium]
/// * [utmCampaign]
/// * [utmContent]
@BuiltValue()
abstract class FudiDirectInstallationRequest
    implements
        Built<
          FudiDirectInstallationRequest,
          FudiDirectInstallationRequestBuilder
        > {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'type')
  FudiDirectInstallationType get type;
  // enum typeEnum {  DIRECT_LINK,  WIDGET_MODAL,  WIDGET_INLINE,  QR,  };

  @BuiltValueField(wireName: r'channel')
  FudiDirectChannel get channel;
  // enum channelEnum {  WEBSITE,  INSTAGRAM,  FACEBOOK,  GOOGLE,  EMAIL,  PRINT,  CAMPAIGN,  OTHER,  };

  @BuiltValueField(wireName: r'status')
  FudiDirectInstallationStatus? get status;
  // enum statusEnum {  ACTIVE,  DISABLED,  ARCHIVED,  };

  @BuiltValueField(wireName: r'allowedDomains')
  BuiltList<String> get allowedDomains;

  @BuiltValueField(wireName: r'utmSource')
  String? get utmSource;

  @BuiltValueField(wireName: r'utmMedium')
  String? get utmMedium;

  @BuiltValueField(wireName: r'utmCampaign')
  String? get utmCampaign;

  @BuiltValueField(wireName: r'utmContent')
  String? get utmContent;

  FudiDirectInstallationRequest._();

  factory FudiDirectInstallationRequest([
    void updates(FudiDirectInstallationRequestBuilder b),
  ]) = _$FudiDirectInstallationRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FudiDirectInstallationRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FudiDirectInstallationRequest> get serializer =>
      _$FudiDirectInstallationRequestSerializer();
}

class _$FudiDirectInstallationRequestSerializer
    implements PrimitiveSerializer<FudiDirectInstallationRequest> {
  @override
  final Iterable<Type> types = const [
    FudiDirectInstallationRequest,
    _$FudiDirectInstallationRequest,
  ];

  @override
  final String wireName = r'FudiDirectInstallationRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FudiDirectInstallationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(FudiDirectInstallationType),
    );
    yield r'channel';
    yield serializers.serialize(
      object.channel,
      specifiedType: const FullType(FudiDirectChannel),
    );
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(FudiDirectInstallationStatus),
      );
    }
    yield r'allowedDomains';
    yield serializers.serialize(
      object.allowedDomains,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
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
  }

  @override
  Object serialize(
    Serializers serializers,
    FudiDirectInstallationRequest object, {
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
    required FudiDirectInstallationRequestBuilder result,
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
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FudiDirectInstallationType),
          ) as FudiDirectInstallationType;
          result.type = valueDes;
          break;
        case r'channel':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FudiDirectChannel),
          ) as FudiDirectChannel;
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
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FudiDirectInstallationRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FudiDirectInstallationRequestBuilder();
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
