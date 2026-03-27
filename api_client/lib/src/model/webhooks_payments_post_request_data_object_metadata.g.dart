// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'webhooks_payments_post_request_data_object_metadata.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WebhooksPaymentsPostRequestDataObjectMetadata
    extends WebhooksPaymentsPostRequestDataObjectMetadata {
  @override
  final String? providerRef;

  factory _$WebhooksPaymentsPostRequestDataObjectMetadata(
          [void Function(WebhooksPaymentsPostRequestDataObjectMetadataBuilder)?
              updates]) =>
      (WebhooksPaymentsPostRequestDataObjectMetadataBuilder()..update(updates))
          ._build();

  _$WebhooksPaymentsPostRequestDataObjectMetadata._({this.providerRef})
      : super._();
  @override
  WebhooksPaymentsPostRequestDataObjectMetadata rebuild(
          void Function(WebhooksPaymentsPostRequestDataObjectMetadataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WebhooksPaymentsPostRequestDataObjectMetadataBuilder toBuilder() =>
      WebhooksPaymentsPostRequestDataObjectMetadataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WebhooksPaymentsPostRequestDataObjectMetadata &&
        providerRef == other.providerRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, providerRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'WebhooksPaymentsPostRequestDataObjectMetadata')
          ..add('providerRef', providerRef))
        .toString();
  }
}

class WebhooksPaymentsPostRequestDataObjectMetadataBuilder
    implements
        Builder<WebhooksPaymentsPostRequestDataObjectMetadata,
            WebhooksPaymentsPostRequestDataObjectMetadataBuilder> {
  _$WebhooksPaymentsPostRequestDataObjectMetadata? _$v;

  String? _providerRef;
  String? get providerRef => _$this._providerRef;
  set providerRef(String? providerRef) => _$this._providerRef = providerRef;

  WebhooksPaymentsPostRequestDataObjectMetadataBuilder() {
    WebhooksPaymentsPostRequestDataObjectMetadata._defaults(this);
  }

  WebhooksPaymentsPostRequestDataObjectMetadataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _providerRef = $v.providerRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WebhooksPaymentsPostRequestDataObjectMetadata other) {
    _$v = other as _$WebhooksPaymentsPostRequestDataObjectMetadata;
  }

  @override
  void update(
      void Function(WebhooksPaymentsPostRequestDataObjectMetadataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  WebhooksPaymentsPostRequestDataObjectMetadata build() => _build();

  _$WebhooksPaymentsPostRequestDataObjectMetadata _build() {
    final _$result = _$v ??
        _$WebhooksPaymentsPostRequestDataObjectMetadata._(
          providerRef: providerRef,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
