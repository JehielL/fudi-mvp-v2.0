// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_v1_users_id_restaurants_put_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiV1UsersIdRestaurantsPutRequest
    extends ApiV1UsersIdRestaurantsPutRequest {
  @override
  final BuiltList<int>? restaurantIds;

  factory _$ApiV1UsersIdRestaurantsPutRequest([
    void Function(ApiV1UsersIdRestaurantsPutRequestBuilder)? updates,
  ]) => (ApiV1UsersIdRestaurantsPutRequestBuilder()..update(updates))._build();

  _$ApiV1UsersIdRestaurantsPutRequest._({this.restaurantIds}) : super._();
  @override
  ApiV1UsersIdRestaurantsPutRequest rebuild(
    void Function(ApiV1UsersIdRestaurantsPutRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ApiV1UsersIdRestaurantsPutRequestBuilder toBuilder() =>
      ApiV1UsersIdRestaurantsPutRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiV1UsersIdRestaurantsPutRequest &&
        restaurantIds == other.restaurantIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, restaurantIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'ApiV1UsersIdRestaurantsPutRequest',
    )..add('restaurantIds', restaurantIds)).toString();
  }
}

class ApiV1UsersIdRestaurantsPutRequestBuilder
    implements
        Builder<
          ApiV1UsersIdRestaurantsPutRequest,
          ApiV1UsersIdRestaurantsPutRequestBuilder
        > {
  _$ApiV1UsersIdRestaurantsPutRequest? _$v;

  ListBuilder<int>? _restaurantIds;
  ListBuilder<int> get restaurantIds =>
      _$this._restaurantIds ??= ListBuilder<int>();
  set restaurantIds(ListBuilder<int>? restaurantIds) =>
      _$this._restaurantIds = restaurantIds;

  ApiV1UsersIdRestaurantsPutRequestBuilder() {
    ApiV1UsersIdRestaurantsPutRequest._defaults(this);
  }

  ApiV1UsersIdRestaurantsPutRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _restaurantIds = $v.restaurantIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiV1UsersIdRestaurantsPutRequest other) {
    _$v = other as _$ApiV1UsersIdRestaurantsPutRequest;
  }

  @override
  void update(
    void Function(ApiV1UsersIdRestaurantsPutRequestBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  ApiV1UsersIdRestaurantsPutRequest build() => _build();

  _$ApiV1UsersIdRestaurantsPutRequest _build() {
    _$ApiV1UsersIdRestaurantsPutRequest _$result;
    try {
      _$result =
          _$v ??
          _$ApiV1UsersIdRestaurantsPutRequest._(
            restaurantIds: _restaurantIds?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'restaurantIds';
        _restaurantIds?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ApiV1UsersIdRestaurantsPutRequest',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
