// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_group_status_update_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RestaurantGroupStatusUpdateRequest
    extends RestaurantGroupStatusUpdateRequest {
  @override
  final bool status;

  factory _$RestaurantGroupStatusUpdateRequest([
    void Function(RestaurantGroupStatusUpdateRequestBuilder)? updates,
  ]) => (RestaurantGroupStatusUpdateRequestBuilder()..update(updates))._build();

  _$RestaurantGroupStatusUpdateRequest._({required this.status}) : super._();
  @override
  RestaurantGroupStatusUpdateRequest rebuild(
    void Function(RestaurantGroupStatusUpdateRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RestaurantGroupStatusUpdateRequestBuilder toBuilder() =>
      RestaurantGroupStatusUpdateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestaurantGroupStatusUpdateRequest &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'RestaurantGroupStatusUpdateRequest',
    )..add('status', status)).toString();
  }
}

class RestaurantGroupStatusUpdateRequestBuilder
    implements
        Builder<
          RestaurantGroupStatusUpdateRequest,
          RestaurantGroupStatusUpdateRequestBuilder
        > {
  _$RestaurantGroupStatusUpdateRequest? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  RestaurantGroupStatusUpdateRequestBuilder() {
    RestaurantGroupStatusUpdateRequest._defaults(this);
  }

  RestaurantGroupStatusUpdateRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestaurantGroupStatusUpdateRequest other) {
    _$v = other as _$RestaurantGroupStatusUpdateRequest;
  }

  @override
  void update(
    void Function(RestaurantGroupStatusUpdateRequestBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  RestaurantGroupStatusUpdateRequest build() => _build();

  _$RestaurantGroupStatusUpdateRequest _build() {
    final _$result =
        _$v ??
        _$RestaurantGroupStatusUpdateRequest._(
          status: BuiltValueNullFieldError.checkNotNull(
            status,
            r'RestaurantGroupStatusUpdateRequest',
            'status',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
