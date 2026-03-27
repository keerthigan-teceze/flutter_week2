import 'package:flutter/material.dart';
import 'package:ecommerce/repository/product_repository.dart';

class SingleProductView extends StatefulWidget {
  final String id;

  const SingleProductView({super.key, required this.id});

  @override
  State<SingleProductView> createState() => _SingleProductViewState();
}

class _SingleProductViewState extends State<SingleProductView> {
  final ProductRepository _productRepo = ProductRepository();

  Map<String, dynamic>? product;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _fetchSingleProduct();
  }

  Future<void> _fetchSingleProduct() async {
    try {
      final data = await _productRepo.getSingleProduct(widget.id);

      setState(() {
        product = data;
        isLoading = false;
      });
    } catch (e) {
      print("Error fetching product: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Product Details"),
          backgroundColor: Colors.orange,
        ),
        body: const Center(child: CircularProgressIndicator()),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(product!["name"] ?? "Product Details"),
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              product!["name"].toUpperCase(),
              style:
              const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Divider(),

            ListTile(
              leading: const Icon(Icons.attach_money, color: Colors.green),
              title: const Text("Price"),
              subtitle: Text("\$${product!["price"]}"),
            ),

            ListTile(
              leading: const Icon(Icons.inventory_2, color: Colors.orange),
              title: const Text("Stock"),
              subtitle: Text("${product!["stock"]} units left"),
            ),

            const SizedBox(height: 20),
            const Text(
              "Description",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),

            Text(
              product!["description"] ?? "No description provided",
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}