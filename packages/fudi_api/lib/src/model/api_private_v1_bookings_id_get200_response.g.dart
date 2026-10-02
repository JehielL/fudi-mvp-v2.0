// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_private_v1_bookings_id_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiPrivateV1BookingsIdGet200Response
    extends ApiPrivateV1BookingsIdGet200Response {
  @override
  final OneOf oneOf;

  factory _$ApiPrivateV1BookingsIdGet200Response([
    void Function(ApiPrivateV1BookingsIdGet200ResponseBuilder)? updates,
  ]) =>
      (ApiPrivateV1BookingsIdGet200ResponseBuilder()..update(updates))._build();

  _$ApiPrivateV1BookingsIdGet200Response._({required this.oneOf}) : super._();
  @override
  ApiPrivateV1BookingsIdGet200Response rebuild(
    void Function(ApiPrivateV1BookingsIdGet200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ApiPrivateV1BookingsIdGet200ResponseBuilder toBuilder() =>
      ApiPrivateV1BookingsIdGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiPrivateV1BookingsIdGet200Response &&
        oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'ApiPrivateV1BookingsIdGet200Response',
    )..add('oneOf', oneOf)).toString();
  }
}

class ApiPrivateV1BookingsIdGet200ResponseBuilder
    implements
        Builder<
          ApiPrivateV1BookingsIdGet200Response,
          ApiPrivateV1BookingsIdGet200ResponseBuilder
        > {
  _$ApiPrivateV1BookingsIdGet200Response? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  ApiPrivateV1BookingsIdGet200ResponseBuilder() {
    ApiPrivateV1BookingsIdGet200Response._defaults(this);
  }

  ApiPrivateV1BookingsIdGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiPrivateV1BookingsIdGet200Response other) {
    _$v = other as _$ApiPrivateV1BookingsIdGet200Response;
  }

  @override
  void update(
    void Function(ApiPrivateV1BookingsIdGet200ResponseBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  ApiPrivateV1BookingsIdGet200Response build() => _build();

  _$ApiPrivateV1BookingsIdGet200Response _build() {
    final _$result =
        _$v ??
        _$ApiPrivateV1BookingsIdGet200Response._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
            oneOf,
            r'ApiPrivateV1BookingsIdGet200Response',
            'oneOf',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
