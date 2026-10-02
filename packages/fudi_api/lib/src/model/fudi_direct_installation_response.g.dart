// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fudi_direct_installation_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FudiDirectInstallationResponse extends FudiDirectInstallationResponse {
  @override
  final int? id;
  @override
  final String? publicId;
  @override
  final int? restaurantId;
  @override
  final String? restaurantSlug;
  @override
  final String? name;
  @override
  final FudiDirectInstallationType? type;
  @override
  final FudiDirectChannel? channel;
  @override
  final FudiDirectInstallationStatus? status;
  @override
  final BuiltList<String>? allowedDomains;
  @override
  final String? utmSource;
  @override
  final String? utmMedium;
  @override
  final String? utmCampaign;
  @override
  final String? utmContent;
  @override
  final int? createdBy;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  factory _$FudiDirectInstallationResponse([
    void Function(FudiDirectInstallationResponseBuilder)? updates,
  ]) => (FudiDirectInstallationResponseBuilder()..update(updates))._build();

  _$FudiDirectInstallationResponse._({
    this.id,
    this.publicId,
    this.restaurantId,
    this.restaurantSlug,
    this.name,
    this.type,
    this.channel,
    this.status,
    this.allowedDomains,
    this.utmSource,
    this.utmMedium,
    this.utmCampaign,
    this.utmContent,
    this.createdBy,
    this.createdAt,
    this.updatedAt,
  }) : super._();
  @override
  FudiDirectInstallationResponse rebuild(
    void Function(FudiDirectInstallationResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  FudiDirectInstallationResponseBuilder toBuilder() =>
      FudiDirectInstallationResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FudiDirectInstallationResponse &&
        id == other.id &&
        publicId == other.publicId &&
        restaurantId == other.restaurantId &&
        restaurantSlug == other.restaurantSlug &&
        name == other.name &&
        type == other.type &&
        channel == other.channel &&
        status == other.status &&
        allowedDomains == other.allowedDomains &&
        utmSource == other.utmSource &&
        utmMedium == other.utmMedium &&
        utmCampaign == other.utmCampaign &&
        utmContent == other.utmContent &&
        createdBy == other.createdBy &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, publicId.hashCode);
    _$hash = $jc(_$hash, restaurantId.hashCode);
    _$hash = $jc(_$hash, restaurantSlug.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, channel.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, allowedDomains.hashCode);
    _$hash = $jc(_$hash, utmSource.hashCode);
    _$hash = $jc(_$hash, utmMedium.hashCode);
    _$hash = $jc(_$hash, utmCampaign.hashCode);
    _$hash = $jc(_$hash, utmContent.hashCode);
    _$hash = $jc(_$hash, createdBy.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FudiDirectInstallationResponse')
          ..add('id', id)
          ..add('publicId', publicId)
          ..add('restaurantId', restaurantId)
          ..add('restaurantSlug', restaurantSlug)
          ..add('name', name)
          ..add('type', type)
          ..add('channel', channel)
          ..add('status', status)
          ..add('allowedDomains', allowedDomains)
          ..add('utmSource', utmSource)
          ..add('utmMedium', utmMedium)
          ..add('utmCampaign', utmCampaign)
          ..add('utmContent', utmContent)
          ..add('createdBy', createdBy)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class FudiDirectInstallationResponseBuilder
    implements
        Builder<
          FudiDirectInstallationResponse,
          FudiDirectInstallationResponseBuilder
        > {
  _$FudiDirectInstallationResponse? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _publicId;
  String? get publicId => _$this._publicId;
  set publicId(String? publicId) => _$this._publicId = publicId;

  int? _restaurantId;
  int? get restaurantId => _$this._restaurantId;
  set restaurantId(int? restaurantId) => _$this._restaurantId = restaurantId;

  String? _restaurantSlug;
  String? get restaurantSlug => _$this._restaurantSlug;
  set restaurantSlug(String? restaurantSlug) =>
      _$this._restaurantSlug = restaurantSlug;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  FudiDirectInstallationType? _type;
  FudiDirectInstallationType? get type => _$this._type;
  set type(FudiDirectInstallationType? type) => _$this._type = type;

  FudiDirectChannel? _channel;
  FudiDirectChannel? get channel => _$this._channel;
  set channel(FudiDirectChannel? channel) => _$this._channel = channel;

  FudiDirectInstallationStatus? _status;
  FudiDirectInstallationStatus? get status => _$this._status;
  set status(FudiDirectInstallationStatus? status) => _$this._status = status;

  ListBuilder<String>? _allowedDomains;
  ListBuilder<String> get allowedDomains =>
      _$this._allowedDomains ??= ListBuilder<String>();
  set allowedDomains(ListBuilder<String>? allowedDomains) =>
      _$this._allowedDomains = allowedDomains;

  String? _utmSource;
  String? get utmSource => _$this._utmSource;
  set utmSource(String? utmSource) => _$this._utmSource = utmSource;

  String? _utmMedium;
  String? get utmMedium => _$this._utmMedium;
  set utmMedium(String? utmMedium) => _$this._utmMedium = utmMedium;

  String? _utmCampaign;
  String? get utmCampaign => _$this._utmCampaign;
  set utmCampaign(String? utmCampaign) => _$this._utmCampaign = utmCampaign;

  String? _utmContent;
  String? get utmContent => _$this._utmContent;
  set utmContent(String? utmContent) => _$this._utmContent = utmContent;

  int? _createdBy;
  int? get createdBy => _$this._createdBy;
  set createdBy(int? createdBy) => _$this._createdBy = createdBy;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  FudiDirectInstallationResponseBuilder() {
    FudiDirectInstallationResponse._defaults(this);
  }

  FudiDirectInstallationResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _publicId = $v.publicId;
      _restaurantId = $v.restaurantId;
      _restaurantSlug = $v.restaurantSlug;
      _name = $v.name;
      _type = $v.type;
      _channel = $v.channel;
      _status = $v.status;
      _allowedDomains = $v.allowedDomains?.toBuilder();
      _utmSource = $v.utmSource;
      _utmMedium = $v.utmMedium;
      _utmCampaign = $v.utmCampaign;
      _utmContent = $v.utmContent;
      _createdBy = $v.createdBy;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FudiDirectInstallationResponse other) {
    _$v = other as _$FudiDirectInstallationResponse;
  }

  @override
  void update(void Function(FudiDirectInstallationResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FudiDirectInstallationResponse build() => _build();

  _$FudiDirectInstallationResponse _build() {
    _$FudiDirectInstallationResponse _$result;
    try {
      _$result =
          _$v ??
          _$FudiDirectInstallationResponse._(
            id: id,
            publicId: publicId,
            restaurantId: restaurantId,
            restaurantSlug: restaurantSlug,
            name: name,
            type: type,
            channel: channel,
            status: status,
            allowedDomains: _allowedDomains?.build(),
            utmSource: utmSource,
            utmMedium: utmMedium,
            utmCampaign: utmCampaign,
            utmContent: utmContent,
            createdBy: createdBy,
            createdAt: createdAt,
            updatedAt: updatedAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'allowedDomains';
        _allowedDomains?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'FudiDirectInstallationResponse',
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
