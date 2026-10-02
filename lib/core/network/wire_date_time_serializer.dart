import 'package:built_value/serializer.dart';

/// Conserva la hora civil de LocalDateTime Java; no inventa un offset UTC.
final class WireDateTimeSerializer implements PrimitiveSerializer<DateTime> {
  const WireDateTimeSerializer();

  @override
  Iterable<Type> get types => const [DateTime];

  @override
  String get wireName => 'DateTime';

  @override
  Object serialize(
    Serializers serializers,
    DateTime object, {
    FullType specifiedType = FullType.unspecified,
  }) => object.toIso8601String();

  @override
  DateTime deserialize(
    Serializers serializers,
    Object? serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => DateTime.parse(serialized as String);
}
