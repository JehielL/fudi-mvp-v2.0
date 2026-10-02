//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_market_preferences.g.dart';

/// UserMarketPreferences
///
/// Properties:
/// * [preferredCountryCode] - ISO alpha-2 del mercado preferido o WORLDWIDE
/// * [preferredLocale] - Locale preferido del usuario en formato lenguaje-país
@BuiltValue()
abstract class UserMarketPreferences
    implements Built<UserMarketPreferences, UserMarketPreferencesBuilder> {
  /// ISO alpha-2 del mercado preferido o WORLDWIDE
  @BuiltValueField(wireName: r'preferredCountryCode')
  String? get preferredCountryCode;

  /// Locale preferido del usuario en formato lenguaje-país
  @BuiltValueField(wireName: r'preferredLocale')
  String? get preferredLocale;

  UserMarketPreferences._();

  factory UserMarketPreferences([
    void updates(UserMarketPreferencesBuilder b),
  ]) = _$UserMarketPreferences;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserMarketPreferencesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserMarketPreferences> get serializer =>
      _$UserMarketPreferencesSerializer();
}

class _$UserMarketPreferencesSerializer
    implements PrimitiveSerializer<UserMarketPreferences> {
  @override
  final Iterable<Type> types = const [
    UserMarketPreferences,
    _$UserMarketPreferences,
  ];

  @override
  final String wireName = r'UserMarketPreferences';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserMarketPreferences object, {
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
    UserMarketPreferences object, {
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
    required UserMarketPreferencesBuilder result,
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
  UserMarketPreferences deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserMarketPreferencesBuilder();
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
