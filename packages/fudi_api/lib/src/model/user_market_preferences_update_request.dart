//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_market_preferences_update_request.g.dart';

/// UserMarketPreferencesUpdateRequest
///
/// Properties:
/// * [preferredCountryCode] - ISO alpha-2 válido o WORLDWIDE
/// * [preferredLocale] - Locale preferido en formato es-ES. Enviar cadena vacía para limpiar el valor.
@BuiltValue()
abstract class UserMarketPreferencesUpdateRequest
    implements
        Built<
          UserMarketPreferencesUpdateRequest,
          UserMarketPreferencesUpdateRequestBuilder
        > {
  /// ISO alpha-2 válido o WORLDWIDE
  @BuiltValueField(wireName: r'preferredCountryCode')
  String? get preferredCountryCode;

  /// Locale preferido en formato es-ES. Enviar cadena vacía para limpiar el valor.
  @BuiltValueField(wireName: r'preferredLocale')
  String? get preferredLocale;

  UserMarketPreferencesUpdateRequest._();

  factory UserMarketPreferencesUpdateRequest([
    void updates(UserMarketPreferencesUpdateRequestBuilder b),
  ]) = _$UserMarketPreferencesUpdateRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserMarketPreferencesUpdateRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserMarketPreferencesUpdateRequest> get serializer =>
      _$UserMarketPreferencesUpdateRequestSerializer();
}

class _$UserMarketPreferencesUpdateRequestSerializer
    implements PrimitiveSerializer<UserMarketPreferencesUpdateRequest> {
  @override
  final Iterable<Type> types = const [
    UserMarketPreferencesUpdateRequest,
    _$UserMarketPreferencesUpdateRequest,
  ];

  @override
  final String wireName = r'UserMarketPreferencesUpdateRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserMarketPreferencesUpdateRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.preferredCountryCode != null) {
      yield r'preferredCountryCode';
      yield serializers.serialize(
        object.preferredCountryCode,
        specifiedType: const FullType(String),
      );
    }
    if (object.preferredLocale != null) {
      yield r'preferredLocale';
      yield serializers.serialize(
        object.preferredLocale,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UserMarketPreferencesUpdateRequest object, {
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
    required UserMarketPreferencesUpdateRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'preferredCountryCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.preferredCountryCode = valueDes;
          break;
        case r'preferredLocale':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.preferredLocale = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserMarketPreferencesUpdateRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserMarketPreferencesUpdateRequestBuilder();
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
