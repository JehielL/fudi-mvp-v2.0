// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_restaurant_owner_assign_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AdminRestaurantOwnerAssignRequest
    extends AdminRestaurantOwnerAssignRequest {
  @override
  final int userId;

  factory _$AdminRestaurantOwnerAssignRequest([
    void Function(AdminRestaurantOwnerAssignRequestBuilder)? updates,
  ]) => (AdminRestaurantOwnerAssignRequestBuilder()..update(updates))._build();

  _$AdminRestaurantOwnerAssignRequest._({required this.userId}) : super._();
  @override
  AdminRestaurantOwnerAssignRequest rebuild(
    void Function(AdminRestaurantOwnerAssignRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AdminRestaurantOwnerAssignRequestBuilder toBuilder() =>
      AdminRestaurantOwnerAssignRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdminRestaurantOwnerAssignRequest && userId == other.userId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'AdminRestaurantOwnerAssignRequest',
    )..add('userId', userId)).toString();
  }
}

class AdminRestaurantOwnerAssignRequestBuilder
    implements
        Builder<
          AdminRestaurantOwnerAssignRequest,
          AdminRestaurantOwnerAssignRequestBuilder
        > {
  _$AdminRestaurantOwnerAssignRequest? _$v;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  AdminRestaurantOwnerAssignRequestBuilder() {
    AdminRestaurantOwnerAssignRequest._defaults(this);
  }

  AdminRestaurantOwnerAssignRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AdminRestaurantOwnerAssignRequest other) {
    _$v = other as _$AdminRestaurantOwnerAssignRequest;
  }

  @override
  void update(
    void Function(AdminRestaurantOwnerAssignRequestBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  AdminRestaurantOwnerAssignRequest build() => _build();

  _$AdminRestaurantOwnerAssignRequest _build() {
    final _$result =
        _$v ??
        _$AdminRestaurantOwnerAssignRequest._(
          userId: BuiltValueNullFieldError.checkNotNull(
            userId,
            r'AdminRestaurantOwnerAssignRequest',
            'userId',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
