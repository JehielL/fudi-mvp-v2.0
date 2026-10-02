// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_private_v1_bookings_id_status_cancel_patch_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiPrivateV1BookingsIdStatusCancelPatchRequest
    extends ApiPrivateV1BookingsIdStatusCancelPatchRequest {
  @override
  final String? reason;

  factory _$ApiPrivateV1BookingsIdStatusCancelPatchRequest([
    void Function(ApiPrivateV1BookingsIdStatusCancelPatchRequestBuilder)?
    updates,
  ]) =>
      (ApiPrivateV1BookingsIdStatusCancelPatchRequestBuilder()..update(updates))
          ._build();

  _$ApiPrivateV1BookingsIdStatusCancelPatchRequest._({this.reason}) : super._();
  @override
  ApiPrivateV1BookingsIdStatusCancelPatchRequest rebuild(
    void Function(ApiPrivateV1BookingsIdStatusCancelPatchRequestBuilder)
    updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ApiPrivateV1BookingsIdStatusCancelPatchRequestBuilder toBuilder() =>
      ApiPrivateV1BookingsIdStatusCancelPatchRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiPrivateV1BookingsIdStatusCancelPatchRequest &&
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
      r'ApiPrivateV1BookingsIdStatusCancelPatchRequest',
    )..add('reason', reason)).toString();
  }
}

class ApiPrivateV1BookingsIdStatusCancelPatchRequestBuilder
    implements
        Builder<
          ApiPrivateV1BookingsIdStatusCancelPatchRequest,
          ApiPrivateV1BookingsIdStatusCancelPatchRequestBuilder
        > {
  _$ApiPrivateV1BookingsIdStatusCancelPatchRequest? _$v;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  ApiPrivateV1BookingsIdStatusCancelPatchRequestBuilder() {
    ApiPrivateV1BookingsIdStatusCancelPatchRequest._defaults(this);
  }

  ApiPrivateV1BookingsIdStatusCancelPatchRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reason = $v.reason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiPrivateV1BookingsIdStatusCancelPatchRequest other) {
    _$v = other as _$ApiPrivateV1BookingsIdStatusCancelPatchRequest;
  }

  @override
  void update(
    void Function(ApiPrivateV1BookingsIdStatusCancelPatchRequestBuilder)?
    updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  ApiPrivateV1BookingsIdStatusCancelPatchRequest build() => _build();

  _$ApiPrivateV1BookingsIdStatusCancelPatchRequest _build() {
    final _$result =
        _$v ??
        _$ApiPrivateV1BookingsIdStatusCancelPatchRequest._(reason: reason);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
