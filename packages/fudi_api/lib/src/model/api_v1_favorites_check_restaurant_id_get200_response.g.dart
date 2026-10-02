// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_v1_favorites_check_restaurant_id_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiV1FavoritesCheckRestaurantIdGet200Response
    extends ApiV1FavoritesCheckRestaurantIdGet200Response {
  @override
  final bool? isFavorite;

  factory _$ApiV1FavoritesCheckRestaurantIdGet200Response([
    void Function(ApiV1FavoritesCheckRestaurantIdGet200ResponseBuilder)?
    updates,
  ]) =>
      (ApiV1FavoritesCheckRestaurantIdGet200ResponseBuilder()..update(updates))
          ._build();

  _$ApiV1FavoritesCheckRestaurantIdGet200Response._({this.isFavorite})
    : super._();
  @override
  ApiV1FavoritesCheckRestaurantIdGet200Response rebuild(
    void Function(ApiV1FavoritesCheckRestaurantIdGet200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ApiV1FavoritesCheckRestaurantIdGet200ResponseBuilder toBuilder() =>
      ApiV1FavoritesCheckRestaurantIdGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiV1FavoritesCheckRestaurantIdGet200Response &&
        isFavorite == other.isFavorite;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, isFavorite.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'ApiV1FavoritesCheckRestaurantIdGet200Response',
    )..add('isFavorite', isFavorite)).toString();
  }
}

class ApiV1FavoritesCheckRestaurantIdGet200ResponseBuilder
    implements
        Builder<
          ApiV1FavoritesCheckRestaurantIdGet200Response,
          ApiV1FavoritesCheckRestaurantIdGet200ResponseBuilder
        > {
  _$ApiV1FavoritesCheckRestaurantIdGet200Response? _$v;

  bool? _isFavorite;
  bool? get isFavorite => _$this._isFavorite;
  set isFavorite(bool? isFavorite) => _$this._isFavorite = isFavorite;

  ApiV1FavoritesCheckRestaurantIdGet200ResponseBuilder() {
    ApiV1FavoritesCheckRestaurantIdGet200Response._defaults(this);
  }

  ApiV1FavoritesCheckRestaurantIdGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isFavorite = $v.isFavorite;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiV1FavoritesCheckRestaurantIdGet200Response other) {
    _$v = other as _$ApiV1FavoritesCheckRestaurantIdGet200Response;
  }

  @override
  void update(
    void Function(ApiV1FavoritesCheckRestaurantIdGet200ResponseBuilder)?
    updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  ApiV1FavoritesCheckRestaurantIdGet200Response build() => _build();

  _$ApiV1FavoritesCheckRestaurantIdGet200Response _build() {
    final _$result =
        _$v ??
        _$ApiV1FavoritesCheckRestaurantIdGet200Response._(
          isFavorite: isFavorite,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
