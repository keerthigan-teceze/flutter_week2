// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_id_delete200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProductsIdDelete200Response extends ProductsIdDelete200Response {
  @override
  final String message;
  @override
  final ProductsGet200ResponseInner product;

  factory _$ProductsIdDelete200Response(
          [void Function(ProductsIdDelete200ResponseBuilder)? updates]) =>
      (ProductsIdDelete200ResponseBuilder()..update(updates))._build();

  _$ProductsIdDelete200Response._(
      {required this.message, required this.product})
      : super._();
  @override
  ProductsIdDelete200Response rebuild(
          void Function(ProductsIdDelete200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductsIdDelete200ResponseBuilder toBuilder() =>
      ProductsIdDelete200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductsIdDelete200Response &&
        message == other.message &&
        product == other.product;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, product.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProductsIdDelete200Response')
          ..add('message', message)
          ..add('product', product))
        .toString();
  }
}

class ProductsIdDelete200ResponseBuilder
    implements
        Builder<ProductsIdDelete200Response,
            ProductsIdDelete200ResponseBuilder> {
  _$ProductsIdDelete200Response? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ProductsGet200ResponseInnerBuilder? _product;
  ProductsGet200ResponseInnerBuilder get product =>
      _$this._product ??= ProductsGet200ResponseInnerBuilder();
  set product(ProductsGet200ResponseInnerBuilder? product) =>
      _$this._product = product;

  ProductsIdDelete200ResponseBuilder() {
    ProductsIdDelete200Response._defaults(this);
  }

  ProductsIdDelete200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _product = $v.product.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductsIdDelete200Response other) {
    _$v = other as _$ProductsIdDelete200Response;
  }

  @override
  void update(void Function(ProductsIdDelete200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductsIdDelete200Response build() => _build();

  _$ProductsIdDelete200Response _build() {
    _$ProductsIdDelete200Response _$result;
    try {
      _$result = _$v ??
          _$ProductsIdDelete200Response._(
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'ProductsIdDelete200Response', 'message'),
            product: product.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'product';
        product.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ProductsIdDelete200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
