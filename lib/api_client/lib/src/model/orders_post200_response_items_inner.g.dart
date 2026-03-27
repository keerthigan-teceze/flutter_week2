// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_post200_response_items_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrdersPost200ResponseItemsInner
    extends OrdersPost200ResponseItemsInner {
  @override
  final String productId;
  @override
  final int quantity;
  @override
  final num priceAtPurchase;

  factory _$OrdersPost200ResponseItemsInner(
          [void Function(OrdersPost200ResponseItemsInnerBuilder)? updates]) =>
      (OrdersPost200ResponseItemsInnerBuilder()..update(updates))._build();

  _$OrdersPost200ResponseItemsInner._(
      {required this.productId,
      required this.quantity,
      required this.priceAtPurchase})
      : super._();
  @override
  OrdersPost200ResponseItemsInner rebuild(
          void Function(OrdersPost200ResponseItemsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrdersPost200ResponseItemsInnerBuilder toBuilder() =>
      OrdersPost200ResponseItemsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrdersPost200ResponseItemsInner &&
        productId == other.productId &&
        quantity == other.quantity &&
        priceAtPurchase == other.priceAtPurchase;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, productId.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jc(_$hash, priceAtPurchase.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrdersPost200ResponseItemsInner')
          ..add('productId', productId)
          ..add('quantity', quantity)
          ..add('priceAtPurchase', priceAtPurchase))
        .toString();
  }
}

class OrdersPost200ResponseItemsInnerBuilder
    implements
        Builder<OrdersPost200ResponseItemsInner,
            OrdersPost200ResponseItemsInnerBuilder> {
  _$OrdersPost200ResponseItemsInner? _$v;

  String? _productId;
  String? get productId => _$this._productId;
  set productId(String? productId) => _$this._productId = productId;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  num? _priceAtPurchase;
  num? get priceAtPurchase => _$this._priceAtPurchase;
  set priceAtPurchase(num? priceAtPurchase) =>
      _$this._priceAtPurchase = priceAtPurchase;

  OrdersPost200ResponseItemsInnerBuilder() {
    OrdersPost200ResponseItemsInner._defaults(this);
  }

  OrdersPost200ResponseItemsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _productId = $v.productId;
      _quantity = $v.quantity;
      _priceAtPurchase = $v.priceAtPurchase;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrdersPost200ResponseItemsInner other) {
    _$v = other as _$OrdersPost200ResponseItemsInner;
  }

  @override
  void update(void Function(OrdersPost200ResponseItemsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrdersPost200ResponseItemsInner build() => _build();

  _$OrdersPost200ResponseItemsInner _build() {
    final _$result = _$v ??
        _$OrdersPost200ResponseItemsInner._(
          productId: BuiltValueNullFieldError.checkNotNull(
              productId, r'OrdersPost200ResponseItemsInner', 'productId'),
          quantity: BuiltValueNullFieldError.checkNotNull(
              quantity, r'OrdersPost200ResponseItemsInner', 'quantity'),
          priceAtPurchase: BuiltValueNullFieldError.checkNotNull(
              priceAtPurchase,
              r'OrdersPost200ResponseItemsInner',
              'priceAtPurchase'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
