// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'webhooks_payments_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const WebhooksPaymentsPostRequestTypeEnum
    _$webhooksPaymentsPostRequestTypeEnum_succeeded =
    const WebhooksPaymentsPostRequestTypeEnum._('succeeded');
const WebhooksPaymentsPostRequestTypeEnum
    _$webhooksPaymentsPostRequestTypeEnum_failed =
    const WebhooksPaymentsPostRequestTypeEnum._('failed');

WebhooksPaymentsPostRequestTypeEnum
    _$webhooksPaymentsPostRequestTypeEnumValueOf(String name) {
  switch (name) {
    case 'succeeded':
      return _$webhooksPaymentsPostRequestTypeEnum_succeeded;
    case 'failed':
      return _$webhooksPaymentsPostRequestTypeEnum_failed;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<WebhooksPaymentsPostRequestTypeEnum>
    _$webhooksPaymentsPostRequestTypeEnumValues = BuiltSet<
        WebhooksPaymentsPostRequestTypeEnum>(const <WebhooksPaymentsPostRequestTypeEnum>[
  _$webhooksPaymentsPostRequestTypeEnum_succeeded,
  _$webhooksPaymentsPostRequestTypeEnum_failed,
]);

Serializer<WebhooksPaymentsPostRequestTypeEnum>
    _$webhooksPaymentsPostRequestTypeEnumSerializer =
    _$WebhooksPaymentsPostRequestTypeEnumSerializer();

class _$WebhooksPaymentsPostRequestTypeEnumSerializer
    implements PrimitiveSerializer<WebhooksPaymentsPostRequestTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'succeeded': 'payment_intent.succeeded',
    'failed': 'payment_intent.failed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'payment_intent.succeeded': 'succeeded',
    'payment_intent.failed': 'failed',
  };

  @override
  final Iterable<Type> types = const <Type>[
    WebhooksPaymentsPostRequestTypeEnum
  ];
  @override
  final String wireName = 'WebhooksPaymentsPostRequestTypeEnum';

  @override
  Object serialize(
          Serializers serializers, WebhooksPaymentsPostRequestTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  WebhooksPaymentsPostRequestTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      WebhooksPaymentsPostRequestTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$WebhooksPaymentsPostRequest extends WebhooksPaymentsPostRequest {
  @override
  final WebhooksPaymentsPostRequestTypeEnum type;
  @override
  final WebhooksPaymentsPostRequestData data;

  factory _$WebhooksPaymentsPostRequest(
          [void Function(WebhooksPaymentsPostRequestBuilder)? updates]) =>
      (WebhooksPaymentsPostRequestBuilder()..update(updates))._build();

  _$WebhooksPaymentsPostRequest._({required this.type, required this.data})
      : super._();
  @override
  WebhooksPaymentsPostRequest rebuild(
          void Function(WebhooksPaymentsPostRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WebhooksPaymentsPostRequestBuilder toBuilder() =>
      WebhooksPaymentsPostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WebhooksPaymentsPostRequest &&
        type == other.type &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WebhooksPaymentsPostRequest')
          ..add('type', type)
          ..add('data', data))
        .toString();
  }
}

class WebhooksPaymentsPostRequestBuilder
    implements
        Builder<WebhooksPaymentsPostRequest,
            WebhooksPaymentsPostRequestBuilder> {
  _$WebhooksPaymentsPostRequest? _$v;

  WebhooksPaymentsPostRequestTypeEnum? _type;
  WebhooksPaymentsPostRequestTypeEnum? get type => _$this._type;
  set type(WebhooksPaymentsPostRequestTypeEnum? type) => _$this._type = type;

  WebhooksPaymentsPostRequestDataBuilder? _data;
  WebhooksPaymentsPostRequestDataBuilder get data =>
      _$this._data ??= WebhooksPaymentsPostRequestDataBuilder();
  set data(WebhooksPaymentsPostRequestDataBuilder? data) => _$this._data = data;

  WebhooksPaymentsPostRequestBuilder() {
    WebhooksPaymentsPostRequest._defaults(this);
  }

  WebhooksPaymentsPostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WebhooksPaymentsPostRequest other) {
    _$v = other as _$WebhooksPaymentsPostRequest;
  }

  @override
  void update(void Function(WebhooksPaymentsPostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WebhooksPaymentsPostRequest build() => _build();

  _$WebhooksPaymentsPostRequest _build() {
    _$WebhooksPaymentsPostRequest _$result;
    try {
      _$result = _$v ??
          _$WebhooksPaymentsPostRequest._(
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'WebhooksPaymentsPostRequest', 'type'),
            data: data.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'WebhooksPaymentsPostRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
