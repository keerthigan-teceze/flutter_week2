// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_post200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OrdersPost200ResponseStatusEnum
    _$ordersPost200ResponseStatusEnum_pending =
    const OrdersPost200ResponseStatusEnum._('pending');
const OrdersPost200ResponseStatusEnum _$ordersPost200ResponseStatusEnum_paid =
    const OrdersPost200ResponseStatusEnum._('paid');
const OrdersPost200ResponseStatusEnum _$ordersPost200ResponseStatusEnum_failed =
    const OrdersPost200ResponseStatusEnum._('failed');

OrdersPost200ResponseStatusEnum _$ordersPost200ResponseStatusEnumValueOf(
    String name) {
  switch (name) {
    case 'pending':
      return _$ordersPost200ResponseStatusEnum_pending;
    case 'paid':
      return _$ordersPost200ResponseStatusEnum_paid;
    case 'failed':
      return _$ordersPost200ResponseStatusEnum_failed;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<OrdersPost200ResponseStatusEnum>
    _$ordersPost200ResponseStatusEnumValues = BuiltSet<
        OrdersPost200ResponseStatusEnum>(const <OrdersPost200ResponseStatusEnum>[
  _$ordersPost200ResponseStatusEnum_pending,
  _$ordersPost200ResponseStatusEnum_paid,
  _$ordersPost200ResponseStatusEnum_failed,
]);

Serializer<OrdersPost200ResponseStatusEnum>
    _$ordersPost200ResponseStatusEnumSerializer =
    _$OrdersPost200ResponseStatusEnumSerializer();

class _$OrdersPost200ResponseStatusEnumSerializer
    implements PrimitiveSerializer<OrdersPost200ResponseStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'pending': 'pending',
    'paid': 'paid',
    'failed': 'failed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'pending': 'pending',
    'paid': 'paid',
    'failed': 'failed',
  };

  @override
  final Iterable<Type> types = const <Type>[OrdersPost200ResponseStatusEnum];
  @override
  final String wireName = 'OrdersPost200ResponseStatusEnum';

  @override
  Object serialize(
          Serializers serializers, OrdersPost200ResponseStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  OrdersPost200ResponseStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      OrdersPost200ResponseStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$OrdersPost200Response extends OrdersPost200Response {
  @override
  final String orderId;
  @override
  final num totalAmount;
  @override
  final OrdersPost200ResponseStatusEnum status;
  @override
  final BuiltList<OrdersPost200ResponseItemsInner> items;

  factory _$OrdersPost200Response(
          [void Function(OrdersPost200ResponseBuilder)? updates]) =>
      (OrdersPost200ResponseBuilder()..update(updates))._build();

  _$OrdersPost200Response._(
      {required this.orderId,
      required this.totalAmount,
      required this.status,
      required this.items})
      : super._();
  @override
  OrdersPost200Response rebuild(
          void Function(OrdersPost200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrdersPost200ResponseBuilder toBuilder() =>
      OrdersPost200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrdersPost200Response &&
        orderId == other.orderId &&
        totalAmount == other.totalAmount &&
        status == other.status &&
        items == other.items;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, orderId.hashCode);
    _$hash = $jc(_$hash, totalAmount.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrdersPost200Response')
          ..add('orderId', orderId)
          ..add('totalAmount', totalAmount)
          ..add('status', status)
          ..add('items', items))
        .toString();
  }
}

class OrdersPost200ResponseBuilder
    implements Builder<OrdersPost200Response, OrdersPost200ResponseBuilder> {
  _$OrdersPost200Response? _$v;

  String? _orderId;
  String? get orderId => _$this._orderId;
  set orderId(String? orderId) => _$this._orderId = orderId;

  num? _totalAmount;
  num? get totalAmount => _$this._totalAmount;
  set totalAmount(num? totalAmount) => _$this._totalAmount = totalAmount;

  OrdersPost200ResponseStatusEnum? _status;
  OrdersPost200ResponseStatusEnum? get status => _$this._status;
  set status(OrdersPost200ResponseStatusEnum? status) =>
      _$this._status = status;

  ListBuilder<OrdersPost200ResponseItemsInner>? _items;
  ListBuilder<OrdersPost200ResponseItemsInner> get items =>
      _$this._items ??= ListBuilder<OrdersPost200ResponseItemsInner>();
  set items(ListBuilder<OrdersPost200ResponseItemsInner>? items) =>
      _$this._items = items;

  OrdersPost200ResponseBuilder() {
    OrdersPost200Response._defaults(this);
  }

  OrdersPost200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _orderId = $v.orderId;
      _totalAmount = $v.totalAmount;
      _status = $v.status;
      _items = $v.items.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrdersPost200Response other) {
    _$v = other as _$OrdersPost200Response;
  }

  @override
  void update(void Function(OrdersPost200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrdersPost200Response build() => _build();

  _$OrdersPost200Response _build() {
    _$OrdersPost200Response _$result;
    try {
      _$result = _$v ??
          _$OrdersPost200Response._(
            orderId: BuiltValueNullFieldError.checkNotNull(
                orderId, r'OrdersPost200Response', 'orderId'),
            totalAmount: BuiltValueNullFieldError.checkNotNull(
                totalAmount, r'OrdersPost200Response', 'totalAmount'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'OrdersPost200Response', 'status'),
            items: items.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'OrdersPost200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
