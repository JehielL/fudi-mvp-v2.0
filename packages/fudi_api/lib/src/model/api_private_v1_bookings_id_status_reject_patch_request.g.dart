// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_private_v1_bookings_id_status_reject_patch_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiPrivateV1BookingsIdStatusRejectPatchRequest
    extends ApiPrivateV1BookingsIdStatusRejectPatchRequest {
  @override
  final String? reason;

  factory _$ApiPrivateV1BookingsIdStatusRejectPatchRequest([
    void Function(ApiPrivateV1BookingsIdStatusRejectPatchRequestBuilder)?
    updates,
  ]) =>
      (ApiPrivateV1BookingsIdStatusRejectPatchRequestBuilder()..update(updates))
          ._build();

  _$ApiPrivateV1BookingsIdStatusRejectPatchRequest._({this.reason}) : super._();
  @override
  ApiPrivateV1BookingsIdStatusRejectPatchRequest rebuild(
    void Function(ApiPrivateV1BookingsIdStatusRejectPatchRequestBuilder)
    updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ApiPrivateV1BookingsIdStatusRejectPatchRequestBuilder toBuilder() =>
      ApiPrivateV1BookingsIdStatusRejectPatchRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiPrivateV1BookingsIdStatusRejectPatchRequest &&
        reason == other.reason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'ApiPrivateV1BookingsIdStatusRejectPatchRequest',
    )..add('reason', reason)).toString();
  }
}

class ApiPrivateV1BookingsIdStatusRejectPatchRequestBuilder
    implements
        Builder<
          ApiPrivateV1BookingsIdStatusRejectPatchRequest,
          ApiPrivateV1BookingsIdStatusRejectPatchRequestBuilder
        > {
  _$ApiPrivateV1BookingsIdStatusRejectPatchRequest? _$v;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  ApiPrivateV1BookingsIdStatusRejectPatchRequestBuilder() {
    ApiPrivateV1BookingsIdStatusRejectPatchRequest._defaults(this);
  }

  ApiPrivateV1BookingsIdStatusRejectPatchRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reason = $v.reason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiPrivateV1BookingsIdStatusRejectPatchRequest other) {
    _$v = other as _$ApiPrivateV1BookingsIdStatusRejectPatchRequest;
  }

  @override
  void update(
    void Function(ApiPrivateV1BookingsIdStatusRejectPatchRequestBuilder)?
    updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  ApiPrivateV1BookingsIdStatusRejectPatchRequest build() => _build();

  _$ApiPrivateV1BookingsIdStatusRejectPatchRequest _build() {
    final _$result =
        _$v ??
        _$ApiPrivateV1BookingsIdStatusRejectPatchRequest._(reason: reason);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
