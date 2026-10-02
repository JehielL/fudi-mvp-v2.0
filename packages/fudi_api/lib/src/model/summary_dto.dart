//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'summary_dto.g.dart';

/// SummaryDTO
///
/// Properties:
/// * [totalBookings]
/// * [confirmedBookings]
/// * [cancelledBookings]
/// * [noShowBookings]
/// * [totalGuests]
/// * [avgPartySize]
@BuiltValue()
abstract class SummaryDTO implements Built<SummaryDTO, SummaryDTOBuilder> {
  @BuiltValueField(wireName: r'totalBookings')
  int? get totalBookings;

  @BuiltValueField(wireName: r'confirmedBookings')
  int? get confirmedBookings;

  @BuiltValueField(wireName: r'cancelledBookings')
  int? get cancelledBookings;

  @BuiltValueField(wireName: r'noShowBookings')
  int? get noShowBookings;

  @BuiltValueField(wireName: r'totalGuests')
  int? get totalGuests;

  @BuiltValueField(wireName: r'avgPartySize')
  double? get avgPartySize;

  SummaryDTO._();

  factory SummaryDTO([void updates(SummaryDTOBuilder b)]) = _$SummaryDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SummaryDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SummaryDTO> get serializer => _$SummaryDTOSerializer();
}

class _$SummaryDTOSerializer implements PrimitiveSerializer<SummaryDTO> {
  @override
  final Iterable<Type> types = const [SummaryDTO, _$SummaryDTO];

  @override
  final String wireName = r'SummaryDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SummaryDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.totalBookings != null) {
      yield r'totalBookings';
      yield serializers.serialize(
        object.totalBookings,
        specifiedType: const FullType(int),
      );
    }
    if (object.confirmedBookings != null) {
      yield r'confirmedBookings';
      yield serializers.serialize(
        object.confirmedBookings,
        specifiedType: const FullType(int),
      );
    }
    if (object.cancelledBookings != null) {
      yield r'cancelledBookings';
      yield serializers.serialize(
        object.cancelledBookings,
        specifiedType: const FullType(int),
      );
    }
    if (object.noShowBookings != null) {
      yield r'noShowBookings';
      yield serializers.serialize(
        object.noShowBookings,
        specifiedType: const FullType(int),
      );
    }
    if (object.totalGuests != null) {
      yield r'totalGuests';
      yield serializers.serialize(
        object.totalGuests,
        specifiedType: const FullType(int),
      );
    }
    if (object.avgPartySize != null) {
      yield r'avgPartySize';
      yield serializers.serialize(
        object.avgPartySize,
        specifiedType: const FullType(double),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SummaryDTO object, {
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
    required SummaryDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'totalBookings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.totalBookings = valueDes;
          break;
        case r'confirmedBookings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.confirmedBookings = valueDes;
          break;
        case r'cancelledBookings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.cancelledBookings = valueDes;
          break;
        case r'noShowBookings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.noShowBookings = valueDes;
          break;
        case r'totalGuests':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.totalGuests = valueDes;
          break;
        case r'avgPartySize':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.avgPartySize = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SummaryDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SummaryDTOBuilder();
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
