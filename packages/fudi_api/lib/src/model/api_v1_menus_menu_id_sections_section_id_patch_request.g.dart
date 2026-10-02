// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_v1_menus_menu_id_sections_section_id_patch_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiV1MenusMenuIdSectionsSectionIdPatchRequest
    extends ApiV1MenusMenuIdSectionsSectionIdPatchRequest {
  @override
  final String? name;
  @override
  final int? position;
  @override
  final bool? active;

  factory _$ApiV1MenusMenuIdSectionsSectionIdPatchRequest([
    void Function(ApiV1MenusMenuIdSectionsSectionIdPatchRequestBuilder)?
    updates,
  ]) =>
      (ApiV1MenusMenuIdSectionsSectionIdPatchRequestBuilder()..update(updates))
          ._build();

  _$ApiV1MenusMenuIdSectionsSectionIdPatchRequest._({
    this.name,
    this.position,
    this.active,
  }) : super._();
  @override
  ApiV1MenusMenuIdSectionsSectionIdPatchRequest rebuild(
    void Function(ApiV1MenusMenuIdSectionsSectionIdPatchRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ApiV1MenusMenuIdSectionsSectionIdPatchRequestBuilder toBuilder() =>
      ApiV1MenusMenuIdSectionsSectionIdPatchRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiV1MenusMenuIdSectionsSectionIdPatchRequest &&
        name == other.name &&
        position == other.position &&
        active == other.active;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, position.hashCode);
    _$hash = $jc(_$hash, active.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ApiV1MenusMenuIdSectionsSectionIdPatchRequest',
          )
          ..add('name', name)
          ..add('position', position)
          ..add('active', active))
        .toString();
  }
}

class ApiV1MenusMenuIdSectionsSectionIdPatchRequestBuilder
    implements
        Builder<
          ApiV1MenusMenuIdSectionsSectionIdPatchRequest,
          ApiV1MenusMenuIdSectionsSectionIdPatchRequestBuilder
        > {
  _$ApiV1MenusMenuIdSectionsSectionIdPatchRequest? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _position;
  int? get position => _$this._position;
  set position(int? position) => _$this._position = position;

  bool? _active;
  bool? get active => _$this._active;
  set active(bool? active) => _$this._active = active;

  ApiV1MenusMenuIdSectionsSectionIdPatchRequestBuilder() {
    ApiV1MenusMenuIdSectionsSectionIdPatchRequest._defaults(this);
  }

  ApiV1MenusMenuIdSectionsSectionIdPatchRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _position = $v.position;
      _active = $v.active;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiV1MenusMenuIdSectionsSectionIdPatchRequest other) {
    _$v = other as _$ApiV1MenusMenuIdSectionsSectionIdPatchRequest;
  }

  @override
  void update(
    void Function(ApiV1MenusMenuIdSectionsSectionIdPatchRequestBuilder)?
    updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  ApiV1MenusMenuIdSectionsSectionIdPatchRequest build() => _build();

  _$ApiV1MenusMenuIdSectionsSectionIdPatchRequest _build() {
    final _$result =
        _$v ??
        _$ApiV1MenusMenuIdSectionsSectionIdPatchRequest._(
          name: name,
          position: position,
          active: active,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
