// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_id_put_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProductsIdPutRequest extends ProductsIdPutRequest {
  @override
  final String? name;
  @override
  final String? description;
  @override
  final num? price;
  @override
  final int? stock;

  factory _$ProductsIdPutRequest(
          [void Function(ProductsIdPutRequestBuilder)? updates]) =>
      (ProductsIdPutRequestBuilder()..update(updates))._build();

  _$ProductsIdPutRequest._(
      {this.name, this.description, this.price, this.stock})
      : super._();
  @override
  ProductsIdPutRequest rebuild(
          void Function(ProductsIdPutRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductsIdPutRequestBuilder toBuilder() =>
      ProductsIdPutRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductsIdPutRequest &&
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
    return (newBuiltValueToStringHelper(r'ProductsIdPutRequest')
          ..add('name', name)
          ..add('description', description)
          ..add('price', price)
          ..add('stock', stock))
        .toString();
  }
}

class ProductsIdPutRequestBuilder
    implements Builder<ProductsIdPutRequest, ProductsIdPutRequestBuilder> {
  _$ProductsIdPutRequest? _$v;

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

  ProductsIdPutRequestBuilder() {
    ProductsIdPutRequest._defaults(this);
  }

  ProductsIdPutRequestBuilder get _$this {
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
  void replace(ProductsIdPutRequest other) {
    _$v = other as _$ProductsIdPutRequest;
  }

  @override
  void update(void Function(ProductsIdPutRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductsIdPutRequest build() => _build();

  _$ProductsIdPutRequest _build() {
    final _$result = _$v ??
        _$ProductsIdPutRequest._(
          name: name,
          description: description,
          price: price,
          stock: stock,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
