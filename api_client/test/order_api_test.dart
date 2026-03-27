import 'package:test/test.dart';
import 'package:ecommerce_api_client/ecommerce_api_client.dart';

/// tests for OrderApi
void main() {
  final instance = EcommerceApiClient().getOrderApi();

  group(OrderApi, () {
    // Create a new order
    //
    // Creates a new order from explicit items, or from the authenticated user's cart when `items` is omitted.
    //
    //Future<OrdersPost200Response> ordersPost({ OrdersPostRequest ordersPostRequest }) async
    test('test ordersPost', () async {
      // TODO
    });
  });
}
