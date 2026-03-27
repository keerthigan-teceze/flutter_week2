// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_items_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CartItemsPostRequest extends CartItemsPostRequest {
  @override
  final String productId;
  @override
  final int quantity;

  factory _$CartItemsPostRequest(
          [void Function(CartItemsPostRequestBuilder)? updates]) =>
      (CartItemsPostRequestBuilder()..update(updates))._build();

  _$CartItemsPostRequest._({required this.productId, required this.quantity})
      : super._();
  @override
  CartItemsPostRequest rebuild(
          void Function(CartItemsPostRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CartItemsPostRequestBuilder toBuilder() =>
      CartItemsPostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CartItemsPostRequest &&
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
    return (newBuiltValueToStringHelper(r'CartItemsPostRequest')
          ..add('productId', productId)
          ..add('quantity', quantity))
        .toString();
  }
}

class CartItemsPostRequestBuilder
    implements Builder<CartItemsPostRequest, CartItemsPostRequestBuilder> {
  _$CartItemsPostRequest? _$v;

  String? _productId;
  String? get productId => _$this._productId;
  set productId(String? productId) => _$this._productId = productId;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  CartItemsPostRequestBuilder() {
    CartItemsPostRequest._defaults(this);
  }

  CartItemsPostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _productId = $v.productId;
      _quantity = $v.quantity;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CartItemsPostRequest other) {
    _$v = other as _$CartItemsPostRequest;
  }

  @override
  void update(void Function(CartItemsPostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CartItemsPostRequest build() => _build();

  _$CartItemsPostRequest _build() {
    final _$result = _$v ??
        _$CartItemsPostRequest._(
          productId: BuiltValueNullFieldError.checkNotNull(
              productId, r'CartItemsPostRequest', 'productId'),
          quantity: BuiltValueNullFieldError.checkNotNull(
              quantity, r'CartItemsPostRequest', 'quantity'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
