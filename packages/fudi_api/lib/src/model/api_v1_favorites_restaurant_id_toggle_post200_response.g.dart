// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_v1_favorites_restaurant_id_toggle_post200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiV1FavoritesRestaurantIdTogglePost200Response
    extends ApiV1FavoritesRestaurantIdTogglePost200Response {
  @override
  final bool? isFavorite;
  @override
  final String? message;

  factory _$ApiV1FavoritesRestaurantIdTogglePost200Response([
    void Function(ApiV1FavoritesRestaurantIdTogglePost200ResponseBuilder)?
    updates,
  ]) =>
      (ApiV1FavoritesRestaurantIdTogglePost200ResponseBuilder()
            ..update(updates))
          ._build();

  _$ApiV1FavoritesRestaurantIdTogglePost200Response._({
    this.isFavorite,
    this.message,
  }) : super._();
  @override
  ApiV1FavoritesRestaurantIdTogglePost200Response rebuild(
    void Function(ApiV1FavoritesRestaurantIdTogglePost200ResponseBuilder)
    updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ApiV1FavoritesRestaurantIdTogglePost200ResponseBuilder toBuilder() =>
      ApiV1FavoritesRestaurantIdTogglePost200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiV1FavoritesRestaurantIdTogglePost200Response &&
        isFavorite == other.isFavorite &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, isFavorite.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ApiV1FavoritesRestaurantIdTogglePost200Response',
          )
          ..add('isFavorite', isFavorite)
          ..add('message', message))
        .toString();
  }
}

class ApiV1FavoritesRestaurantIdTogglePost200ResponseBuilder
    implements
        Builder<
          ApiV1FavoritesRestaurantIdTogglePost200Response,
          ApiV1FavoritesRestaurantIdTogglePost200ResponseBuilder
        > {
  _$ApiV1FavoritesRestaurantIdTogglePost200Response? _$v;

  bool? _isFavorite;
  bool? get isFavorite => _$this._isFavorite;
  set isFavorite(bool? isFavorite) => _$this._isFavorite = isFavorite;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ApiV1FavoritesRestaurantIdTogglePost200ResponseBuilder() {
    ApiV1FavoritesRestaurantIdTogglePost200Response._defaults(this);
  }

  ApiV1FavoritesRestaurantIdTogglePost200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isFavorite = $v.isFavorite;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiV1FavoritesRestaurantIdTogglePost200Response other) {
    _$v = other as _$ApiV1FavoritesRestaurantIdTogglePost200Response;
  }

  @override
  void update(
    void Function(ApiV1FavoritesRestaurantIdTogglePost200ResponseBuilder)?
    updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  ApiV1FavoritesRestaurantIdTogglePost200Response build() => _build();

  _$ApiV1FavoritesRestaurantIdTogglePost200Response _build() {
    final _$result =
        _$v ??
        _$ApiV1FavoritesRestaurantIdTogglePost200Response._(
          isFavorite: isFavorite,
          message: message,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
