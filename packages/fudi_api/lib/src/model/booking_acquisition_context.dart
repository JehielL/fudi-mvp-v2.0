//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:fudi_api/src/model/booking_acquisition_source.dart';
import 'package:fudi_api/src/model/fudi_direct_channel.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'booking_acquisition_context.g.dart';

/// BookingAcquisitionContext
///
/// Properties:
/// * [source_]
/// * [installationPublicId]
/// * [channel]
/// * [referrerDomain] - Dominio normalizado del referrer, nunca la URL completa.
/// * [entryPath]
/// * [utmSource]
/// * [utmMedium]
/// * [utmCampaign]
/// * [utmContent]
/// * [utmTerm]
@BuiltValue()
abstract class BookingAcquisitionContext
    implements
        Built<BookingAcquisitionContext, BookingAcquisitionContextBuilder> {
  @BuiltValueField(wireName: r'source')
  BookingAcquisitionSource get source_;
  // enum source_Enum {  FUDI_PLATFORM,  DIRECT_LINK,  WIDGET,  INSTAGRAM,  SOCIAL_LINK,  UNKNOWN,  QR,  FEED,  RECOMMENDATION,  CAMPAIGN,  GOOGLE,  };

  @BuiltValueField(wireName: r'installationPublicId')
  String? get installationPublicId;

  @BuiltValueField(wireName: r'channel')
  FudiDirectChannel? get channel;
  // enum channelEnum {  WEBSITE,  INSTAGRAM,  FACEBOOK,  GOOGLE,  EMAIL,  PRINT,  CAMPAIGN,  OTHER,  };

  /// Dominio normalizado del referrer, nunca la URL completa.
  @BuiltValueField(wireName: r'referrerDomain')
  String? get referrerDomain;

  @BuiltValueField(wireName: r'entryPath')
  String? get entryPath;

  @BuiltValueField(wireName: r'utmSource')
  String? get utmSource;

  @BuiltValueField(wireName: r'utmMedium')
  String? get utmMedium;

  @BuiltValueField(wireName: r'utmCampaign')
  String? get utmCampaign;

  @BuiltValueField(wireName: r'utmContent')
  String? get utmContent;

  @BuiltValueField(wireName: r'utmTerm')
  String? get utmTerm;

  BookingAcquisitionContext._();

  factory BookingAcquisitionContext([
    void updates(BookingAcquisitionContextBuilder b),
  ]) = _$BookingAcquisitionContext;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BookingAcquisitionContextBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BookingAcquisitionContext> get serializer =>
      _$BookingAcquisitionContextSerializer();
}

class _$BookingAcquisitionContextSerializer
    implements PrimitiveSerializer<BookingAcquisitionContext> {
  @override
  final Iterable<Type> types = const [
    BookingAcquisitionContext,
    _$BookingAcquisitionContext,
  ];

  @override
  final String wireName = r'BookingAcquisitionContext';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BookingAcquisitionContext object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'source';
    yield serializers.serialize(
      object.source_,
      specifiedType: const FullType(BookingAcquisitionSource),
    );
    if (object.installationPublicId != null) {
      yield r'installationPublicId';
      yield serializers.serialize(
        object.installationPublicId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.channel != null) {
      yield r'channel';
      yield serializers.serialize(
        object.channel,
        specifiedType: const FullType(FudiDirectChannel),
      );
    }
    if (object.referrerDomain != null) {
      yield r'referrerDomain';
      yield serializers.serialize(
        object.referrerDomain,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.entryPath != null) {
      yield r'entryPath';
      yield serializers.serialize(
        object.entryPath,
        specifiedType: const FullType.nullable(String),
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
    if (object.utmTerm != null) {
      yield r'utmTerm';
      yield serializers.serialize(
        object.utmTerm,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BookingAcquisitionContext object, {
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
    required BookingAcquisitionContextBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'source':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BookingAcquisitionSource),
          ) as BookingAcquisitionSource;
          result.source_ = valueDes;
          break;
        case r'installationPublicId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.installationPublicId = valueDes;
          break;
        case r'channel':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(FudiDirectChannel),
          ) as FudiDirectChannel?;
          if (valueDes == null) continue;
          result.channel = valueDes;
          break;
        case r'referrerDomain':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.referrerDomain = valueDes;
          break;
        case r'entryPath':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.entryPath = valueDes;
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
        case r'utmTerm':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.utmTerm = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BookingAcquisitionContext deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BookingAcquisitionContextBuilder();
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
