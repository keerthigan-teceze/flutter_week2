// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_get200_response_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProductsGet200ResponseInner extends ProductsGet200ResponseInner {
  @override
  final String name;
  @override
  final String description;
  @override
  final num price;
  @override
  final int stock;
  @override
  final String id;

  factory _$ProductsGet200ResponseInner(
          [void Function(ProductsGet200ResponseInnerBuilder)? updates]) =>
      (ProductsGet200ResponseInnerBuilder()..update(updates))._build();

  _$ProductsGet200ResponseInner._(
      {required this.name,
      required this.description,
      required this.price,
      required this.stock,
      required this.id})
      : super._();
  @override
  ProductsGet200ResponseInner rebuild(
          void Function(ProductsGet200ResponseInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductsGet200ResponseInnerBuilder toBuilder() =>
      ProductsGet200ResponseInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductsGet200ResponseInner &&
        name == other.name &&
        description == other.description &&
        price == other.price &&
        stock == other.stock &&
        id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, stock.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProductsGet200ResponseInner')
          ..add('name', name)
          ..add('description', description)
          ..add('price', price)
          ..add('stock', stock)
          ..add('id', id))
        .toString();
  }
}

class ProductsGet200ResponseInnerBuilder
    implements
        Builder<ProductsGet200ResponseInner,
            ProductsGet200ResponseInnerBuilder> {
  _$ProductsGet200ResponseInner? _$v;

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

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  ProductsGet200ResponseInnerBuilder() {
    ProductsGet200ResponseInner._defaults(this);
  }

  ProductsGet200ResponseInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _price = $v.price;
      _stock = $v.stock;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductsGet200ResponseInner other) {
    _$v = other as _$ProductsGet200ResponseInner;
  }

  @override
  void update(void Function(ProductsGet200ResponseInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductsGet200ResponseInner build() => _build();

  _$ProductsGet200ResponseInner _build() {
    final _$result = _$v ??
        _$ProductsGet200ResponseInner._(
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'ProductsGet200ResponseInner', 'name'),
          description: BuiltValueNullFieldError.checkNotNull(
              description, r'ProductsGet200ResponseInner', 'description'),
          price: BuiltValueNullFieldError.checkNotNull(
              price, r'ProductsGet200ResponseInner', 'price'),
          stock: BuiltValueNullFieldError.checkNotNull(
              stock, r'ProductsGet200ResponseInner', 'stock'),
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'ProductsGet200ResponseInner', 'id'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
