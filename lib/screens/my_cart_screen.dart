import 'package:flutter/material.dart';
import 'package:ecommerce/repository/cart_repository.dart';

class MyCartScreen extends StatefulWidget {
  const MyCartScreen({super.key});

  @override
  State<MyCartScreen> createState() => _MyCartScreenState();
}

class _MyCartScreenState extends State<MyCartScreen> {
  final CartRepository _cartRepo = CartRepository();

  List<Map<String, dynamic>> cartItems = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchCartItems();
  }

  Future<void> fetchCartItems() async {
    try {
      final data = await _cartRepo.getCart();
      print("✅ CART DATA: $data");
      setState(() {
        cartItems = data;
        isLoading = false;
      });
    } catch (e) {
      print("Error loading cart items: $e");
      setState(() => isLoading = false);
    }
  }

  Future<void> removeFromCart(String productId) async {
    try {
      await _cartRepo.removeFromCart(productId);

      setState(() {
        cartItems.removeWhere((item) => item["id"] == productId);
      });

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Removed from cart")),
      );
    } catch (e) {
      print("Error removing from cart: $e");
    }
  }

  Future <void> clearCart() async {
    try {
      await _cartRepo.clearCart();
      setState(() {
        cartItems.clear();
      });
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Cart cleared")),
      );
    } catch (e) {
      print("Error clearing cart: $e");
      }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Cart",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.orange,
        centerTitle: true,

        actions: [
          IconButton(
            icon: const Icon(Icons.delete_forever, color: Colors.white, size: 30),
            onPressed: () async {
              if (cartItems.isNotEmpty) {
                await clearCart();
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Cart is already empty")),
                );
              }
            },
            tooltip: "Clear Cart",
          )
        ],
      ),

      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : cartItems.isEmpty
          ? const Center(child: Text("Your cart is empty"))
          : ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          final item = cartItems[index];

          return Container(
            margin: const EdgeInsets.only(bottom: 15),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 6,
                  offset: Offset(0, 3),
                ),
              ],
            ),

            child: Row(
              children: [
                const Icon(Icons.shopping_bag,
                    size: 40, color: Colors.orange),
                const SizedBox(width: 15),

                // ✅ Real Cart Item Info
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item["name"],
                        style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 5),
                      Text("Quantity: ${item["quantity"]}"),
                      Text("Price: \$${item["price"]}"),
                    ],
                  ),
                ),

                // ✅ REMOVE FROM CART ICON
                IconButton(
                  icon: const Icon(Icons.delete, color: Colors.red),
                  onPressed: () {
                    removeFromCart(item["id"]);
                    print("🗑️ Removed from cart → ${item["id"]}");
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}