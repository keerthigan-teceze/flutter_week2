// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_post_request_items_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrdersPostRequestItemsInner extends OrdersPostRequestItemsInner {
  @override
  final String productId;
  @override
  final int quantity;

  factory _$OrdersPostRequestItemsInner(
          [void Function(OrdersPostRequestItemsInnerBuilder)? updates]) =>
      (OrdersPostRequestItemsInnerBuilder()..update(updates))._build();

  _$OrdersPostRequestItemsInner._(
      {required this.productId, required this.quantity})
      : super._();
  @override
  OrdersPostRequestItemsInner rebuild(
          void Function(OrdersPostRequestItemsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrdersPostRequestItemsInnerBuilder toBuilder() =>
      OrdersPostRequestItemsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrdersPostRequestItemsInner &&
        productId == other.productId &&
        quantity == other.quantity;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, productId.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrdersPostRequestItemsInner')
          ..add('productId', productId)
          ..add('quantity', quantity))
        .toString();
  }
}

class OrdersPostRequestItemsInnerBuilder
    implements
        Builder<OrdersPostRequestItemsInner,
            OrdersPostRequestItemsInnerBuilder> {
  _$OrdersPostRequestItemsInner? _$v;

  String? _productId;
  String? get productId => _$this._productId;
  set productId(String? productId) => _$this._productId = productId;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  OrdersPostRequestItemsInnerBuilder() {
    OrdersPostRequestItemsInner._defaults(this);
  }

  OrdersPostRequestItemsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _productId = $v.productId;
      _quantity = $v.quantity;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrdersPostRequestItemsInner other) {
    _$v = other as _$OrdersPostRequestItemsInner;
  }

  @override
  void update(void Function(OrdersPostRequestItemsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrdersPostRequestItemsInner build() => _build();

  _$OrdersPostRequestItemsInner _build() {
    final _$result = _$v ??
        _$OrdersPostRequestItemsInner._(
          productId: BuiltValueNullFieldError.checkNotNull(
              productId, r'OrdersPostRequestItemsInner', 'productId'),
          quantity: BuiltValueNullFieldError.checkNotNull(
              quantity, r'OrdersPostRequestItemsInner', 'quantity'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
