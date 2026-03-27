// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_get200_response_items_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CartGet200ResponseItemsInner extends CartGet200ResponseItemsInner {
  @override
  final String productId;
  @override
  final String name;
  @override
  final String description;
  @override
  final int price;
  @override
  final int quantity;
  @override
  final int lineTotal;

  factory _$CartGet200ResponseItemsInner(
          [void Function(CartGet200ResponseItemsInnerBuilder)? updates]) =>
      (CartGet200ResponseItemsInnerBuilder()..update(updates))._build();

  _$CartGet200ResponseItemsInner._(
      {required this.productId,
      required this.name,
      required this.description,
      required this.price,
      required this.quantity,
      required this.lineTotal})
      : super._();
  @override
  CartGet200ResponseItemsInner rebuild(
          void Function(CartGet200ResponseItemsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CartGet200ResponseItemsInnerBuilder toBuilder() =>
      CartGet200ResponseItemsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CartGet200ResponseItemsInner &&
        productId == other.productId &&
        name == other.name &&
        description == other.description &&
        price == other.price &&
        quantity == other.quantity &&
        lineTotal == other.lineTotal;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, productId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jc(_$hash, lineTotal.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CartGet200ResponseItemsInner')
          ..add('productId', productId)
          ..add('name', name)
          ..add('description', description)
          ..add('price', price)
          ..add('quantity', quantity)
          ..add('lineTotal', lineTotal))
        .toString();
  }
}

class CartGet200ResponseItemsInnerBuilder
    implements
        Builder<CartGet200ResponseItemsInner,
            CartGet200ResponseItemsInnerBuilder> {
  _$CartGet200ResponseItemsInner? _$v;

  String? _productId;
  String? get productId => _$this._productId;
  set productId(String? productId) => _$this._productId = productId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  int? _price;
  int? get price => _$this._price;
  set price(int? price) => _$this._price = price;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  int? _lineTotal;
  int? get lineTotal => _$this._lineTotal;
  set lineTotal(int? lineTotal) => _$this._lineTotal = lineTotal;

  CartGet200ResponseItemsInnerBuilder() {
    CartGet200ResponseItemsInner._defaults(this);
  }

  CartGet200ResponseItemsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _productId = $v.productId;
      _name = $v.name;
      _description = $v.description;
      _price = $v.price;
      _quantity = $v.quantity;
      _lineTotal = $v.lineTotal;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CartGet200ResponseItemsInner other) {
    _$v = other as _$CartGet200ResponseItemsInner;
  }

  @override
  void update(void Function(CartGet200ResponseItemsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CartGet200ResponseItemsInner build() => _build();

  _$CartGet200ResponseItemsInner _build() {
    final _$result = _$v ??
        _$CartGet200ResponseItemsInner._(
          productId: BuiltValueNullFieldError.checkNotNull(
              productId, r'CartGet200ResponseItemsInner', 'productId'),
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'CartGet200ResponseItemsInner', 'name'),
          description: BuiltValueNullFieldError.checkNotNull(
              description, r'CartGet200ResponseItemsInner', 'description'),
          price: BuiltValueNullFieldError.checkNotNull(
              price, r'CartGet200ResponseItemsInner', 'price'),
          quantity: BuiltValueNullFieldError.checkNotNull(
              quantity, r'CartGet200ResponseItemsInner', 'quantity'),
          lineTotal: BuiltValueNullFieldError.checkNotNull(
              lineTotal, r'CartGet200ResponseItemsInner', 'lineTotal'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
