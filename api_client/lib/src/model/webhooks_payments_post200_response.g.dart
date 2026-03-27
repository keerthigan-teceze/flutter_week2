// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'webhooks_payments_post200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const WebhooksPaymentsPost200ResponseOrderStatusEnum
    _$webhooksPaymentsPost200ResponseOrderStatusEnum_paid =
    const WebhooksPaymentsPost200ResponseOrderStatusEnum._('paid');
const WebhooksPaymentsPost200ResponseOrderStatusEnum
    _$webhooksPaymentsPost200ResponseOrderStatusEnum_failed =
    const WebhooksPaymentsPost200ResponseOrderStatusEnum._('failed');

WebhooksPaymentsPost200ResponseOrderStatusEnum
    _$webhooksPaymentsPost200ResponseOrderStatusEnumValueOf(String name) {
  switch (name) {
    case 'paid':
      return _$webhooksPaymentsPost200ResponseOrderStatusEnum_paid;
    case 'failed':
      return _$webhooksPaymentsPost200ResponseOrderStatusEnum_failed;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<WebhooksPaymentsPost200ResponseOrderStatusEnum>
    _$webhooksPaymentsPost200ResponseOrderStatusEnumValues = BuiltSet<
        WebhooksPaymentsPost200ResponseOrderStatusEnum>(const <WebhooksPaymentsPost200ResponseOrderStatusEnum>[
  _$webhooksPaymentsPost200ResponseOrderStatusEnum_paid,
  _$webhooksPaymentsPost200ResponseOrderStatusEnum_failed,
]);

const WebhooksPaymentsPost200ResponsePaymentStatusEnum
    _$webhooksPaymentsPost200ResponsePaymentStatusEnum_success =
    const WebhooksPaymentsPost200ResponsePaymentStatusEnum._('success');
const WebhooksPaymentsPost200ResponsePaymentStatusEnum
    _$webhooksPaymentsPost200ResponsePaymentStatusEnum_failed =
    const WebhooksPaymentsPost200ResponsePaymentStatusEnum._('failed');

WebhooksPaymentsPost200ResponsePaymentStatusEnum
    _$webhooksPaymentsPost200ResponsePaymentStatusEnumValueOf(String name) {
  switch (name) {
    case 'success':
      return _$webhooksPaymentsPost200ResponsePaymentStatusEnum_success;
    case 'failed':
      return _$webhooksPaymentsPost200ResponsePaymentStatusEnum_failed;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<WebhooksPaymentsPost200ResponsePaymentStatusEnum>
    _$webhooksPaymentsPost200ResponsePaymentStatusEnumValues = BuiltSet<
        WebhooksPaymentsPost200ResponsePaymentStatusEnum>(const <WebhooksPaymentsPost200ResponsePaymentStatusEnum>[
  _$webhooksPaymentsPost200ResponsePaymentStatusEnum_success,
  _$webhooksPaymentsPost200ResponsePaymentStatusEnum_failed,
]);

Serializer<WebhooksPaymentsPost200ResponseOrderStatusEnum>
    _$webhooksPaymentsPost200ResponseOrderStatusEnumSerializer =
    _$WebhooksPaymentsPost200ResponseOrderStatusEnumSerializer();
Serializer<WebhooksPaymentsPost200ResponsePaymentStatusEnum>
    _$webhooksPaymentsPost200ResponsePaymentStatusEnumSerializer =
    _$WebhooksPaymentsPost200ResponsePaymentStatusEnumSerializer();

class _$WebhooksPaymentsPost200ResponseOrderStatusEnumSerializer
    implements
        PrimitiveSerializer<WebhooksPaymentsPost200ResponseOrderStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'paid': 'paid',
    'failed': 'failed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'paid': 'paid',
    'failed': 'failed',
  };

  @override
  final Iterable<Type> types = const <Type>[
    WebhooksPaymentsPost200ResponseOrderStatusEnum
  ];
  @override
  final String wireName = 'WebhooksPaymentsPost200ResponseOrderStatusEnum';

  @override
  Object serialize(Serializers serializers,
          WebhooksPaymentsPost200ResponseOrderStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  WebhooksPaymentsPost200ResponseOrderStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      WebhooksPaymentsPost200ResponseOrderStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$WebhooksPaymentsPost200ResponsePaymentStatusEnumSerializer
    implements
        PrimitiveSerializer<WebhooksPaymentsPost200ResponsePaymentStatusEnum> {
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
    WebhooksPaymentsPost200ResponsePaymentStatusEnum
  ];
  @override
  final String wireName = 'WebhooksPaymentsPost200ResponsePaymentStatusEnum';

  @override
  Object serialize(Serializers serializers,
          WebhooksPaymentsPost200ResponsePaymentStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  WebhooksPaymentsPost200ResponsePaymentStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      WebhooksPaymentsPost200ResponsePaymentStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$WebhooksPaymentsPost200Response
    extends WebhooksPaymentsPost200Response {
  @override
  final bool success;
  @override
  final bool ok;
  @override
  final bool alreadyProcessed;
  @override
  final String providerRef;
  @override
  final String orderId;
  @override
  final WebhooksPaymentsPost200ResponseOrderStatusEnum orderStatus;
  @override
  final WebhooksPaymentsPost200ResponsePaymentStatusEnum paymentStatus;
  @override
  final String? message;

  factory _$WebhooksPaymentsPost200Response(
          [void Function(WebhooksPaymentsPost200ResponseBuilder)? updates]) =>
      (WebhooksPaymentsPost200ResponseBuilder()..update(updates))._build();

  _$WebhooksPaymentsPost200Response._(
      {required this.success,
      required this.ok,
      required this.alreadyProcessed,
      required this.providerRef,
      required this.orderId,
      required this.orderStatus,
      required this.paymentStatus,
      this.message})
      : super._();
  @override
  WebhooksPaymentsPost200Response rebuild(
          void Function(WebhooksPaymentsPost200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WebhooksPaymentsPost200ResponseBuilder toBuilder() =>
      WebhooksPaymentsPost200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WebhooksPaymentsPost200Response &&
        success == other.success &&
        ok == other.ok &&
        alreadyProcessed == other.alreadyProcessed &&
        providerRef == other.providerRef &&
        orderId == other.orderId &&
        orderStatus == other.orderStatus &&
        paymentStatus == other.paymentStatus &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, ok.hashCode);
    _$hash = $jc(_$hash, alreadyProcessed.hashCode);
    _$hash = $jc(_$hash, providerRef.hashCode);
    _$hash = $jc(_$hash, orderId.hashCode);
    _$hash = $jc(_$hash, orderStatus.hashCode);
    _$hash = $jc(_$hash, paymentStatus.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WebhooksPaymentsPost200Response')
          ..add('success', success)
          ..add('ok', ok)
          ..add('alreadyProcessed', alreadyProcessed)
          ..add('providerRef', providerRef)
          ..add('orderId', orderId)
          ..add('orderStatus', orderStatus)
          ..add('paymentStatus', paymentStatus)
          ..add('message', message))
        .toString();
  }
}

class WebhooksPaymentsPost200ResponseBuilder
    implements
        Builder<WebhooksPaymentsPost200Response,
            WebhooksPaymentsPost200ResponseBuilder> {
  _$WebhooksPaymentsPost200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  bool? _ok;
  bool? get ok => _$this._ok;
  set ok(bool? ok) => _$this._ok = ok;

  bool? _alreadyProcessed;
  bool? get alreadyProcessed => _$this._alreadyProcessed;
  set alreadyProcessed(bool? alreadyProcessed) =>
      _$this._alreadyProcessed = alreadyProcessed;

  String? _providerRef;
  String? get providerRef => _$this._providerRef;
  set providerRef(String? providerRef) => _$this._providerRef = providerRef;

  String? _orderId;
  String? get orderId => _$this._orderId;
  set orderId(String? orderId) => _$this._orderId = orderId;

  WebhooksPaymentsPost200ResponseOrderStatusEnum? _orderStatus;
  WebhooksPaymentsPost200ResponseOrderStatusEnum? get orderStatus =>
      _$this._orderStatus;
  set orderStatus(
          WebhooksPaymentsPost200ResponseOrderStatusEnum? orderStatus) =>
      _$this._orderStatus = orderStatus;

  WebhooksPaymentsPost200ResponsePaymentStatusEnum? _paymentStatus;
  WebhooksPaymentsPost200ResponsePaymentStatusEnum? get paymentStatus =>
      _$this._paymentStatus;
  set paymentStatus(
          WebhooksPaymentsPost200ResponsePaymentStatusEnum? paymentStatus) =>
      _$this._paymentStatus = paymentStatus;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  WebhooksPaymentsPost200ResponseBuilder() {
    WebhooksPaymentsPost200Response._defaults(this);
  }

  WebhooksPaymentsPost200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _ok = $v.ok;
      _alreadyProcessed = $v.alreadyProcessed;
      _providerRef = $v.providerRef;
      _orderId = $v.orderId;
      _orderStatus = $v.orderStatus;
      _paymentStatus = $v.paymentStatus;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WebhooksPaymentsPost200Response other) {
    _$v = other as _$WebhooksPaymentsPost200Response;
  }

  @override
  void update(void Function(WebhooksPaymentsPost200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WebhooksPaymentsPost200Response build() => _build();

  _$WebhooksPaymentsPost200Response _build() {
    final _$result = _$v ??
        _$WebhooksPaymentsPost200Response._(
          success: BuiltValueNullFieldError.checkNotNull(
              success, r'WebhooksPaymentsPost200Response', 'success'),
          ok: BuiltValueNullFieldError.checkNotNull(
              ok, r'WebhooksPaymentsPost200Response', 'ok'),
          alreadyProcessed: BuiltValueNullFieldError.checkNotNull(
              alreadyProcessed,
              r'WebhooksPaymentsPost200Response',
              'alreadyProcessed'),
          providerRef: BuiltValueNullFieldError.checkNotNull(
              providerRef, r'WebhooksPaymentsPost200Response', 'providerRef'),
          orderId: BuiltValueNullFieldError.checkNotNull(
              orderId, r'WebhooksPaymentsPost200Response', 'orderId'),
          orderStatus: BuiltValueNullFieldError.checkNotNull(
              orderStatus, r'WebhooksPaymentsPost200Response', 'orderStatus'),
          paymentStatus: BuiltValueNullFieldError.checkNotNull(paymentStatus,
              r'WebhooksPaymentsPost200Response', 'paymentStatus'),
          message: message,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
