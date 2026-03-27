import 'package:ecommerce/services/api_manager.dart';
import 'package:ecommerce_api_client/ecommerce_api_client.dart';

class CartRepository {

  /// ✅ ADD ITEM — POST /cart/items
  Future <void> addToCart(String productId) async {
    try {
      final body = OrdersPostRequestItemsInner((b) => b..productId = productId
          ..quantity = 1);

      await ApiManager.cartApi.cartItemsPost(ordersPostRequestItemsInner: body);
      print("🛒 Added to cart → $productId");
    } catch (e) {
      throw Exception("❌ Failed to add to cart: $e");
    }
  }



}