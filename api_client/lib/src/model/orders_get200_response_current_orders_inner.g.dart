// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_get200_response_current_orders_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OrdersGet200ResponseCurrentOrdersInnerStatusEnum
    _$ordersGet200ResponseCurrentOrdersInnerStatusEnum_pending =
    const OrdersGet200ResponseCurrentOrdersInnerStatusEnum._('pending');
const OrdersGet200ResponseCurrentOrdersInnerStatusEnum
    _$ordersGet200ResponseCurrentOrdersInnerStatusEnum_paid =
    const OrdersGet200ResponseCurrentOrdersInnerStatusEnum._('paid');
const OrdersGet200ResponseCurrentOrdersInnerStatusEnum
    _$ordersGet200ResponseCurrentOrdersInnerStatusEnum_failed =
    const OrdersGet200ResponseCurrentOrdersInnerStatusEnum._('failed');

OrdersGet200ResponseCurrentOrdersInnerStatusEnum
    _$ordersGet200ResponseCurrentOrdersInnerStatusEnumValueOf(String name) {
  switch (name) {
    case 'pending':
      return _$ordersGet200ResponseCurrentOrdersInnerStatusEnum_pending;
    case 'paid':
      return _$ordersGet200ResponseCurrentOrdersInnerStatusEnum_paid;
    case 'failed':
      return _$ordersGet200ResponseCurrentOrdersInnerStatusEnum_failed;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<OrdersGet200ResponseCurrentOrdersInnerStatusEnum>
    _$ordersGet200ResponseCurrentOrdersInnerStatusEnumValues = BuiltSet<
        OrdersGet200ResponseCurrentOrdersInnerStatusEnum>(const <OrdersGet200ResponseCurrentOrdersInnerStatusEnum>[
  _$ordersGet200ResponseCurrentOrdersInnerStatusEnum_pending,
  _$ordersGet200ResponseCurrentOrdersInnerStatusEnum_paid,
  _$ordersGet200ResponseCurrentOrdersInnerStatusEnum_failed,
]);

Serializer<OrdersGet200ResponseCurrentOrdersInnerStatusEnum>
    _$ordersGet200ResponseCurrentOrdersInnerStatusEnumSerializer =
    _$OrdersGet200ResponseCurrentOrdersInnerStatusEnumSerializer();

class _$OrdersGet200ResponseCurrentOrdersInnerStatusEnumSerializer
    implements
        PrimitiveSerializer<OrdersGet200ResponseCurrentOrdersInnerStatusEnum> {
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
  final Iterable<Type> types = const <Type>[
    OrdersGet200ResponseCurrentOrdersInnerStatusEnum
  ];
  @override
  final String wireName = 'OrdersGet200ResponseCurrentOrdersInnerStatusEnum';

  @override
  Object serialize(Serializers serializers,
          OrdersGet200ResponseCurrentOrdersInnerStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  OrdersGet200ResponseCurrentOrdersInnerStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      OrdersGet200ResponseCurrentOrdersInnerStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$OrdersGet200ResponseCurrentOrdersInner
    extends OrdersGet200ResponseCurrentOrdersInner {
  @override
  final String orderId;
  @override
  final num totalAmount;
  @override
  final OrdersGet200ResponseCurrentOrdersInnerStatusEnum status;
  @override
  final String? createdAt;
  @override
  final BuiltList<OrdersGet200ResponseCurrentOrdersInnerItemsInner> items;

  factory _$OrdersGet200ResponseCurrentOrdersInner(
          [void Function(OrdersGet200ResponseCurrentOrdersInnerBuilder)?
              updates]) =>
      (OrdersGet200ResponseCurrentOrdersInnerBuilder()..update(updates))
          ._build();

  _$OrdersGet200ResponseCurrentOrdersInner._(
      {required this.orderId,
      required this.totalAmount,
      required this.status,
      this.createdAt,
      required this.items})
      : super._();
  @override
  OrdersGet200ResponseCurrentOrdersInner rebuild(
          void Function(OrdersGet200ResponseCurrentOrdersInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrdersGet200ResponseCurrentOrdersInnerBuilder toBuilder() =>
      OrdersGet200ResponseCurrentOrdersInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrdersGet200ResponseCurrentOrdersInner &&
        orderId == other.orderId &&
        totalAmount == other.totalAmount &&
        status == other.status &&
        createdAt == other.createdAt &&
        items == other.items;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, orderId.hashCode);
    _$hash = $jc(_$hash, totalAmount.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'OrdersGet200ResponseCurrentOrdersInner')
          ..add('orderId', orderId)
          ..add('totalAmount', totalAmount)
          ..add('status', status)
          ..add('createdAt', createdAt)
          ..add('items', items))
        .toString();
  }
}

class OrdersGet200ResponseCurrentOrdersInnerBuilder
    implements
        Builder<OrdersGet200ResponseCurrentOrdersInner,
            OrdersGet200ResponseCurrentOrdersInnerBuilder> {
  _$OrdersGet200ResponseCurrentOrdersInner? _$v;

  String? _orderId;
  String? get orderId => _$this._orderId;
  set orderId(String? orderId) => _$this._orderId = orderId;

  num? _totalAmount;
  num? get totalAmount => _$this._totalAmount;
  set totalAmount(num? totalAmount) => _$this._totalAmount = totalAmount;

  OrdersGet200ResponseCurrentOrdersInnerStatusEnum? _status;
  OrdersGet200ResponseCurrentOrdersInnerStatusEnum? get status =>
      _$this._status;
  set status(OrdersGet200ResponseCurrentOrdersInnerStatusEnum? status) =>
      _$this._status = status;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  ListBuilder<OrdersGet200ResponseCurrentOrdersInnerItemsInner>? _items;
  ListBuilder<OrdersGet200ResponseCurrentOrdersInnerItemsInner> get items =>
      _$this._items ??=
          ListBuilder<OrdersGet200ResponseCurrentOrdersInnerItemsInner>();
  set items(
          ListBuilder<OrdersGet200ResponseCurrentOrdersInnerItemsInner>?
              items) =>
      _$this._items = items;

  OrdersGet200ResponseCurrentOrdersInnerBuilder() {
    OrdersGet200ResponseCurrentOrdersInner._defaults(this);
  }

  OrdersGet200ResponseCurrentOrdersInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _orderId = $v.orderId;
      _totalAmount = $v.totalAmount;
      _status = $v.status;
      _createdAt = $v.createdAt;
      _items = $v.items.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrdersGet200ResponseCurrentOrdersInner other) {
    _$v = other as _$OrdersGet200ResponseCurrentOrdersInner;
  }

  @override
  void update(
      void Function(OrdersGet200ResponseCurrentOrdersInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrdersGet200ResponseCurrentOrdersInner build() => _build();

  _$OrdersGet200ResponseCurrentOrdersInner _build() {
    _$OrdersGet200ResponseCurrentOrdersInner _$result;
    try {
      _$result = _$v ??
          _$OrdersGet200ResponseCurrentOrdersInner._(
            orderId: BuiltValueNullFieldError.checkNotNull(
                orderId, r'OrdersGet200ResponseCurrentOrdersInner', 'orderId'),
            totalAmount: BuiltValueNullFieldError.checkNotNull(totalAmount,
                r'OrdersGet200ResponseCurrentOrdersInner', 'totalAmount'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'OrdersGet200ResponseCurrentOrdersInner', 'status'),
            createdAt: createdAt,
            items: items.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'OrdersGet200ResponseCurrentOrdersInner',
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
