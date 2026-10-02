// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_acquisition_context.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BookingAcquisitionContext extends BookingAcquisitionContext {
  @override
  final BookingAcquisitionSource source_;
  @override
  final String? installationPublicId;
  @override
  final FudiDirectChannel? channel;
  @override
  final String? referrerDomain;
  @override
  final String? entryPath;
  @override
  final String? utmSource;
  @override
  final String? utmMedium;
  @override
  final String? utmCampaign;
  @override
  final String? utmContent;
  @override
  final String? utmTerm;

  factory _$BookingAcquisitionContext([
    void Function(BookingAcquisitionContextBuilder)? updates,
  ]) => (BookingAcquisitionContextBuilder()..update(updates))._build();

  _$BookingAcquisitionContext._({
    required this.source_,
    this.installationPublicId,
    this.channel,
    this.referrerDomain,
    this.entryPath,
    this.utmSource,
    this.utmMedium,
    this.utmCampaign,
    this.utmContent,
    this.utmTerm,
  }) : super._();
  @override
  BookingAcquisitionContext rebuild(
    void Function(BookingAcquisitionContextBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  BookingAcquisitionContextBuilder toBuilder() =>
      BookingAcquisitionContextBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BookingAcquisitionContext &&
        source_ == other.source_ &&
        installationPublicId == other.installationPublicId &&
        channel == other.channel &&
        referrerDomain == other.referrerDomain &&
        entryPath == other.entryPath &&
        utmSource == other.utmSource &&
        utmMedium == other.utmMedium &&
        utmCampaign == other.utmCampaign &&
        utmContent == other.utmContent &&
        utmTerm == other.utmTerm;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jc(_$hash, installationPublicId.hashCode);
    _$hash = $jc(_$hash, channel.hashCode);
    _$hash = $jc(_$hash, referrerDomain.hashCode);
    _$hash = $jc(_$hash, entryPath.hashCode);
    _$hash = $jc(_$hash, utmSource.hashCode);
    _$hash = $jc(_$hash, utmMedium.hashCode);
    _$hash = $jc(_$hash, utmCampaign.hashCode);
    _$hash = $jc(_$hash, utmContent.hashCode);
    _$hash = $jc(_$hash, utmTerm.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BookingAcquisitionContext')
          ..add('source_', source_)
          ..add('installationPublicId', installationPublicId)
          ..add('channel', channel)
          ..add('referrerDomain', referrerDomain)
          ..add('entryPath', entryPath)
          ..add('utmSource', utmSource)
          ..add('utmMedium', utmMedium)
          ..add('utmCampaign', utmCampaign)
          ..add('utmContent', utmContent)
          ..add('utmTerm', utmTerm))
        .toString();
  }
}

class BookingAcquisitionContextBuilder
    implements
        Builder<BookingAcquisitionContext, BookingAcquisitionContextBuilder> {
  _$BookingAcquisitionContext? _$v;

  BookingAcquisitionSource? _source_;
  BookingAcquisitionSource? get source_ => _$this._source_;
  set source_(BookingAcquisitionSource? source_) => _$this._source_ = source_;

  String? _installationPublicId;
  String? get installationPublicId => _$this._installationPublicId;
  set installationPublicId(String? installationPublicId) =>
      _$this._installationPublicId = installationPublicId;

  FudiDirectChannel? _channel;
  FudiDirectChannel? get channel => _$this._channel;
  set channel(FudiDirectChannel? channel) => _$this._channel = channel;

  String? _referrerDomain;
  String? get referrerDomain => _$this._referrerDomain;
  set referrerDomain(String? referrerDomain) =>
      _$this._referrerDomain = referrerDomain;

  String? _entryPath;
  String? get entryPath => _$this._entryPath;
  set entryPath(String? entryPath) => _$this._entryPath = entryPath;

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

  String? _utmTerm;
  String? get utmTerm => _$this._utmTerm;
  set utmTerm(String? utmTerm) => _$this._utmTerm = utmTerm;

  BookingAcquisitionContextBuilder() {
    BookingAcquisitionContext._defaults(this);
  }

  BookingAcquisitionContextBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _source_ = $v.source_;
      _installationPublicId = $v.installationPublicId;
      _channel = $v.channel;
      _referrerDomain = $v.referrerDomain;
      _entryPath = $v.entryPath;
      _utmSource = $v.utmSource;
      _utmMedium = $v.utmMedium;
      _utmCampaign = $v.utmCampaign;
      _utmContent = $v.utmContent;
      _utmTerm = $v.utmTerm;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BookingAcquisitionContext other) {
    _$v = other as _$BookingAcquisitionContext;
  }

  @override
  void update(void Function(BookingAcquisitionContextBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BookingAcquisitionContext build() => _build();

  _$BookingAcquisitionContext _build() {
    final _$result =
        _$v ??
        _$BookingAcquisitionContext._(
          source_: BuiltValueNullFieldError.checkNotNull(
            source_,
            r'BookingAcquisitionContext',
            'source_',
          ),
          installationPublicId: installationPublicId,
          channel: channel,
          referrerDomain: referrerDomain,
          entryPath: entryPath,
          utmSource: utmSource,
          utmMedium: utmMedium,
          utmCampaign: utmCampaign,
          utmContent: utmContent,
          utmTerm: utmTerm,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
