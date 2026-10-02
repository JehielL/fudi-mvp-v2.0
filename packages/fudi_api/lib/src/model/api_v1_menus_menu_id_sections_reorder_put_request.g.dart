// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_v1_menus_menu_id_sections_reorder_put_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiV1MenusMenuIdSectionsReorderPutRequest
    extends ApiV1MenusMenuIdSectionsReorderPutRequest {
  @override
  final BuiltList<ApiV1MenusMenuIdSectionsReorderPutRequestItemsInner> items;

  factory _$ApiV1MenusMenuIdSectionsReorderPutRequest([
    void Function(ApiV1MenusMenuIdSectionsReorderPutRequestBuilder)? updates,
  ]) => (ApiV1MenusMenuIdSectionsReorderPutRequestBuilder()..update(updates))
      ._build();

  _$ApiV1MenusMenuIdSectionsReorderPutRequest._({required this.items})
    : super._();
  @override
  ApiV1MenusMenuIdSectionsReorderPutRequest rebuild(
    void Function(ApiV1MenusMenuIdSectionsReorderPutRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ApiV1MenusMenuIdSectionsReorderPutRequestBuilder toBuilder() =>
      ApiV1MenusMenuIdSectionsReorderPutRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiV1MenusMenuIdSectionsReorderPutRequest &&
        items == other.items;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'ApiV1MenusMenuIdSectionsReorderPutRequest',
    )..add('items', items)).toString();
  }
}

class ApiV1MenusMenuIdSectionsReorderPutRequestBuilder
    implements
        Builder<
          ApiV1MenusMenuIdSectionsReorderPutRequest,
          ApiV1MenusMenuIdSectionsReorderPutRequestBuilder
        > {
  _$ApiV1MenusMenuIdSectionsReorderPutRequest? _$v;

  ListBuilder<ApiV1MenusMenuIdSectionsReorderPutRequestItemsInner>? _items;
  ListBuilder<ApiV1MenusMenuIdSectionsReorderPutRequestItemsInner> get items =>
      _$this._items ??=
          ListBuilder<ApiV1MenusMenuIdSectionsReorderPutRequestItemsInner>();
  set items(
    ListBuilder<ApiV1MenusMenuIdSectionsReorderPutRequestItemsInner>? items,
  ) => _$this._items = items;

  ApiV1MenusMenuIdSectionsReorderPutRequestBuilder() {
    ApiV1MenusMenuIdSectionsReorderPutRequest._defaults(this);
  }

  ApiV1MenusMenuIdSectionsReorderPutRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiV1MenusMenuIdSectionsReorderPutRequest other) {
    _$v = other as _$ApiV1MenusMenuIdSectionsReorderPutRequest;
  }

  @override
  void update(
    void Function(ApiV1MenusMenuIdSectionsReorderPutRequestBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  ApiV1MenusMenuIdSectionsReorderPutRequest build() => _build();

  _$ApiV1MenusMenuIdSectionsReorderPutRequest _build() {
    _$ApiV1MenusMenuIdSectionsReorderPutRequest _$result;
    try {
      _$result =
          _$v ??
          _$ApiV1MenusMenuIdSectionsReorderPutRequest._(items: items.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ApiV1MenusMenuIdSectionsReorderPutRequest',
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
