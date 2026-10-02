//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rates_dto.g.dart';

/// RatesDTO
///
/// Properties:
/// * [confirmationRate] - % reservas confirmadas
/// * [cancellationRate] - % reservas canceladas
/// * [noShowRate] - % no-shows
/// * [completionRate] - % completadas
@BuiltValue()
abstract class RatesDTO implements Built<RatesDTO, RatesDTOBuilder> {
  /// % reservas confirmadas
  @BuiltValueField(wireName: r'confirmationRate')
  double? get confirmationRate;

  /// % reservas canceladas
  @BuiltValueField(wireName: r'cancellationRate')
  double? get cancellationRate;

  /// % no-shows
  @BuiltValueField(wireName: r'noShowRate')
  double? get noShowRate;

  /// % completadas
  @BuiltValueField(wireName: r'completionRate')
  double? get completionRate;

  RatesDTO._();

  factory RatesDTO([void updates(RatesDTOBuilder b)]) = _$RatesDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RatesDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RatesDTO> get serializer => _$RatesDTOSerializer();
}

class _$RatesDTOSerializer implements PrimitiveSerializer<RatesDTO> {
  @override
  final Iterable<Type> types = const [RatesDTO, _$RatesDTO];

  @override
  final String wireName = r'RatesDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RatesDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.confirmationRate != null) {
      yield r'confirmationRate';
      yield serializers.serialize(
        object.confirmationRate,
        specifiedType: const FullType(double),
      );
    }
    if (object.cancellationRate != null) {
      yield r'cancellationRate';
      yield serializers.serialize(
        object.cancellationRate,
        specifiedType: const FullType(double),
      );
    }
    if (object.noShowRate != null) {
      yield r'noShowRate';
      yield serializers.serialize(
        object.noShowRate,
        specifiedType: const FullType(double),
      );
    }
    if (object.completionRate != null) {
      yield r'completionRate';
      yield serializers.serialize(
        object.completionRate,
        specifiedType: const FullType(double),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RatesDTO object, {
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
    required RatesDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'confirmationRate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.confirmationRate = valueDes;
          break;
        case r'cancellationRate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.cancellationRate = valueDes;
          break;
        case r'noShowRate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.noShowRate = valueDes;
          break;
        case r'completionRate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.completionRate = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RatesDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RatesDTOBuilder();
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
