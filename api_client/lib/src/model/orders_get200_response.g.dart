// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrdersGet200Response extends OrdersGet200Response {
  @override
  final BuiltList<OrdersGet200ResponseCurrentOrdersInner> currentOrders;
  @override
  final BuiltList<OrdersGet200ResponseCurrentOrdersInner> pastOrders;

  factory _$OrdersGet200Response(
          [void Function(OrdersGet200ResponseBuilder)? updates]) =>
      (OrdersGet200ResponseBuilder()..update(updates))._build();

  _$OrdersGet200Response._(
      {required this.currentOrders, required this.pastOrders})
      : super._();
  @override
  OrdersGet200Response rebuild(
          void Function(OrdersGet200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrdersGet200ResponseBuilder toBuilder() =>
      OrdersGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrdersGet200Response &&
        currentOrders == other.currentOrders &&
        pastOrders == other.pastOrders;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, currentOrders.hashCode);
    _$hash = $jc(_$hash, pastOrders.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrdersGet200Response')
          ..add('currentOrders', currentOrders)
          ..add('pastOrders', pastOrders))
        .toString();
  }
}

class OrdersGet200ResponseBuilder
    implements Builder<OrdersGet200Response, OrdersGet200ResponseBuilder> {
  _$OrdersGet200Response? _$v;

  ListBuilder<OrdersGet200ResponseCurrentOrdersInner>? _currentOrders;
  ListBuilder<OrdersGet200ResponseCurrentOrdersInner> get currentOrders =>
      _$this._currentOrders ??=
          ListBuilder<OrdersGet200ResponseCurrentOrdersInner>();
  set currentOrders(
          ListBuilder<OrdersGet200ResponseCurrentOrdersInner>? currentOrders) =>
      _$this._currentOrders = currentOrders;

  ListBuilder<OrdersGet200ResponseCurrentOrdersInner>? _pastOrders;
  ListBuilder<OrdersGet200ResponseCurrentOrdersInner> get pastOrders =>
      _$this._pastOrders ??=
          ListBuilder<OrdersGet200ResponseCurrentOrdersInner>();
  set pastOrders(
          ListBuilder<OrdersGet200ResponseCurrentOrdersInner>? pastOrders) =>
      _$this._pastOrders = pastOrders;

  OrdersGet200ResponseBuilder() {
    OrdersGet200Response._defaults(this);
  }

  OrdersGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _currentOrders = $v.currentOrders.toBuilder();
      _pastOrders = $v.pastOrders.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrdersGet200Response other) {
    _$v = other as _$OrdersGet200Response;
  }

  @override
  void update(void Function(OrdersGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrdersGet200Response build() => _build();

  _$OrdersGet200Response _build() {
    _$OrdersGet200Response _$result;
    try {
      _$result = _$v ??
          _$OrdersGet200Response._(
            currentOrders: currentOrders.build(),
            pastOrders: pastOrders.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'currentOrders';
        currentOrders.build();
        _$failedField = 'pastOrders';
        pastOrders.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'OrdersGet200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
