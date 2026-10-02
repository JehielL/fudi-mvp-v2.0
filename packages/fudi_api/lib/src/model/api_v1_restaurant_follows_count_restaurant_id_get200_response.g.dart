// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_v1_restaurant_follows_count_restaurant_id_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiV1RestaurantFollowsCountRestaurantIdGet200Response
    extends ApiV1RestaurantFollowsCountRestaurantIdGet200Response {
  @override
  final int? count;

  factory _$ApiV1RestaurantFollowsCountRestaurantIdGet200Response([
    void Function(ApiV1RestaurantFollowsCountRestaurantIdGet200ResponseBuilder)?
    updates,
  ]) =>
      (ApiV1RestaurantFollowsCountRestaurantIdGet200ResponseBuilder()
            ..update(updates))
          ._build();

  _$ApiV1RestaurantFollowsCountRestaurantIdGet200Response._({this.count})
    : super._();
  @override
  ApiV1RestaurantFollowsCountRestaurantIdGet200Response rebuild(
    void Function(ApiV1RestaurantFollowsCountRestaurantIdGet200ResponseBuilder)
    updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ApiV1RestaurantFollowsCountRestaurantIdGet200ResponseBuilder toBuilder() =>
      ApiV1RestaurantFollowsCountRestaurantIdGet200ResponseBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiV1RestaurantFollowsCountRestaurantIdGet200Response &&
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
      r'ApiV1RestaurantFollowsCountRestaurantIdGet200Response',
    )..add('count', count)).toString();
  }
}

class ApiV1RestaurantFollowsCountRestaurantIdGet200ResponseBuilder
    implements
        Builder<
          ApiV1RestaurantFollowsCountRestaurantIdGet200Response,
          ApiV1RestaurantFollowsCountRestaurantIdGet200ResponseBuilder
        > {
  _$ApiV1RestaurantFollowsCountRestaurantIdGet200Response? _$v;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  ApiV1RestaurantFollowsCountRestaurantIdGet200ResponseBuilder() {
    ApiV1RestaurantFollowsCountRestaurantIdGet200Response._defaults(this);
  }

  ApiV1RestaurantFollowsCountRestaurantIdGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _count = $v.count;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiV1RestaurantFollowsCountRestaurantIdGet200Response other) {
    _$v = other as _$ApiV1RestaurantFollowsCountRestaurantIdGet200Response;
  }

  @override
  void update(
    void Function(ApiV1RestaurantFollowsCountRestaurantIdGet200ResponseBuilder)?
    updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  ApiV1RestaurantFollowsCountRestaurantIdGet200Response build() => _build();

  _$ApiV1RestaurantFollowsCountRestaurantIdGet200Response _build() {
    final _$result =
        _$v ??
        _$ApiV1RestaurantFollowsCountRestaurantIdGet200Response._(count: count);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
