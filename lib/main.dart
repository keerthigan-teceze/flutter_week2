import 'package:ecommerce/repository/product_repository.dart';
import 'package:ecommerce/screens/productdetails.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainApp()); // Fixed naming convention to PascalCase
}

class MainApp extends StatefulWidget {
  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  // 2. Instantiate the Repository
  final ProductRepository _productRepo = ProductRepository();
  String? editingProductId;

  final TextEditingController productnamecontroller = TextEditingController();
  final TextEditingController productpricecontroller = TextEditingController();
  final TextEditingController productstockcontroller = TextEditingController();
  final TextEditingController productdescriptioncontroller = TextEditingController();

  List<Map<String, dynamic>> products = [];
  bool isLoading = false; // Optional: to show a loader

  @override
  void initState() {
    super.initState();
    _fetchProducts(); // Initial load
  }

  // 3. New method to fetch data using the repo
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

  Future<void>_handledeleteProduct(String id) async {
    try {
      await _productRepo.deleteProduct(id);
      setState(() {
        products.removeWhere((product) => product["id"] == id);
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

      print("Product updated successfully");
    } catch (e) {
      print("Error editing product: $e");
    }
  }



  // 4. New method to handle adding via the repo
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

        // Success: Refresh list and clear text fields
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
          title: Text("Create Product", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          centerTitle: true,
          backgroundColor: Colors.orange,
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextField(
                controller: productnamecontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Product Name',
                  hintText: 'Enter Product Name',
                ),
              ),
              SizedBox(height: 16),
              TextField(
                controller: productpricecontroller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Product Price',
                  hintText: 'Enter Product Price',
                ),
              ),
              SizedBox(height: 16),
              TextField(
                controller: productstockcontroller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Stock',
                  hintText: 'Enter Product Stock count',
                ),
              ),
              SizedBox(height: 16),
              TextField(
                controller: productdescriptioncontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Description',
                  hintText: 'Enter Product Description',
                ),
              ),
              SizedBox(height: 16),

              MaterialButton(
                onPressed: () {
                  if (editingProductId == null) {
                    _handleAddProduct();
                  } else {
                    _handleEditProduct(editingProductId!);
                  }
                }, // 5. Call the new handler
                minWidth: double.infinity,
                height: 40,
                child: Text(editingProductId == null ? "Add Product" : "Edit Product"),
                color: Colors.orange,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              SizedBox(height: 16),

              Flexible(
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
                            width: double.infinity,
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  spreadRadius: 2,
                                  blurRadius: 7,
                                  offset: Offset(0, 3),
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
                          icon: Icon(Icons.delete, color: Colors.red),
                          onPressed: () {
                            _handledeleteProduct(products[index]["id"]);
                          },
                        ),

                        IconButton(
                          icon: Icon(Icons.edit, color: Colors.blue),
                          onPressed: () {
                            setState(() {
                              editingProductId = products[index]["id"]; // Store the ID
                              productnamecontroller.text = products[index]["name"];
                              productpricecontroller.text = products[index]["price"].toString();
                              productstockcontroller.text = products[index]["stock"].toString();
                              productdescriptioncontroller.text = products[index]["description"];
                            });
                          },
                        ),
                      ],
                          )
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