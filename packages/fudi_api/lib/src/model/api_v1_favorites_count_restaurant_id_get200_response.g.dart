// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_v1_favorites_count_restaurant_id_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiV1FavoritesCountRestaurantIdGet200Response
    extends ApiV1FavoritesCountRestaurantIdGet200Response {
  @override
  final int? count;

  factory _$ApiV1FavoritesCountRestaurantIdGet200Response([
    void Function(ApiV1FavoritesCountRestaurantIdGet200ResponseBuilder)?
    updates,
  ]) =>
      (ApiV1FavoritesCountRestaurantIdGet200ResponseBuilder()..update(updates))
          ._build();

  _$ApiV1FavoritesCountRestaurantIdGet200Response._({this.count}) : super._();
  @override
  ApiV1FavoritesCountRestaurantIdGet200Response rebuild(
    void Function(ApiV1FavoritesCountRestaurantIdGet200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ApiV1FavoritesCountRestaurantIdGet200ResponseBuilder toBuilder() =>
      ApiV1FavoritesCountRestaurantIdGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiV1FavoritesCountRestaurantIdGet200Response &&
        count == other.count;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'ApiV1FavoritesCountRestaurantIdGet200Response',
    )..add('count', count)).toString();
  }
}

class ApiV1FavoritesCountRestaurantIdGet200ResponseBuilder
    implements
        Builder<
          ApiV1FavoritesCountRestaurantIdGet200Response,
          ApiV1FavoritesCountRestaurantIdGet200ResponseBuilder
        > {
  _$ApiV1FavoritesCountRestaurantIdGet200Response? _$v;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  ApiV1FavoritesCountRestaurantIdGet200ResponseBuilder() {
    ApiV1FavoritesCountRestaurantIdGet200Response._defaults(this);
  }

  ApiV1FavoritesCountRestaurantIdGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _count = $v.count;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiV1FavoritesCountRestaurantIdGet200Response other) {
    _$v = other as _$ApiV1FavoritesCountRestaurantIdGet200Response;
  }

  @override
  void update(
    void Function(ApiV1FavoritesCountRestaurantIdGet200ResponseBuilder)?
    updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  ApiV1FavoritesCountRestaurantIdGet200Response build() => _build();

  _$ApiV1FavoritesCountRestaurantIdGet200Response _build() {
    final _$result =
        _$v ?? _$ApiV1FavoritesCountRestaurantIdGet200Response._(count: count);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
