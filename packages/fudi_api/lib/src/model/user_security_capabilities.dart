//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_security_capabilities.g.dart';

/// UserSecurityCapabilities
///
/// Properties:
/// * [authProviders]
/// * [hasLocalPassword]
/// * [canChangePassword]
/// * [canSetLocalPassword]
/// * [canRequestPasswordReset]
/// * [requiresGoogleReauthForSetLocalPassword]
@BuiltValue()
abstract class UserSecurityCapabilities
    implements
        Built<UserSecurityCapabilities, UserSecurityCapabilitiesBuilder> {
  @BuiltValueField(wireName: r'authProviders')
  BuiltList<UserSecurityCapabilitiesAuthProvidersEnum>? get authProviders;
  // enum authProvidersEnum {  LOCAL,  GOOGLE,  };

  @BuiltValueField(wireName: r'hasLocalPassword')
  bool? get hasLocalPassword;

  @BuiltValueField(wireName: r'canChangePassword')
  bool? get canChangePassword;

  @BuiltValueField(wireName: r'canSetLocalPassword')
  bool? get canSetLocalPassword;

  @BuiltValueField(wireName: r'canRequestPasswordReset')
  bool? get canRequestPasswordReset;

  @BuiltValueField(wireName: r'requiresGoogleReauthForSetLocalPassword')
  bool? get requiresGoogleReauthForSetLocalPassword;

  UserSecurityCapabilities._();

  factory UserSecurityCapabilities([
    void updates(UserSecurityCapabilitiesBuilder b),
  ]) = _$UserSecurityCapabilities;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserSecurityCapabilitiesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserSecurityCapabilities> get serializer =>
      _$UserSecurityCapabilitiesSerializer();
}

class _$UserSecurityCapabilitiesSerializer
    implements PrimitiveSerializer<UserSecurityCapabilities> {
  @override
  final Iterable<Type> types = const [
    UserSecurityCapabilities,
    _$UserSecurityCapabilities,
  ];

  @override
  final String wireName = r'UserSecurityCapabilities';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserSecurityCapabilities object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.authProviders != null) {
      yield r'authProviders';
      yield serializers.serialize(
        object.authProviders,
        specifiedType: const FullType(BuiltList, [
          FullType(UserSecurityCapabilitiesAuthProvidersEnum),
        ]),
      );
    }
    if (object.hasLocalPassword != null) {
      yield r'hasLocalPassword';
      yield serializers.serialize(
        object.hasLocalPassword,
        specifiedType: const FullType(bool),
      );
    }
    if (object.canChangePassword != null) {
      yield r'canChangePassword';
      yield serializers.serialize(
        object.canChangePassword,
        specifiedType: const FullType(bool),
      );
    }
    if (object.canSetLocalPassword != null) {
      yield r'canSetLocalPassword';
      yield serializers.serialize(
        object.canSetLocalPassword,
        specifiedType: const FullType(bool),
      );
    }
    if (object.canRequestPasswordReset != null) {
      yield r'canRequestPasswordReset';
      yield serializers.serialize(
        object.canRequestPasswordReset,
        specifiedType: const FullType(bool),
      );
    }
    if (object.requiresGoogleReauthForSetLocalPassword != null) {
      yield r'requiresGoogleReauthForSetLocalPassword';
      yield serializers.serialize(
        object.requiresGoogleReauthForSetLocalPassword,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UserSecurityCapabilities object, {
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
    required UserSecurityCapabilitiesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'authProviders':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [
              FullType(UserSecurityCapabilitiesAuthProvidersEnum),
            ]),
          ) as BuiltList<UserSecurityCapabilitiesAuthProvidersEnum>?;
          if (valueDes == null) continue;
          result.authProviders.replace(valueDes);
          break;
        case r'hasLocalPassword':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.hasLocalPassword = valueDes;
          break;
        case r'canChangePassword':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.canChangePassword = valueDes;
          break;
        case r'canSetLocalPassword':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.canSetLocalPassword = valueDes;
          break;
        case r'canRequestPasswordReset':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.canRequestPasswordReset = valueDes;
          break;
        case r'requiresGoogleReauthForSetLocalPassword':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.requiresGoogleReauthForSetLocalPassword = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserSecurityCapabilities deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserSecurityCapabilitiesBuilder();
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

class UserSecurityCapabilitiesAuthProvidersEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'LOCAL')
  static const UserSecurityCapabilitiesAuthProvidersEnum LOCAL =
      _$userSecurityCapabilitiesAuthProvidersEnum_LOCAL;
  @BuiltValueEnumConst(wireName: r'GOOGLE')
  static const UserSecurityCapabilitiesAuthProvidersEnum GOOGLE =
      _$userSecurityCapabilitiesAuthProvidersEnum_GOOGLE;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const UserSecurityCapabilitiesAuthProvidersEnum unknownDefaultOpenApi =
      _$userSecurityCapabilitiesAuthProvidersEnum_unknownDefaultOpenApi;

  static Serializer<UserSecurityCapabilitiesAuthProvidersEnum> get serializer =>
      _$userSecurityCapabilitiesAuthProvidersEnumSerializer;

  const UserSecurityCapabilitiesAuthProvidersEnum._(String name) : super(name);

  static BuiltSet<UserSecurityCapabilitiesAuthProvidersEnum> get values =>
      _$userSecurityCapabilitiesAuthProvidersEnumValues;
  static UserSecurityCapabilitiesAuthProvidersEnum valueOf(String name) =>
      _$userSecurityCapabilitiesAuthProvidersEnumValueOf(name);
}
