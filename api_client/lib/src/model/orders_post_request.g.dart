// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrdersPostRequest extends OrdersPostRequest {
  @override
  final BuiltList<CartItemsPostRequest>? items;

  factory _$OrdersPostRequest(
          [void Function(OrdersPostRequestBuilder)? updates]) =>
      (OrdersPostRequestBuilder()..update(updates))._build();

  _$OrdersPostRequest._({this.items}) : super._();
  @override
  OrdersPostRequest rebuild(void Function(OrdersPostRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrdersPostRequestBuilder toBuilder() =>
      OrdersPostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrdersPostRequest && items == other.items;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrdersPostRequest')
          ..add('items', items))
        .toString();
  }
}

class OrdersPostRequestBuilder
    implements Builder<OrdersPostRequest, OrdersPostRequestBuilder> {
  _$OrdersPostRequest? _$v;

  ListBuilder<CartItemsPostRequest>? _items;
  ListBuilder<CartItemsPostRequest> get items =>
      _$this._items ??= ListBuilder<CartItemsPostRequest>();
  set items(ListBuilder<CartItemsPostRequest>? items) => _$this._items = items;

  OrdersPostRequestBuilder() {
    OrdersPostRequest._defaults(this);
  }

  OrdersPostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrdersPostRequest other) {
    _$v = other as _$OrdersPostRequest;
  }

  @override
  void update(void Function(OrdersPostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrdersPostRequest build() => _build();

  _$OrdersPostRequest _build() {
    _$OrdersPostRequest _$result;
    try {
      _$result = _$v ??
          _$OrdersPostRequest._(
            items: _items?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'OrdersPostRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
