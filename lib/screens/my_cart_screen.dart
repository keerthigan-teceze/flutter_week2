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

  /// ✅ FETCH CART ITEMS
  Future<void> fetchCartItems() async {
    try {
      final data = await _cartRepo.getCart();
      setState(() {
        cartItems = data;
        isLoading = false;
      });
    } catch (e) {
      print("Error loading cart items: $e");
      setState(() => isLoading = false);
    }
  }

  /// ✅ REMOVE ITEM FROM CART
  Future<void> removeFromCart(String id) async {
    try {
      await _cartRepo.removeFromCart(id);

      setState(() {
        cartItems.removeWhere((item) => item["id"] == id);
      });

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("✅ Item removed")),
      );
    } catch (e) {
      print("Error removing cart item: $e");
    }
  }

  /// ✅ CLEAR ALL CART ITEMS
  Future<void> clearCart() async {
    try {
      await _cartRepo.clearCart();
      setState(() => cartItems.clear());
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("🧹 Cart cleared")),
      );
    } catch (e) {
      print("Error clearing cart: $e");
    }
  }

  /// ✅ UPDATE QUANTITY DIALOG
  void _showEditQuantityDialog(String id, int currentQty) {
    final controller = TextEditingController(text: currentQty.toString());

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Update Quantity"),
          content: TextField(
            controller: controller,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(hintText: "Enter new quantity"),
          ),
          actions: [
            TextButton(
              child: const Text("Cancel"),
              onPressed: () => Navigator.pop(context),
            ),
            TextButton(
              child: const Text("Update"),
              onPressed: () async {
                final qty = int.tryParse(controller.text);
                if (qty == null || qty <= 0) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Enter a valid quantity")),
                  );
                  return;
                }

                Navigator.pop(context);
                await updateQuantity(id, qty);
              },
            ),
          ],
        );
      },
    );
  }

  /// ✅ UPDATE QUANTITY BACKEND
  Future<void> updateQuantity(String id, int qty) async {
    try {
      await _cartRepo.updateQuantity(id, qty);

      setState(() {
        cartItems.firstWhere((item) => item["id"] == id)["quantity"] = qty;
      });

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("✅ Quantity updated")),
      );
    } catch (e) {
      print("Error updating quantity: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Cart",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.orange,
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.delete_forever, color: Colors.white, size: 30),
            onPressed: () async {
              if (cartItems.isNotEmpty) await clearCart();
            },
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
                    offset: Offset(0, 3))
              ],
            ),

            child: Row(
              children: [
                const Icon(Icons.shopping_bag,
                    size: 40, color: Colors.orange),
                const SizedBox(width: 15),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(item["name"],
                          style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                      const SizedBox(height: 5),
                      Text("Quantity: ${item["quantity"]}"),
                      Text("Price: \$${item["price"]}"),
                    ],
                  ),
                ),

                /// ✅ EDIT ICON
                IconButton(
                  icon: const Icon(Icons.edit, color: Colors.blue),
                  onPressed: () {
                    _showEditQuantityDialog(
                      item["id"],
                      item["quantity"],
                    );
                  },
                ),

                /// ✅ REMOVE ICON
                IconButton(
                  icon: const Icon(Icons.delete, color: Colors.red),
                  onPressed: () => removeFromCart(item["id"]),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}