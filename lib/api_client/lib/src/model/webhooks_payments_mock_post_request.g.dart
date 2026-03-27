// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'webhooks_payments_mock_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const WebhooksPaymentsMockPostRequestResultEnum
    _$webhooksPaymentsMockPostRequestResultEnum_success =
    const WebhooksPaymentsMockPostRequestResultEnum._('success');
const WebhooksPaymentsMockPostRequestResultEnum
    _$webhooksPaymentsMockPostRequestResultEnum_failed =
    const WebhooksPaymentsMockPostRequestResultEnum._('failed');

WebhooksPaymentsMockPostRequestResultEnum
    _$webhooksPaymentsMockPostRequestResultEnumValueOf(String name) {
  switch (name) {
    case 'success':
      return _$webhooksPaymentsMockPostRequestResultEnum_success;
    case 'failed':
      return _$webhooksPaymentsMockPostRequestResultEnum_failed;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<WebhooksPaymentsMockPostRequestResultEnum>
    _$webhooksPaymentsMockPostRequestResultEnumValues = BuiltSet<
        WebhooksPaymentsMockPostRequestResultEnum>(const <WebhooksPaymentsMockPostRequestResultEnum>[
  _$webhooksPaymentsMockPostRequestResultEnum_success,
  _$webhooksPaymentsMockPostRequestResultEnum_failed,
]);

Serializer<WebhooksPaymentsMockPostRequestResultEnum>
    _$webhooksPaymentsMockPostRequestResultEnumSerializer =
    _$WebhooksPaymentsMockPostRequestResultEnumSerializer();

class _$WebhooksPaymentsMockPostRequestResultEnumSerializer
    implements PrimitiveSerializer<WebhooksPaymentsMockPostRequestResultEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'success': 'success',
    'failed': 'failed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'success': 'success',
    'failed': 'failed',
  };

  @override
  final Iterable<Type> types = const <Type>[
    WebhooksPaymentsMockPostRequestResultEnum
  ];
  @override
  final String wireName = 'WebhooksPaymentsMockPostRequestResultEnum';

  @override
  Object serialize(Serializers serializers,
          WebhooksPaymentsMockPostRequestResultEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  WebhooksPaymentsMockPostRequestResultEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      WebhooksPaymentsMockPostRequestResultEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$WebhooksPaymentsMockPostRequest
    extends WebhooksPaymentsMockPostRequest {
  @override
  final String orderId;
  @override
  final WebhooksPaymentsMockPostRequestResultEnum result;

  factory _$WebhooksPaymentsMockPostRequest(
          [void Function(WebhooksPaymentsMockPostRequestBuilder)? updates]) =>
      (WebhooksPaymentsMockPostRequestBuilder()..update(updates))._build();

  _$WebhooksPaymentsMockPostRequest._(
      {required this.orderId, required this.result})
      : super._();
  @override
  WebhooksPaymentsMockPostRequest rebuild(
          void Function(WebhooksPaymentsMockPostRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WebhooksPaymentsMockPostRequestBuilder toBuilder() =>
      WebhooksPaymentsMockPostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WebhooksPaymentsMockPostRequest &&
        orderId == other.orderId &&
        result == other.result;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, orderId.hashCode);
    _$hash = $jc(_$hash, result.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WebhooksPaymentsMockPostRequest')
          ..add('orderId', orderId)
          ..add('result', result))
        .toString();
  }
}

class WebhooksPaymentsMockPostRequestBuilder
    implements
        Builder<WebhooksPaymentsMockPostRequest,
            WebhooksPaymentsMockPostRequestBuilder> {
  _$WebhooksPaymentsMockPostRequest? _$v;

  String? _orderId;
  String? get orderId => _$this._orderId;
  set orderId(String? orderId) => _$this._orderId = orderId;

  WebhooksPaymentsMockPostRequestResultEnum? _result;
  WebhooksPaymentsMockPostRequestResultEnum? get result => _$this._result;
  set result(WebhooksPaymentsMockPostRequestResultEnum? result) =>
      _$this._result = result;

  WebhooksPaymentsMockPostRequestBuilder() {
    WebhooksPaymentsMockPostRequest._defaults(this);
  }

  WebhooksPaymentsMockPostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _orderId = $v.orderId;
      _result = $v.result;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WebhooksPaymentsMockPostRequest other) {
    _$v = other as _$WebhooksPaymentsMockPostRequest;
  }

  @override
  void update(void Function(WebhooksPaymentsMockPostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WebhooksPaymentsMockPostRequest build() => _build();

  _$WebhooksPaymentsMockPostRequest _build() {
    final _$result = _$v ??
        _$WebhooksPaymentsMockPostRequest._(
          orderId: BuiltValueNullFieldError.checkNotNull(
              orderId, r'WebhooksPaymentsMockPostRequest', 'orderId'),
          result: BuiltValueNullFieldError.checkNotNull(
              result, r'WebhooksPaymentsMockPostRequest', 'result'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
