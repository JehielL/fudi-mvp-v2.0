// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_v1_menus_menu_id_sections_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiV1MenusMenuIdSectionsPostRequest
    extends ApiV1MenusMenuIdSectionsPostRequest {
  @override
  final String name;
  @override
  final int? position;
  @override
  final bool? active;

  factory _$ApiV1MenusMenuIdSectionsPostRequest([
    void Function(ApiV1MenusMenuIdSectionsPostRequestBuilder)? updates,
  ]) =>
      (ApiV1MenusMenuIdSectionsPostRequestBuilder()..update(updates))._build();

  _$ApiV1MenusMenuIdSectionsPostRequest._({
    required this.name,
    this.position,
    this.active,
  }) : super._();
  @override
  ApiV1MenusMenuIdSectionsPostRequest rebuild(
    void Function(ApiV1MenusMenuIdSectionsPostRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ApiV1MenusMenuIdSectionsPostRequestBuilder toBuilder() =>
      ApiV1MenusMenuIdSectionsPostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiV1MenusMenuIdSectionsPostRequest &&
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
    return (newBuiltValueToStringHelper(r'ApiV1MenusMenuIdSectionsPostRequest')
          ..add('name', name)
          ..add('position', position)
          ..add('active', active))
        .toString();
  }
}

class ApiV1MenusMenuIdSectionsPostRequestBuilder
    implements
        Builder<
          ApiV1MenusMenuIdSectionsPostRequest,
          ApiV1MenusMenuIdSectionsPostRequestBuilder
        > {
  _$ApiV1MenusMenuIdSectionsPostRequest? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _position;
  int? get position => _$this._position;
  set position(int? position) => _$this._position = position;

  bool? _active;
  bool? get active => _$this._active;
  set active(bool? active) => _$this._active = active;

  ApiV1MenusMenuIdSectionsPostRequestBuilder() {
    ApiV1MenusMenuIdSectionsPostRequest._defaults(this);
  }

  ApiV1MenusMenuIdSectionsPostRequestBuilder get _$this {
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
  void replace(ApiV1MenusMenuIdSectionsPostRequest other) {
    _$v = other as _$ApiV1MenusMenuIdSectionsPostRequest;
  }

  @override
  void update(
    void Function(ApiV1MenusMenuIdSectionsPostRequestBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  ApiV1MenusMenuIdSectionsPostRequest build() => _build();

  _$ApiV1MenusMenuIdSectionsPostRequest _build() {
    final _$result =
        _$v ??
        _$ApiV1MenusMenuIdSectionsPostRequest._(
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'ApiV1MenusMenuIdSectionsPostRequest',
            'name',
          ),
          position: position,
          active: active,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
