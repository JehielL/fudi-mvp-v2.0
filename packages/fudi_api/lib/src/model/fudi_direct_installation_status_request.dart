//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:fudi_api/src/model/fudi_direct_installation_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'fudi_direct_installation_status_request.g.dart';

/// FudiDirectInstallationStatusRequest
///
/// Properties:
/// * [status]
@BuiltValue()
abstract class FudiDirectInstallationStatusRequest
    implements
        Built<
          FudiDirectInstallationStatusRequest,
          FudiDirectInstallationStatusRequestBuilder
        > {
  @BuiltValueField(wireName: r'status')
  FudiDirectInstallationStatus get status;
  // enum statusEnum {  ACTIVE,  DISABLED,  ARCHIVED,  };

  FudiDirectInstallationStatusRequest._();

  factory FudiDirectInstallationStatusRequest([
    void updates(FudiDirectInstallationStatusRequestBuilder b),
  ]) = _$FudiDirectInstallationStatusRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FudiDirectInstallationStatusRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FudiDirectInstallationStatusRequest> get serializer =>
      _$FudiDirectInstallationStatusRequestSerializer();
}

class _$FudiDirectInstallationStatusRequestSerializer
    implements PrimitiveSerializer<FudiDirectInstallationStatusRequest> {
  @override
  final Iterable<Type> types = const [
    FudiDirectInstallationStatusRequest,
    _$FudiDirectInstallationStatusRequest,
  ];

  @override
  final String wireName = r'FudiDirectInstallationStatusRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FudiDirectInstallationStatusRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(FudiDirectInstallationStatus),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    FudiDirectInstallationStatusRequest object, {
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
    required FudiDirectInstallationStatusRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FudiDirectInstallationStatus),
          ) as FudiDirectInstallationStatus;
          result.status = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FudiDirectInstallationStatusRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FudiDirectInstallationStatusRequestBuilder();
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
