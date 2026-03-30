import 'package:ecommerce/services/api_manager.dart';
import 'package:ecommerce_api_client/ecommerce_api_client.dart';
import 'package:uuid/uuid.dart';

class OrderRepository {
  /// ✅ PLACE ORDER
  Future<void> createOrder(String productId, int quantity) async {
    try {
      // 1. Generate unique idempotency key
      final idempotencyKey = const Uuid().v4();

      // 2. Build the order body using the correct model (CartItemsPostRequest)
      final orderRequest = OrdersPostRequest((b) => b
        ..items.add(
          CartItemsPostRequest((itemBuilder) => itemBuilder
            ..productId = productId
            ..quantity = quantity),
        ));

      // 3. Call the API
      await ApiManager.ordersApi.ordersPost(
        idempotencyKey: idempotencyKey,
        ordersPostRequest: orderRequest,
      );

      print("✅ Order created successfully for product: $productId");
    } catch (e) {
      print("❌ Error details: $e");
      throw Exception("❌ Failed to create order: $e");
    }
  }

  /// ✅ GET ORDERS
  /// Note: Returns OrdersGet200Response which contains 'pending' and 'paid' orders
  /// as defined in your OrderApi documentation.
  Future<OrdersGet200Response> getOrders() async {
    try {
      final response = await ApiManager.ordersApi.ordersGet();

      if (response.statusCode == 200) {
        final data = response.data;
        if (data != null) {
          return data; // Returns the full object containing ongoing and past orders
        } else {
          throw Exception("No data received from server");
        }
      } else {
        throw Exception("Failed to fetch orders: Status ${response.statusCode}");
      }
    } catch (e) {
      print("❌ Error fetching orders: $e");
      throw Exception("Error fetching orders: $e");
    }


  }

  // checkout entire cart
  Future<void> checkoutCart() async {    try {
    // 1. Generate unique idempotency key
    final idempotencyKey = const Uuid().v4();

    // 2. Call the API WITHOUT the ordersPostRequest parameter.
    // Per API specs: If items is omitted, it checks out the user's cart directly.
    final response = await ApiManager.ordersApi.ordersPost(
      idempotencyKey: idempotencyKey,
      // ordersPostRequest is omitted/null here
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      print("✅ Cart checked out successfully");
    } else {
      throw Exception("Failed to checkout: ${response.statusCode}");
    }
  } catch (e) {
    print("❌ Error during cart checkout: $e");
    throw Exception("❌ Failed to checkout cart: $e");
  }
  }

  Future<void> mockPayment(String orderId) async {
    try {
      final body = WebhooksPaymentsMockPostRequest((b) => b
        ..orderId = orderId
        ..result = WebhooksPaymentsMockPostRequestResultEnum.success // or "failed"
      );

      await ApiManager.paymentsApi.webhooksPaymentsMockPost(
        webhooksPaymentsMockPostRequest: body,
      );

      print("✅ Mock payment success for $orderId");

    } catch (e) {
      print("❌ Mock payment failed: $e");
    }
  }
}