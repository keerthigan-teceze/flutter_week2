import 'package:ecommerce/repository/product_repository.dart';
import 'package:ecommerce/screens/productdetails.dart';
import 'package:flutter/material.dart';

class AdminHomePageScreen extends StatefulWidget {
  const AdminHomePageScreen({super.key});

  @override
  State<AdminHomePageScreen> createState() => _AdminHomePageScreenState();
}

class _AdminHomePageScreenState extends State<AdminHomePageScreen> {
  final ProductRepository _productRepo = ProductRepository();
  String? editingProductId;

  final TextEditingController productnamecontroller = TextEditingController();
  final TextEditingController productpricecontroller = TextEditingController();
  final TextEditingController productstockcontroller = TextEditingController();
  final TextEditingController productdescriptioncontroller = TextEditingController();

  List<Map<String, dynamic>> products = [];
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    _fetchProducts();
  }

  Future<void> _fetchProducts() async {
    try {
      final data = await _productRepo.getProducts();
      setState(() {
        products = data;
      });
    } catch (e) {
      print("Error fetching products: $e");
    }
  }

  Future<void> _handledeleteProduct(String id) async {
    try {
      await _productRepo.deleteProduct(id);
      setState(() {
        products.removeWhere((p) => p["id"] == id);
      });
    } catch (e) {
      print("Error deleting product: $e");
    }
  }

  Future<void> _handleEditProduct(String id) async {
    final name = productnamecontroller.text;
    final double? price = double.tryParse(productpricecontroller.text);
    final int? stock = int.tryParse(productstockcontroller.text);
    final description = productdescriptioncontroller.text;

    if (name.isEmpty || price == null || stock == null || description.isEmpty) {
      print("Please fill all fields");
      return;
    }

    try {
      await _productRepo.editProduct(
        id: id,
        name: name,
        price: price,
        stock: stock,
        description: description,
      );

      await _fetchProducts();

      productnamecontroller.clear();
      productpricecontroller.clear();
      productstockcontroller.clear();
      productdescriptioncontroller.clear();

      editingProductId = null;

      print("✅ Product updated");
    } catch (e) {
      print("Error editing product: $e");
    }
  }

  Future<void> _handleAddProduct() async {
    final name = productnamecontroller.text;
    final double? price = double.tryParse(productpricecontroller.text);
    final int? stock = int.tryParse(productstockcontroller.text);
    final description = productdescriptioncontroller.text;

    if (name.isNotEmpty && price != null && stock != null && description.isNotEmpty) {
      try {
        await _productRepo.addProduct(
          name: name,
          price: price,
          stock: stock,
          description: description,
        );

        _fetchProducts();

        productnamecontroller.clear();
        productpricecontroller.clear();
        productstockcontroller.clear();
        productdescriptioncontroller.clear();
      } catch (e) {
        print("Error adding product: $e");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Admin Home",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.orange,
        ),
        body: Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                controller: productnamecontroller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Product Name',
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: productpricecontroller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Product Price',
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: productstockcontroller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Stock',
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: productdescriptioncontroller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Description',
                ),
              ),
              const SizedBox(height: 16),

              MaterialButton(
                onPressed: () {
                  if (editingProductId == null) {
                    _handleAddProduct();
                  } else {
                    _handleEditProduct(editingProductId!);
                  }
                },
                color: Colors.orange,
                textColor: Colors.white,
                minWidth: double.infinity,
                height: 45,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                child: Text(editingProductId == null ? "Add Product" : "Update Product"),
              ),

              const SizedBox(height: 16),

              Expanded(
                child: ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => SingleProductView(id: products[index]["id"]),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.symmetric(vertical: 10),
                              padding: const EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 5,
                                  ),
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Name: ${products[index]["name"]}"),
                                  Text("Price: ${products[index]["price"]}"),
                                  Text("Stock: ${products[index]["stock"]}"),
                                  Text("Description: ${products[index]["description"]}"),
                                ],
                              ),
                            ),
                          ),

                          IconButton(
                            icon: const Icon(Icons.delete, color: Colors.red),
                            onPressed: () {
                              _handledeleteProduct(products[index]["id"]);
                            },
                          ),

                          IconButton(
                            icon: const Icon(Icons.edit, color: Colors.blue),
                            onPressed: () {
                              setState(() {
                                editingProductId = products[index]["id"];
                                productnamecontroller.text = products[index]["name"];
                                productpricecontroller.text =
                                    products[index]["price"].toString();
                                productstockcontroller.text =
                                    products[index]["stock"].toString();
                                productdescriptioncontroller.text =
                                products[index]["description"];
                              });
                            },
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}