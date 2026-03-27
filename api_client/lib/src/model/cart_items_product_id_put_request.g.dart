// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_items_product_id_put_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CartItemsProductIdPutRequest extends CartItemsProductIdPutRequest {
  @override
  final int quantity;

  factory _$CartItemsProductIdPutRequest(
          [void Function(CartItemsProductIdPutRequestBuilder)? updates]) =>
      (CartItemsProductIdPutRequestBuilder()..update(updates))._build();

  _$CartItemsProductIdPutRequest._({required this.quantity}) : super._();
  @override
  CartItemsProductIdPutRequest rebuild(
          void Function(CartItemsProductIdPutRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CartItemsProductIdPutRequestBuilder toBuilder() =>
      CartItemsProductIdPutRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CartItemsProductIdPutRequest && quantity == other.quantity;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CartItemsProductIdPutRequest')
          ..add('quantity', quantity))
        .toString();
  }
}

class CartItemsProductIdPutRequestBuilder
    implements
        Builder<CartItemsProductIdPutRequest,
            CartItemsProductIdPutRequestBuilder> {
  _$CartItemsProductIdPutRequest? _$v;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  CartItemsProductIdPutRequestBuilder() {
    CartItemsProductIdPutRequest._defaults(this);
  }

  CartItemsProductIdPutRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _quantity = $v.quantity;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CartItemsProductIdPutRequest other) {
    _$v = other as _$CartItemsProductIdPutRequest;
  }

  @override
  void update(void Function(CartItemsProductIdPutRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CartItemsProductIdPutRequest build() => _build();

  _$CartItemsProductIdPutRequest _build() {
    final _$result = _$v ??
        _$CartItemsProductIdPutRequest._(
          quantity: BuiltValueNullFieldError.checkNotNull(
              quantity, r'CartItemsProductIdPutRequest', 'quantity'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
