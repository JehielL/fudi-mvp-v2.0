//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'set_local_password_request.g.dart';

/// SetLocalPasswordRequest
///
/// Properties:
/// * [googleIdToken]
/// * [newPassword]
/// * [confirmPassword]
@BuiltValue()
abstract class SetLocalPasswordRequest
    implements Built<SetLocalPasswordRequest, SetLocalPasswordRequestBuilder> {
  @BuiltValueField(wireName: r'googleIdToken')
  String get googleIdToken;

  @BuiltValueField(wireName: r'newPassword')
  String get newPassword;

  @BuiltValueField(wireName: r'confirmPassword')
  String get confirmPassword;

  SetLocalPasswordRequest._();

  factory SetLocalPasswordRequest([
    void updates(SetLocalPasswordRequestBuilder b),
  ]) = _$SetLocalPasswordRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SetLocalPasswordRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SetLocalPasswordRequest> get serializer =>
      _$SetLocalPasswordRequestSerializer();
}

class _$SetLocalPasswordRequestSerializer
    implements PrimitiveSerializer<SetLocalPasswordRequest> {
  @override
  final Iterable<Type> types = const [
    SetLocalPasswordRequest,
    _$SetLocalPasswordRequest,
  ];

  @override
  final String wireName = r'SetLocalPasswordRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SetLocalPasswordRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'googleIdToken';
    yield serializers.serialize(
      object.googleIdToken,
      specifiedType: const FullType(String),
    );
    yield r'newPassword';
    yield serializers.serialize(
      object.newPassword,
      specifiedType: const FullType(String),
    );
    yield r'confirmPassword';
    yield serializers.serialize(
      object.confirmPassword,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SetLocalPasswordRequest object, {
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
    required SetLocalPasswordRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'googleIdToken':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.googleIdToken = valueDes;
          break;
        case r'newPassword':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.newPassword = valueDes;
          break;
        case r'confirmPassword':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.confirmPassword = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SetLocalPasswordRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SetLocalPasswordRequestBuilder();
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
