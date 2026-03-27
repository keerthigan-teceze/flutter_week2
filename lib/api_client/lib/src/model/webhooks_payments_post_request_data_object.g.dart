// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'webhooks_payments_post_request_data_object.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WebhooksPaymentsPostRequestDataObject
    extends WebhooksPaymentsPostRequestDataObject {
  @override
  final String? providerRef;
  @override
  final WebhooksPaymentsPostRequestDataObjectMetadata? metadata;

  factory _$WebhooksPaymentsPostRequestDataObject(
          [void Function(WebhooksPaymentsPostRequestDataObjectBuilder)?
              updates]) =>
      (WebhooksPaymentsPostRequestDataObjectBuilder()..update(updates))
          ._build();

  _$WebhooksPaymentsPostRequestDataObject._({this.providerRef, this.metadata})
      : super._();
  @override
  WebhooksPaymentsPostRequestDataObject rebuild(
          void Function(WebhooksPaymentsPostRequestDataObjectBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WebhooksPaymentsPostRequestDataObjectBuilder toBuilder() =>
      WebhooksPaymentsPostRequestDataObjectBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WebhooksPaymentsPostRequestDataObject &&
        providerRef == other.providerRef &&
        metadata == other.metadata;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, providerRef.hashCode);
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'WebhooksPaymentsPostRequestDataObject')
          ..add('providerRef', providerRef)
          ..add('metadata', metadata))
        .toString();
  }
}

class WebhooksPaymentsPostRequestDataObjectBuilder
    implements
        Builder<WebhooksPaymentsPostRequestDataObject,
            WebhooksPaymentsPostRequestDataObjectBuilder> {
  _$WebhooksPaymentsPostRequestDataObject? _$v;

  String? _providerRef;
  String? get providerRef => _$this._providerRef;
  set providerRef(String? providerRef) => _$this._providerRef = providerRef;

  WebhooksPaymentsPostRequestDataObjectMetadataBuilder? _metadata;
  WebhooksPaymentsPostRequestDataObjectMetadataBuilder get metadata =>
      _$this._metadata ??=
          WebhooksPaymentsPostRequestDataObjectMetadataBuilder();
  set metadata(
          WebhooksPaymentsPostRequestDataObjectMetadataBuilder? metadata) =>
      _$this._metadata = metadata;

  WebhooksPaymentsPostRequestDataObjectBuilder() {
    WebhooksPaymentsPostRequestDataObject._defaults(this);
  }

  WebhooksPaymentsPostRequestDataObjectBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _providerRef = $v.providerRef;
      _metadata = $v.metadata?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WebhooksPaymentsPostRequestDataObject other) {
    _$v = other as _$WebhooksPaymentsPostRequestDataObject;
  }

  @override
  void update(
      void Function(WebhooksPaymentsPostRequestDataObjectBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WebhooksPaymentsPostRequestDataObject build() => _build();

  _$WebhooksPaymentsPostRequestDataObject _build() {
    _$WebhooksPaymentsPostRequestDataObject _$result;
    try {
      _$result = _$v ??
          _$WebhooksPaymentsPostRequestDataObject._(
            providerRef: providerRef,
            metadata: _metadata?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'metadata';
        _metadata?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'WebhooksPaymentsPostRequestDataObject',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
