// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'webhooks_payments_mock_post200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const WebhooksPaymentsMockPost200ResponseOrderStatusEnum
    _$webhooksPaymentsMockPost200ResponseOrderStatusEnum_paid =
    const WebhooksPaymentsMockPost200ResponseOrderStatusEnum._('paid');
const WebhooksPaymentsMockPost200ResponseOrderStatusEnum
    _$webhooksPaymentsMockPost200ResponseOrderStatusEnum_failed =
    const WebhooksPaymentsMockPost200ResponseOrderStatusEnum._('failed');

WebhooksPaymentsMockPost200ResponseOrderStatusEnum
    _$webhooksPaymentsMockPost200ResponseOrderStatusEnumValueOf(String name) {
  switch (name) {
    case 'paid':
      return _$webhooksPaymentsMockPost200ResponseOrderStatusEnum_paid;
    case 'failed':
      return _$webhooksPaymentsMockPost200ResponseOrderStatusEnum_failed;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<WebhooksPaymentsMockPost200ResponseOrderStatusEnum>
    _$webhooksPaymentsMockPost200ResponseOrderStatusEnumValues = BuiltSet<
        WebhooksPaymentsMockPost200ResponseOrderStatusEnum>(const <WebhooksPaymentsMockPost200ResponseOrderStatusEnum>[
  _$webhooksPaymentsMockPost200ResponseOrderStatusEnum_paid,
  _$webhooksPaymentsMockPost200ResponseOrderStatusEnum_failed,
]);

const WebhooksPaymentsMockPost200ResponsePaymentStatusEnum
    _$webhooksPaymentsMockPost200ResponsePaymentStatusEnum_success =
    const WebhooksPaymentsMockPost200ResponsePaymentStatusEnum._('success');
const WebhooksPaymentsMockPost200ResponsePaymentStatusEnum
    _$webhooksPaymentsMockPost200ResponsePaymentStatusEnum_failed =
    const WebhooksPaymentsMockPost200ResponsePaymentStatusEnum._('failed');

WebhooksPaymentsMockPost200ResponsePaymentStatusEnum
    _$webhooksPaymentsMockPost200ResponsePaymentStatusEnumValueOf(String name) {
  switch (name) {
    case 'success':
      return _$webhooksPaymentsMockPost200ResponsePaymentStatusEnum_success;
    case 'failed':
      return _$webhooksPaymentsMockPost200ResponsePaymentStatusEnum_failed;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<WebhooksPaymentsMockPost200ResponsePaymentStatusEnum>
    _$webhooksPaymentsMockPost200ResponsePaymentStatusEnumValues = BuiltSet<
        WebhooksPaymentsMockPost200ResponsePaymentStatusEnum>(const <WebhooksPaymentsMockPost200ResponsePaymentStatusEnum>[
  _$webhooksPaymentsMockPost200ResponsePaymentStatusEnum_success,
  _$webhooksPaymentsMockPost200ResponsePaymentStatusEnum_failed,
]);

Serializer<WebhooksPaymentsMockPost200ResponseOrderStatusEnum>
    _$webhooksPaymentsMockPost200ResponseOrderStatusEnumSerializer =
    _$WebhooksPaymentsMockPost200ResponseOrderStatusEnumSerializer();
Serializer<WebhooksPaymentsMockPost200ResponsePaymentStatusEnum>
    _$webhooksPaymentsMockPost200ResponsePaymentStatusEnumSerializer =
    _$WebhooksPaymentsMockPost200ResponsePaymentStatusEnumSerializer();

class _$WebhooksPaymentsMockPost200ResponseOrderStatusEnumSerializer
    implements
        PrimitiveSerializer<
            WebhooksPaymentsMockPost200ResponseOrderStatusEnum> {
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
    WebhooksPaymentsMockPost200ResponseOrderStatusEnum
  ];
  @override
  final String wireName = 'WebhooksPaymentsMockPost200ResponseOrderStatusEnum';

  @override
  Object serialize(Serializers serializers,
          WebhooksPaymentsMockPost200ResponseOrderStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  WebhooksPaymentsMockPost200ResponseOrderStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      WebhooksPaymentsMockPost200ResponseOrderStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$WebhooksPaymentsMockPost200ResponsePaymentStatusEnumSerializer
    implements
        PrimitiveSerializer<
            WebhooksPaymentsMockPost200ResponsePaymentStatusEnum> {
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
    WebhooksPaymentsMockPost200ResponsePaymentStatusEnum
  ];
  @override
  final String wireName =
      'WebhooksPaymentsMockPost200ResponsePaymentStatusEnum';

  @override
  Object serialize(Serializers serializers,
          WebhooksPaymentsMockPost200ResponsePaymentStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  WebhooksPaymentsMockPost200ResponsePaymentStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      WebhooksPaymentsMockPost200ResponsePaymentStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$WebhooksPaymentsMockPost200Response
    extends WebhooksPaymentsMockPost200Response {
  @override
  final bool success;
  @override
  final String providerRef;
  @override
  final String stripeSignature;
  @override
  final String orderId;
  @override
  final WebhooksPaymentsMockPost200ResponseOrderStatusEnum orderStatus;
  @override
  final WebhooksPaymentsMockPost200ResponsePaymentStatusEnum paymentStatus;
  @override
  final JsonObject? payload;

  factory _$WebhooksPaymentsMockPost200Response(
          [void Function(WebhooksPaymentsMockPost200ResponseBuilder)?
              updates]) =>
      (WebhooksPaymentsMockPost200ResponseBuilder()..update(updates))._build();

  _$WebhooksPaymentsMockPost200Response._(
      {required this.success,
      required this.providerRef,
      required this.stripeSignature,
      required this.orderId,
      required this.orderStatus,
      required this.paymentStatus,
      this.payload})
      : super._();
  @override
  WebhooksPaymentsMockPost200Response rebuild(
          void Function(WebhooksPaymentsMockPost200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WebhooksPaymentsMockPost200ResponseBuilder toBuilder() =>
      WebhooksPaymentsMockPost200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WebhooksPaymentsMockPost200Response &&
        success == other.success &&
        providerRef == other.providerRef &&
        stripeSignature == other.stripeSignature &&
        orderId == other.orderId &&
        orderStatus == other.orderStatus &&
        paymentStatus == other.paymentStatus &&
        payload == other.payload;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, providerRef.hashCode);
    _$hash = $jc(_$hash, stripeSignature.hashCode);
    _$hash = $jc(_$hash, orderId.hashCode);
    _$hash = $jc(_$hash, orderStatus.hashCode);
    _$hash = $jc(_$hash, paymentStatus.hashCode);
    _$hash = $jc(_$hash, payload.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WebhooksPaymentsMockPost200Response')
          ..add('success', success)
          ..add('providerRef', providerRef)
          ..add('stripeSignature', stripeSignature)
          ..add('orderId', orderId)
          ..add('orderStatus', orderStatus)
          ..add('paymentStatus', paymentStatus)
          ..add('payload', payload))
        .toString();
  }
}

class WebhooksPaymentsMockPost200ResponseBuilder
    implements
        Builder<WebhooksPaymentsMockPost200Response,
            WebhooksPaymentsMockPost200ResponseBuilder> {
  _$WebhooksPaymentsMockPost200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _providerRef;
  String? get providerRef => _$this._providerRef;
  set providerRef(String? providerRef) => _$this._providerRef = providerRef;

  String? _stripeSignature;
  String? get stripeSignature => _$this._stripeSignature;
  set stripeSignature(String? stripeSignature) =>
      _$this._stripeSignature = stripeSignature;

  String? _orderId;
  String? get orderId => _$this._orderId;
  set orderId(String? orderId) => _$this._orderId = orderId;

  WebhooksPaymentsMockPost200ResponseOrderStatusEnum? _orderStatus;
  WebhooksPaymentsMockPost200ResponseOrderStatusEnum? get orderStatus =>
      _$this._orderStatus;
  set orderStatus(
          WebhooksPaymentsMockPost200ResponseOrderStatusEnum? orderStatus) =>
      _$this._orderStatus = orderStatus;

  WebhooksPaymentsMockPost200ResponsePaymentStatusEnum? _paymentStatus;
  WebhooksPaymentsMockPost200ResponsePaymentStatusEnum? get paymentStatus =>
      _$this._paymentStatus;
  set paymentStatus(
          WebhooksPaymentsMockPost200ResponsePaymentStatusEnum?
              paymentStatus) =>
      _$this._paymentStatus = paymentStatus;

  JsonObject? _payload;
  JsonObject? get payload => _$this._payload;
  set payload(JsonObject? payload) => _$this._payload = payload;

  WebhooksPaymentsMockPost200ResponseBuilder() {
    WebhooksPaymentsMockPost200Response._defaults(this);
  }

  WebhooksPaymentsMockPost200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _providerRef = $v.providerRef;
      _stripeSignature = $v.stripeSignature;
      _orderId = $v.orderId;
      _orderStatus = $v.orderStatus;
      _paymentStatus = $v.paymentStatus;
      _payload = $v.payload;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WebhooksPaymentsMockPost200Response other) {
    _$v = other as _$WebhooksPaymentsMockPost200Response;
  }

  @override
  void update(
      void Function(WebhooksPaymentsMockPost200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WebhooksPaymentsMockPost200Response build() => _build();

  _$WebhooksPaymentsMockPost200Response _build() {
    final _$result = _$v ??
        _$WebhooksPaymentsMockPost200Response._(
          success: BuiltValueNullFieldError.checkNotNull(
              success, r'WebhooksPaymentsMockPost200Response', 'success'),
          providerRef: BuiltValueNullFieldError.checkNotNull(providerRef,
              r'WebhooksPaymentsMockPost200Response', 'providerRef'),
          stripeSignature: BuiltValueNullFieldError.checkNotNull(
              stripeSignature,
              r'WebhooksPaymentsMockPost200Response',
              'stripeSignature'),
          orderId: BuiltValueNullFieldError.checkNotNull(
              orderId, r'WebhooksPaymentsMockPost200Response', 'orderId'),
          orderStatus: BuiltValueNullFieldError.checkNotNull(orderStatus,
              r'WebhooksPaymentsMockPost200Response', 'orderStatus'),
          paymentStatus: BuiltValueNullFieldError.checkNotNull(paymentStatus,
              r'WebhooksPaymentsMockPost200Response', 'paymentStatus'),
          payload: payload,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
