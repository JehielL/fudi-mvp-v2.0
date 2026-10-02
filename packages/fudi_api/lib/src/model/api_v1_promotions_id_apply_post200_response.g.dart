// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_v1_promotions_id_apply_post200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiV1PromotionsIdApplyPost200Response
    extends ApiV1PromotionsIdApplyPost200Response {
  @override
  final bool? success;
  @override
  final String? message;

  factory _$ApiV1PromotionsIdApplyPost200Response([
    void Function(ApiV1PromotionsIdApplyPost200ResponseBuilder)? updates,
  ]) => (ApiV1PromotionsIdApplyPost200ResponseBuilder()..update(updates))
      ._build();

  _$ApiV1PromotionsIdApplyPost200Response._({this.success, this.message})
    : super._();
  @override
  ApiV1PromotionsIdApplyPost200Response rebuild(
    void Function(ApiV1PromotionsIdApplyPost200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ApiV1PromotionsIdApplyPost200ResponseBuilder toBuilder() =>
      ApiV1PromotionsIdApplyPost200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiV1PromotionsIdApplyPost200Response &&
        success == other.success &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ApiV1PromotionsIdApplyPost200Response',
          )
          ..add('success', success)
          ..add('message', message))
        .toString();
  }
}

class ApiV1PromotionsIdApplyPost200ResponseBuilder
    implements
        Builder<
          ApiV1PromotionsIdApplyPost200Response,
          ApiV1PromotionsIdApplyPost200ResponseBuilder
        > {
  _$ApiV1PromotionsIdApplyPost200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ApiV1PromotionsIdApplyPost200ResponseBuilder() {
    ApiV1PromotionsIdApplyPost200Response._defaults(this);
  }

  ApiV1PromotionsIdApplyPost200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiV1PromotionsIdApplyPost200Response other) {
    _$v = other as _$ApiV1PromotionsIdApplyPost200Response;
  }

  @override
  void update(
    void Function(ApiV1PromotionsIdApplyPost200ResponseBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  ApiV1PromotionsIdApplyPost200Response build() => _build();

  _$ApiV1PromotionsIdApplyPost200Response _build() {
    final _$result =
        _$v ??
        _$ApiV1PromotionsIdApplyPost200Response._(
          success: success,
          message: message,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
