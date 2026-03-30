// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_get200_response_current_orders_inner_items_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrdersGet200ResponseCurrentOrdersInnerItemsInner
    extends OrdersGet200ResponseCurrentOrdersInnerItemsInner {
  @override
  final String productId;
  @override
  final int quantity;
  @override
  final num priceAtPurchase;
  @override
  final String name;
  @override
  final String description;

  factory _$OrdersGet200ResponseCurrentOrdersInnerItemsInner(
          [void Function(
                  OrdersGet200ResponseCurrentOrdersInnerItemsInnerBuilder)?
              updates]) =>
      (OrdersGet200ResponseCurrentOrdersInnerItemsInnerBuilder()
            ..update(updates))
          ._build();

  _$OrdersGet200ResponseCurrentOrdersInnerItemsInner._(
      {required this.productId,
      required this.quantity,
      required this.priceAtPurchase,
      required this.name,
      required this.description})
      : super._();
  @override
  OrdersGet200ResponseCurrentOrdersInnerItemsInner rebuild(
          void Function(OrdersGet200ResponseCurrentOrdersInnerItemsInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrdersGet200ResponseCurrentOrdersInnerItemsInnerBuilder toBuilder() =>
      OrdersGet200ResponseCurrentOrdersInnerItemsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrdersGet200ResponseCurrentOrdersInnerItemsInner &&
        productId == other.productId &&
        quantity == other.quantity &&
        priceAtPurchase == other.priceAtPurchase &&
        name == other.name &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, productId.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jc(_$hash, priceAtPurchase.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'OrdersGet200ResponseCurrentOrdersInnerItemsInner')
          ..add('productId', productId)
          ..add('quantity', quantity)
          ..add('priceAtPurchase', priceAtPurchase)
          ..add('name', name)
          ..add('description', description))
        .toString();
  }
}

class OrdersGet200ResponseCurrentOrdersInnerItemsInnerBuilder
    implements
        Builder<OrdersGet200ResponseCurrentOrdersInnerItemsInner,
            OrdersGet200ResponseCurrentOrdersInnerItemsInnerBuilder> {
  _$OrdersGet200ResponseCurrentOrdersInnerItemsInner? _$v;

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

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  OrdersGet200ResponseCurrentOrdersInnerItemsInnerBuilder() {
    OrdersGet200ResponseCurrentOrdersInnerItemsInner._defaults(this);
  }

  OrdersGet200ResponseCurrentOrdersInnerItemsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _productId = $v.productId;
      _quantity = $v.quantity;
      _priceAtPurchase = $v.priceAtPurchase;
      _name = $v.name;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrdersGet200ResponseCurrentOrdersInnerItemsInner other) {
    _$v = other as _$OrdersGet200ResponseCurrentOrdersInnerItemsInner;
  }

  @override
  void update(
      void Function(OrdersGet200ResponseCurrentOrdersInnerItemsInnerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  OrdersGet200ResponseCurrentOrdersInnerItemsInner build() => _build();

  _$OrdersGet200ResponseCurrentOrdersInnerItemsInner _build() {
    final _$result = _$v ??
        _$OrdersGet200ResponseCurrentOrdersInnerItemsInner._(
          productId: BuiltValueNullFieldError.checkNotNull(productId,
              r'OrdersGet200ResponseCurrentOrdersInnerItemsInner', 'productId'),
          quantity: BuiltValueNullFieldError.checkNotNull(quantity,
              r'OrdersGet200ResponseCurrentOrdersInnerItemsInner', 'quantity'),
          priceAtPurchase: BuiltValueNullFieldError.checkNotNull(
              priceAtPurchase,
              r'OrdersGet200ResponseCurrentOrdersInnerItemsInner',
              'priceAtPurchase'),
          name: BuiltValueNullFieldError.checkNotNull(name,
              r'OrdersGet200ResponseCurrentOrdersInnerItemsInner', 'name'),
          description: BuiltValueNullFieldError.checkNotNull(
              description,
              r'OrdersGet200ResponseCurrentOrdersInnerItemsInner',
              'description'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
