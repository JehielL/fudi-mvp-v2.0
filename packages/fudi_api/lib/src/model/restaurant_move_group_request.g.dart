// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_move_group_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RestaurantMoveGroupRequest extends RestaurantMoveGroupRequest {
  @override
  final int groupId;

  factory _$RestaurantMoveGroupRequest([
    void Function(RestaurantMoveGroupRequestBuilder)? updates,
  ]) => (RestaurantMoveGroupRequestBuilder()..update(updates))._build();

  _$RestaurantMoveGroupRequest._({required this.groupId}) : super._();
  @override
  RestaurantMoveGroupRequest rebuild(
    void Function(RestaurantMoveGroupRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RestaurantMoveGroupRequestBuilder toBuilder() =>
      RestaurantMoveGroupRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestaurantMoveGroupRequest && groupId == other.groupId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, groupId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'RestaurantMoveGroupRequest',
    )..add('groupId', groupId)).toString();
  }
}

class RestaurantMoveGroupRequestBuilder
    implements
        Builder<RestaurantMoveGroupRequest, RestaurantMoveGroupRequestBuilder> {
  _$RestaurantMoveGroupRequest? _$v;

  int? _groupId;
  int? get groupId => _$this._groupId;
  set groupId(int? groupId) => _$this._groupId = groupId;

  RestaurantMoveGroupRequestBuilder() {
    RestaurantMoveGroupRequest._defaults(this);
  }

  RestaurantMoveGroupRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _groupId = $v.groupId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestaurantMoveGroupRequest other) {
    _$v = other as _$RestaurantMoveGroupRequest;
  }

  @override
  void update(void Function(RestaurantMoveGroupRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RestaurantMoveGroupRequest build() => _build();

  _$RestaurantMoveGroupRequest _build() {
    final _$result =
        _$v ??
        _$RestaurantMoveGroupRequest._(
          groupId: BuiltValueNullFieldError.checkNotNull(
            groupId,
            r'RestaurantMoveGroupRequest',
            'groupId',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
