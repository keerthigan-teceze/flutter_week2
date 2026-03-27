import 'package:ecommerce/services/api_manager.dart';
import 'package:ecommerce_api_client/ecommerce_api_client.dart';

class CartRepository {

  /// ✅ ADD ITEM — POST /cart/items
  Future <void> addToCart(String productId) async {
    try {
      final body = CartItemsPostRequest((b) =>
      b
        ..productId = productId
        ..quantity = 1);

      await ApiManager.cartApi.cartItemsPost(cartItemsPostRequest: body);
      print("🛒 Added to cart → $productId");
    } catch (e) {
      throw Exception("❌ Failed to add to cart: $e");
    }
  }

  /// ✅ GET CART ITEMS — REAL IMPLEMENTATION
  Future<List<Map<String, dynamic>>> getCart() async {
    try {
      final response = await ApiManager.cartApi.cartGet();
      final cartItems = response.data!.items;
      return cartItems.map((item) {
        return {
          "id": item.productId,
          "name": item.name,
          "price": item.price,
          "quantity": item.quantity,
          // ✅ Add more fields as needed
        };
      }).toList();
    } catch (e) {
      throw Exception("❌ Failed to fetch cart items: $e");
    }
  }

  Future <void> removeFromCart(String productId) async {
    try {
      await ApiManager.cartApi.cartItemsProductIdDelete(productId: productId);
      print("🗑️ Removed from cart → $productId");
    } catch (e) {
      throw Exception("❌ Failed to remove from cart: $e");
    }
  }


}
