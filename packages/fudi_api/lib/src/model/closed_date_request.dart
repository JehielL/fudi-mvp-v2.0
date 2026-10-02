//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:fudi_api/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'closed_date_request.g.dart';

/// ClosedDateRequest
///
/// Properties:
/// * [closedDate]
/// * [reason]
/// * [isRecurringYearly]
@BuiltValue()
abstract class ClosedDateRequest
    implements Built<ClosedDateRequest, ClosedDateRequestBuilder> {
  @BuiltValueField(wireName: r'closedDate')
  Date get closedDate;

  @BuiltValueField(wireName: r'reason')
  String? get reason;

  @BuiltValueField(wireName: r'isRecurringYearly')
  bool? get isRecurringYearly;

  ClosedDateRequest._();

  factory ClosedDateRequest([void updates(ClosedDateRequestBuilder b)]) =
      _$ClosedDateRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ClosedDateRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ClosedDateRequest> get serializer =>
      _$ClosedDateRequestSerializer();
}

class _$ClosedDateRequestSerializer
    implements PrimitiveSerializer<ClosedDateRequest> {
  @override
  final Iterable<Type> types = const [ClosedDateRequest, _$ClosedDateRequest];

  @override
  final String wireName = r'ClosedDateRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ClosedDateRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'closedDate';
    yield serializers.serialize(
      object.closedDate,
      specifiedType: const FullType(Date),
    );
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.isRecurringYearly != null) {
      yield r'isRecurringYearly';
      yield serializers.serialize(
        object.isRecurringYearly,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ClosedDateRequest object, {
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
    required ClosedDateRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'closedDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.closedDate = valueDes;
          break;
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.reason = valueDes;
          break;
        case r'isRecurringYearly':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isRecurringYearly = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ClosedDateRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ClosedDateRequestBuilder();
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
