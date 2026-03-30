import 'package:ecommerce/repository/cart_repository.dart';
import 'package:ecommerce/repository/order_repository.dart';
import 'package:ecommerce/repository/product_repository.dart';
import 'package:ecommerce/screens/my_cart_screen.dart';
import 'package:ecommerce/screens/orders_screen.dart';
import 'package:ecommerce/screens/productdetails.dart';
import 'package:ecommerce/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class UserHomePageScreen extends StatefulWidget {
  const UserHomePageScreen({super.key});

  @override
  State<UserHomePageScreen> createState() => _UserHomePageScreenState();
}

class _UserHomePageScreenState extends State<UserHomePageScreen> {
  final ProductRepository _productRepo = ProductRepository();
  final CartRepository cartRepo = CartRepository();
  final OrderRepository _orderRepo = OrderRepository();


  List<Map<String, dynamic>> products = [];

  bool isLoading = true;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _fetchProducts();
  }

  Future <void> createOrder(String productId, int quantity) async {
    try {
      await _orderRepo.createOrder(productId,quantity);
      print("✅ Order created");
    } catch (e) {
      throw Exception("❌ Failed to create order: $e");

    }

  }

  Future<void> _fetchProducts() async {
    try {
      final data = await _productRepo.getProducts();
      setState(() {
        products = data;
        isLoading = false;
      });
    } catch (e) {
      print("Error loading products: $e");
      setState(() => isLoading = false);
    }
  }

  // ✅ Add to Cart Handler
  void _handleAddToCart(String productId) async {
    try {
      await cartRepo.addToCart(productId);

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("✅ Added to cart")),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("❌ Error: $e")),
      );
    }
  }

  // ✅ Bottom Nav Tap Handler
  void _onNavTap(int index) {
    setState(() => _selectedIndex = index);

    if (index == 0) {
      // Home (stay here)
    } else if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => const MyCartScreen()),
      );
    } else if (index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => const OrdersScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Products",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),

      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : products.isEmpty
          ? const Center(child: Text("No products available"))
          : ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) =>
                      SingleProductView(id: products[index]["id"]),
                ),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(bottom: 15),
              padding: const EdgeInsets.all(20),
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
                  // ✅ Product information
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          products[index]["name"],
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text("Price: \$${products[index]["price"]}"),
                        Text("Stock: ${products[index]["stock"]}"),
                        const SizedBox(height: 10),
                        Text(
                          products[index]["description"],
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),


                  /// ✅ ORDER NOW ICON
                  IconButton(
                    icon: const Icon(Icons.shopping_cart_checkout,
                        color: Colors.blue, size: 30),
                    onPressed: () {
                      createOrder(products[index]["id"], 1);
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("✅ Order created")),
                      );

                    },
                  ),


                  // ✅ Add to Cart Icon
                  IconButton(
                    icon: const Icon(
                      Icons.add_shopping_cart,
                      color: Colors.green,
                      size: 28,
                    ),
                    onPressed: () {
                      _handleAddToCart(products[index]["id"]);
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),

      // ✅ Bottom Nav Bar Added
      bottomNavigationBar: AppBottomNavBar(
        currentIndex: _selectedIndex,
        onTap: _onNavTap,
      ),
    );
  }
}