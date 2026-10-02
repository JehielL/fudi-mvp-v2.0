//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'quick_stats_dto.g.dart';

/// QuickStatsDTO
///
/// Properties:
/// * [todayBookings]
/// * [todayGuests]
/// * [weekBookings]
/// * [weekGuests]
/// * [monthBookings]
/// * [monthGuests]
/// * [pendingCount]
@BuiltValue()
abstract class QuickStatsDTO
    implements Built<QuickStatsDTO, QuickStatsDTOBuilder> {
  @BuiltValueField(wireName: r'todayBookings')
  int? get todayBookings;

  @BuiltValueField(wireName: r'todayGuests')
  int? get todayGuests;

  @BuiltValueField(wireName: r'weekBookings')
  int? get weekBookings;

  @BuiltValueField(wireName: r'weekGuests')
  int? get weekGuests;

  @BuiltValueField(wireName: r'monthBookings')
  int? get monthBookings;

  @BuiltValueField(wireName: r'monthGuests')
  int? get monthGuests;

  @BuiltValueField(wireName: r'pendingCount')
  int? get pendingCount;

  QuickStatsDTO._();

  factory QuickStatsDTO([void updates(QuickStatsDTOBuilder b)]) =
      _$QuickStatsDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QuickStatsDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QuickStatsDTO> get serializer =>
      _$QuickStatsDTOSerializer();
}

class _$QuickStatsDTOSerializer implements PrimitiveSerializer<QuickStatsDTO> {
  @override
  final Iterable<Type> types = const [QuickStatsDTO, _$QuickStatsDTO];

  @override
  final String wireName = r'QuickStatsDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QuickStatsDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.todayBookings != null) {
      yield r'todayBookings';
      yield serializers.serialize(
        object.todayBookings,
        specifiedType: const FullType(int),
      );
    }
    if (object.todayGuests != null) {
      yield r'todayGuests';
      yield serializers.serialize(
        object.todayGuests,
        specifiedType: const FullType(int),
      );
    }
    if (object.weekBookings != null) {
      yield r'weekBookings';
      yield serializers.serialize(
        object.weekBookings,
        specifiedType: const FullType(int),
      );
    }
    if (object.weekGuests != null) {
      yield r'weekGuests';
      yield serializers.serialize(
        object.weekGuests,
        specifiedType: const FullType(int),
      );
    }
    if (object.monthBookings != null) {
      yield r'monthBookings';
      yield serializers.serialize(
        object.monthBookings,
        specifiedType: const FullType(int),
      );
    }
    if (object.monthGuests != null) {
      yield r'monthGuests';
      yield serializers.serialize(
        object.monthGuests,
        specifiedType: const FullType(int),
      );
    }
    if (object.pendingCount != null) {
      yield r'pendingCount';
      yield serializers.serialize(
        object.pendingCount,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    QuickStatsDTO object, {
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
    required QuickStatsDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'todayBookings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.todayBookings = valueDes;
          break;
        case r'todayGuests':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.todayGuests = valueDes;
          break;
        case r'weekBookings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.weekBookings = valueDes;
          break;
        case r'weekGuests':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.weekGuests = valueDes;
          break;
        case r'monthBookings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.monthBookings = valueDes;
          break;
        case r'monthGuests':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.monthGuests = valueDes;
          break;
        case r'pendingCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.pendingCount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  QuickStatsDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QuickStatsDTOBuilder();
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
