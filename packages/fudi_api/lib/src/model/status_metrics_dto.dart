//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'status_metrics_dto.g.dart';

/// StatusMetricsDTO
///
/// Properties:
/// * [pending]
/// * [confirmed]
/// * [completed]
/// * [cancelled]
/// * [noShow]
/// * [rejected]
@BuiltValue()
abstract class StatusMetricsDTO
    implements Built<StatusMetricsDTO, StatusMetricsDTOBuilder> {
  @BuiltValueField(wireName: r'pending')
  int? get pending;

  @BuiltValueField(wireName: r'confirmed')
  int? get confirmed;

  @BuiltValueField(wireName: r'completed')
  int? get completed;

  @BuiltValueField(wireName: r'cancelled')
  int? get cancelled;

  @BuiltValueField(wireName: r'noShow')
  int? get noShow;

  @BuiltValueField(wireName: r'rejected')
  int? get rejected;

  StatusMetricsDTO._();

  factory StatusMetricsDTO([void updates(StatusMetricsDTOBuilder b)]) =
      _$StatusMetricsDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StatusMetricsDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StatusMetricsDTO> get serializer =>
      _$StatusMetricsDTOSerializer();
}

class _$StatusMetricsDTOSerializer
    implements PrimitiveSerializer<StatusMetricsDTO> {
  @override
  final Iterable<Type> types = const [StatusMetricsDTO, _$StatusMetricsDTO];

  @override
  final String wireName = r'StatusMetricsDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StatusMetricsDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.pending != null) {
      yield r'pending';
      yield serializers.serialize(
        object.pending,
        specifiedType: const FullType(int),
      );
    }
    if (object.confirmed != null) {
      yield r'confirmed';
      yield serializers.serialize(
        object.confirmed,
        specifiedType: const FullType(int),
      );
    }
    if (object.completed != null) {
      yield r'completed';
      yield serializers.serialize(
        object.completed,
        specifiedType: const FullType(int),
      );
    }
    if (object.cancelled != null) {
      yield r'cancelled';
      yield serializers.serialize(
        object.cancelled,
        specifiedType: const FullType(int),
      );
    }
    if (object.noShow != null) {
      yield r'noShow';
      yield serializers.serialize(
        object.noShow,
        specifiedType: const FullType(int),
      );
    }
    if (object.rejected != null) {
      yield r'rejected';
      yield serializers.serialize(
        object.rejected,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    StatusMetricsDTO object, {
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
    required StatusMetricsDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'pending':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.pending = valueDes;
          break;
        case r'confirmed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.confirmed = valueDes;
          break;
        case r'completed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.completed = valueDes;
          break;
        case r'cancelled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.cancelled = valueDes;
          break;
        case r'noShow':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.noShow = valueDes;
          break;
        case r'rejected':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.rejected = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StatusMetricsDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StatusMetricsDTOBuilder();
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
