// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CartGet200Response extends CartGet200Response {
  @override
  final String cartId;
  @override
  final String userId;
  @override
  final BuiltList<CartGet200ResponseItemsInner> items;
  @override
  final int totalAmount;

  factory _$CartGet200Response(
          [void Function(CartGet200ResponseBuilder)? updates]) =>
      (CartGet200ResponseBuilder()..update(updates))._build();

  _$CartGet200Response._(
      {required this.cartId,
      required this.userId,
      required this.items,
      required this.totalAmount})
      : super._();
  @override
  CartGet200Response rebuild(
          void Function(CartGet200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CartGet200ResponseBuilder toBuilder() =>
      CartGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CartGet200Response &&
        cartId == other.cartId &&
        userId == other.userId &&
        items == other.items &&
        totalAmount == other.totalAmount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cartId.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, totalAmount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CartGet200Response')
          ..add('cartId', cartId)
          ..add('userId', userId)
          ..add('items', items)
          ..add('totalAmount', totalAmount))
        .toString();
  }
}

class CartGet200ResponseBuilder
    implements Builder<CartGet200Response, CartGet200ResponseBuilder> {
  _$CartGet200Response? _$v;

  String? _cartId;
  String? get cartId => _$this._cartId;
  set cartId(String? cartId) => _$this._cartId = cartId;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  ListBuilder<CartGet200ResponseItemsInner>? _items;
  ListBuilder<CartGet200ResponseItemsInner> get items =>
      _$this._items ??= ListBuilder<CartGet200ResponseItemsInner>();
  set items(ListBuilder<CartGet200ResponseItemsInner>? items) =>
      _$this._items = items;

  int? _totalAmount;
  int? get totalAmount => _$this._totalAmount;
  set totalAmount(int? totalAmount) => _$this._totalAmount = totalAmount;

  CartGet200ResponseBuilder() {
    CartGet200Response._defaults(this);
  }

  CartGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cartId = $v.cartId;
      _userId = $v.userId;
      _items = $v.items.toBuilder();
      _totalAmount = $v.totalAmount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CartGet200Response other) {
    _$v = other as _$CartGet200Response;
  }

  @override
  void update(void Function(CartGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CartGet200Response build() => _build();

  _$CartGet200Response _build() {
    _$CartGet200Response _$result;
    try {
      _$result = _$v ??
          _$CartGet200Response._(
            cartId: BuiltValueNullFieldError.checkNotNull(
                cartId, r'CartGet200Response', 'cartId'),
            userId: BuiltValueNullFieldError.checkNotNull(
                userId, r'CartGet200Response', 'userId'),
            items: items.build(),
            totalAmount: BuiltValueNullFieldError.checkNotNull(
                totalAmount, r'CartGet200Response', 'totalAmount'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CartGet200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
