// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'webhooks_payments_mock_post500_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WebhooksPaymentsMockPost500Response
    extends WebhooksPaymentsMockPost500Response {
  @override
  final bool success;
  @override
  final String error;

  factory _$WebhooksPaymentsMockPost500Response(
          [void Function(WebhooksPaymentsMockPost500ResponseBuilder)?
              updates]) =>
      (WebhooksPaymentsMockPost500ResponseBuilder()..update(updates))._build();

  _$WebhooksPaymentsMockPost500Response._(
      {required this.success, required this.error})
      : super._();
  @override
  WebhooksPaymentsMockPost500Response rebuild(
          void Function(WebhooksPaymentsMockPost500ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WebhooksPaymentsMockPost500ResponseBuilder toBuilder() =>
      WebhooksPaymentsMockPost500ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WebhooksPaymentsMockPost500Response &&
        success == other.success &&
        error == other.error;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WebhooksPaymentsMockPost500Response')
          ..add('success', success)
          ..add('error', error))
        .toString();
  }
}

class WebhooksPaymentsMockPost500ResponseBuilder
    implements
        Builder<WebhooksPaymentsMockPost500Response,
            WebhooksPaymentsMockPost500ResponseBuilder> {
  _$WebhooksPaymentsMockPost500Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  WebhooksPaymentsMockPost500ResponseBuilder() {
    WebhooksPaymentsMockPost500Response._defaults(this);
  }

  WebhooksPaymentsMockPost500ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WebhooksPaymentsMockPost500Response other) {
    _$v = other as _$WebhooksPaymentsMockPost500Response;
  }

  @override
  void update(
      void Function(WebhooksPaymentsMockPost500ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WebhooksPaymentsMockPost500Response build() => _build();

  _$WebhooksPaymentsMockPost500Response _build() {
    final _$result = _$v ??
        _$WebhooksPaymentsMockPost500Response._(
          success: BuiltValueNullFieldError.checkNotNull(
              success, r'WebhooksPaymentsMockPost500Response', 'success'),
          error: BuiltValueNullFieldError.checkNotNull(
              error, r'WebhooksPaymentsMockPost500Response', 'error'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
