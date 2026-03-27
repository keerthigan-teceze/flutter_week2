// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'webhooks_payments_post_request_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WebhooksPaymentsPostRequestData
    extends WebhooksPaymentsPostRequestData {
  @override
  final WebhooksPaymentsPostRequestDataObject object;

  factory _$WebhooksPaymentsPostRequestData(
          [void Function(WebhooksPaymentsPostRequestDataBuilder)? updates]) =>
      (WebhooksPaymentsPostRequestDataBuilder()..update(updates))._build();

  _$WebhooksPaymentsPostRequestData._({required this.object}) : super._();
  @override
  WebhooksPaymentsPostRequestData rebuild(
          void Function(WebhooksPaymentsPostRequestDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WebhooksPaymentsPostRequestDataBuilder toBuilder() =>
      WebhooksPaymentsPostRequestDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WebhooksPaymentsPostRequestData && object == other.object;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, object.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WebhooksPaymentsPostRequestData')
          ..add('object', object))
        .toString();
  }
}

class WebhooksPaymentsPostRequestDataBuilder
    implements
        Builder<WebhooksPaymentsPostRequestData,
            WebhooksPaymentsPostRequestDataBuilder> {
  _$WebhooksPaymentsPostRequestData? _$v;

  WebhooksPaymentsPostRequestDataObjectBuilder? _object;
  WebhooksPaymentsPostRequestDataObjectBuilder get object =>
      _$this._object ??= WebhooksPaymentsPostRequestDataObjectBuilder();
  set object(WebhooksPaymentsPostRequestDataObjectBuilder? object) =>
      _$this._object = object;

  WebhooksPaymentsPostRequestDataBuilder() {
    WebhooksPaymentsPostRequestData._defaults(this);
  }

  WebhooksPaymentsPostRequestDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _object = $v.object.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WebhooksPaymentsPostRequestData other) {
    _$v = other as _$WebhooksPaymentsPostRequestData;
  }

  @override
  void update(void Function(WebhooksPaymentsPostRequestDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WebhooksPaymentsPostRequestData build() => _build();

  _$WebhooksPaymentsPostRequestData _build() {
    _$WebhooksPaymentsPostRequestData _$result;
    try {
      _$result = _$v ??
          _$WebhooksPaymentsPostRequestData._(
            object: object.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'object';
        object.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'WebhooksPaymentsPostRequestData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
