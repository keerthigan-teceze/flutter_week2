import 'package:test/test.dart';
import 'package:ecommerce_api_client/ecommerce_api_client.dart';

/// tests for ProductApi
void main() {
  final instance = EcommerceApiClient().getProductApi();

  group(ProductApi, () {
    // Get all products
    //
    // Retrieves a list of all products
    //
    //Future<BuiltList<ProductsGet200ResponseInner>> productsGet() async
    test('test productsGet', () async {
      // TODO
    });

    // Delete a product by ID
    //
    // Deletes a product by its ID
    //
    //Future<ProductsIdDelete200Response> productsIdDelete(String id) async
    test('test productsIdDelete', () async {
      // TODO
    });

    // Get a product by ID
    //
    // Retrieves a product by its ID
    //
    //Future<ProductsGet200ResponseInner> productsIdGet(String id) async
    test('test productsIdGet', () async {
      // TODO
    });

    // Update a product by ID
    //
    // Updates a product by its ID
    //
    //Future<ProductsGet200ResponseInner> productsIdPut(String id, { ProductsIdPutRequest productsIdPutRequest }) async
    test('test productsIdPut', () async {
      // TODO
    });

    // Create a new product
    //
    // Creates a new product with the provided details
    //
    //Future<ProductsGet200ResponseInner> productsPost({ ProductsPostRequest productsPostRequest }) async
    test('test productsPost', () async {
      // TODO
    });
  });
}
