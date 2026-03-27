// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProductsPostRequest extends ProductsPostRequest {
  @override
  final String name;
  @override
  final String description;
  @override
  final num price;
  @override
  final int stock;

  factory _$ProductsPostRequest(
          [void Function(ProductsPostRequestBuilder)? updates]) =>
      (ProductsPostRequestBuilder()..update(updates))._build();

  _$ProductsPostRequest._(
      {required this.name,
      required this.description,
      required this.price,
      required this.stock})
      : super._();
  @override
  ProductsPostRequest rebuild(
          void Function(ProductsPostRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductsPostRequestBuilder toBuilder() =>
      ProductsPostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductsPostRequest &&
        name == other.name &&
        description == other.description &&
        price == other.price &&
        stock == other.stock;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, stock.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProductsPostRequest')
          ..add('name', name)
          ..add('description', description)
          ..add('price', price)
          ..add('stock', stock))
        .toString();
  }
}

class ProductsPostRequestBuilder
    implements Builder<ProductsPostRequest, ProductsPostRequestBuilder> {
  _$ProductsPostRequest? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  num? _price;
  num? get price => _$this._price;
  set price(num? price) => _$this._price = price;

  int? _stock;
  int? get stock => _$this._stock;
  set stock(int? stock) => _$this._stock = stock;

  ProductsPostRequestBuilder() {
    ProductsPostRequest._defaults(this);
  }

  ProductsPostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _price = $v.price;
      _stock = $v.stock;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductsPostRequest other) {
    _$v = other as _$ProductsPostRequest;
  }

  @override
  void update(void Function(ProductsPostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductsPostRequest build() => _build();

  _$ProductsPostRequest _build() {
    final _$result = _$v ??
        _$ProductsPostRequest._(
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'ProductsPostRequest', 'name'),
          description: BuiltValueNullFieldError.checkNotNull(
              description, r'ProductsPostRequest', 'description'),
          price: BuiltValueNullFieldError.checkNotNull(
              price, r'ProductsPostRequest', 'price'),
          stock: BuiltValueNullFieldError.checkNotNull(
              stock, r'ProductsPostRequest', 'stock'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
