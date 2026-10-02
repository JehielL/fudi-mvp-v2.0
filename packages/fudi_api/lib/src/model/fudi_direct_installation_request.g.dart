// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fudi_direct_installation_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FudiDirectInstallationRequest extends FudiDirectInstallationRequest {
  @override
  final String name;
  @override
  final FudiDirectInstallationType type;
  @override
  final FudiDirectChannel channel;
  @override
  final FudiDirectInstallationStatus? status;
  @override
  final BuiltList<String> allowedDomains;
  @override
  final String? utmSource;
  @override
  final String? utmMedium;
  @override
  final String? utmCampaign;
  @override
  final String? utmContent;

  factory _$FudiDirectInstallationRequest([
    void Function(FudiDirectInstallationRequestBuilder)? updates,
  ]) => (FudiDirectInstallationRequestBuilder()..update(updates))._build();

  _$FudiDirectInstallationRequest._({
    required this.name,
    required this.type,
    required this.channel,
    this.status,
    required this.allowedDomains,
    this.utmSource,
    this.utmMedium,
    this.utmCampaign,
    this.utmContent,
  }) : super._();
  @override
  FudiDirectInstallationRequest rebuild(
    void Function(FudiDirectInstallationRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  FudiDirectInstallationRequestBuilder toBuilder() =>
      FudiDirectInstallationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FudiDirectInstallationRequest &&
        name == other.name &&
        type == other.type &&
        channel == other.channel &&
        status == other.status &&
        allowedDomains == other.allowedDomains &&
        utmSource == other.utmSource &&
        utmMedium == other.utmMedium &&
        utmCampaign == other.utmCampaign &&
        utmContent == other.utmContent;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, channel.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, allowedDomains.hashCode);
    _$hash = $jc(_$hash, utmSource.hashCode);
    _$hash = $jc(_$hash, utmMedium.hashCode);
    _$hash = $jc(_$hash, utmCampaign.hashCode);
    _$hash = $jc(_$hash, utmContent.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FudiDirectInstallationRequest')
          ..add('name', name)
          ..add('type', type)
          ..add('channel', channel)
          ..add('status', status)
          ..add('allowedDomains', allowedDomains)
          ..add('utmSource', utmSource)
          ..add('utmMedium', utmMedium)
          ..add('utmCampaign', utmCampaign)
          ..add('utmContent', utmContent))
        .toString();
  }
}

class FudiDirectInstallationRequestBuilder
    implements
        Builder<
          FudiDirectInstallationRequest,
          FudiDirectInstallationRequestBuilder
        > {
  _$FudiDirectInstallationRequest? _$v;

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

  FudiDirectInstallationRequestBuilder() {
    FudiDirectInstallationRequest._defaults(this);
  }

  FudiDirectInstallationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _type = $v.type;
      _channel = $v.channel;
      _status = $v.status;
      _allowedDomains = $v.allowedDomains.toBuilder();
      _utmSource = $v.utmSource;
      _utmMedium = $v.utmMedium;
      _utmCampaign = $v.utmCampaign;
      _utmContent = $v.utmContent;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FudiDirectInstallationRequest other) {
    _$v = other as _$FudiDirectInstallationRequest;
  }

  @override
  void update(void Function(FudiDirectInstallationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FudiDirectInstallationRequest build() => _build();

  _$FudiDirectInstallationRequest _build() {
    _$FudiDirectInstallationRequest _$result;
    try {
      _$result =
          _$v ??
          _$FudiDirectInstallationRequest._(
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'FudiDirectInstallationRequest',
              'name',
            ),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'FudiDirectInstallationRequest',
              'type',
            ),
            channel: BuiltValueNullFieldError.checkNotNull(
              channel,
              r'FudiDirectInstallationRequest',
              'channel',
            ),
            status: status,
            allowedDomains: allowedDomains.build(),
            utmSource: utmSource,
            utmMedium: utmMedium,
            utmCampaign: utmCampaign,
            utmContent: utmContent,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'allowedDomains';
        allowedDomains.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'FudiDirectInstallationRequest',
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
