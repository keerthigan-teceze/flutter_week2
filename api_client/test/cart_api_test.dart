import 'package:test/test.dart';
import 'package:ecommerce_api_client/ecommerce_api_client.dart';

/// tests for CartApi
void main() {
  final instance = EcommerceApiClient().getCartApi();

  group(CartApi, () {
    // Clear cart
    //
    // Removes all items from the authenticated user's cart.
    //
    //Future<CartGet200Response> cartDelete() async
    test('test cartDelete', () async {
      // TODO
    });

    // Get current cart
    //
    // Returns the authenticated user's cart, creating an empty cart if one does not exist yet.
    //
    //Future<CartGet200Response> cartGet() async
    test('test cartGet', () async {
      // TODO
    });

    // Add item to cart
    //
    // Adds a product to the authenticated user's cart, incrementing quantity if the item already exists.
    //
    //Future<CartGet200Response> cartItemsPost({ OrdersPostRequestItemsInner ordersPostRequestItemsInner }) async
    test('test cartItemsPost', () async {
      // TODO
    });

    // Remove item from cart
    //
    // Removes a product from the authenticated user's cart.
    //
    //Future<CartGet200Response> cartItemsProductIdDelete(String productId) async
    test('test cartItemsProductIdDelete', () async {
      // TODO
    });

    // Update cart item quantity
    //
    // Sets a new quantity for a cart item belonging to the authenticated user.
    //
    //Future<CartGet200Response> cartItemsProductIdPut(String productId, { CartItemsProductIdPutRequest cartItemsProductIdPutRequest }) async
    test('test cartItemsProductIdPut', () async {
      // TODO
    });
  });
}
