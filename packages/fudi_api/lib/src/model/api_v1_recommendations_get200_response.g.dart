// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_v1_recommendations_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiV1RecommendationsGet200Response
    extends ApiV1RecommendationsGet200Response {
  @override
  final OneOf oneOf;

  factory _$ApiV1RecommendationsGet200Response([
    void Function(ApiV1RecommendationsGet200ResponseBuilder)? updates,
  ]) => (ApiV1RecommendationsGet200ResponseBuilder()..update(updates))._build();

  _$ApiV1RecommendationsGet200Response._({required this.oneOf}) : super._();
  @override
  ApiV1RecommendationsGet200Response rebuild(
    void Function(ApiV1RecommendationsGet200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ApiV1RecommendationsGet200ResponseBuilder toBuilder() =>
      ApiV1RecommendationsGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiV1RecommendationsGet200Response && oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'ApiV1RecommendationsGet200Response',
    )..add('oneOf', oneOf)).toString();
  }
}

class ApiV1RecommendationsGet200ResponseBuilder
    implements
        Builder<
          ApiV1RecommendationsGet200Response,
          ApiV1RecommendationsGet200ResponseBuilder
        > {
  _$ApiV1RecommendationsGet200Response? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  ApiV1RecommendationsGet200ResponseBuilder() {
    ApiV1RecommendationsGet200Response._defaults(this);
  }

  ApiV1RecommendationsGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiV1RecommendationsGet200Response other) {
    _$v = other as _$ApiV1RecommendationsGet200Response;
  }

  @override
  void update(
    void Function(ApiV1RecommendationsGet200ResponseBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  ApiV1RecommendationsGet200Response build() => _build();

  _$ApiV1RecommendationsGet200Response _build() {
    final _$result =
        _$v ??
        _$ApiV1RecommendationsGet200Response._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
            oneOf,
            r'ApiV1RecommendationsGet200Response',
            'oneOf',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
