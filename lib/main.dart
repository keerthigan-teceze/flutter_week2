import 'package:ecommerce/api_client/lib/src/api.dart';
import 'package:ecommerce/api_service.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
   mainApp()
  );
}


class mainApp extends StatefulWidget{
  @override
  State<mainApp> createState() => _mainAppState();
}

class _mainAppState extends State<mainApp> {
  String displayText = "No Products Added";
  TextEditingController productnamecontroller = TextEditingController();
  TextEditingController productpricecontroller = TextEditingController();
  TextEditingController productstockcontroller = TextEditingController();
  TextEditingController productdescriptioncontroller = TextEditingController();
  List<Map<String,dynamic>> products = [];

  // ApiService apiService = ApiService();
  final api =EcommerceApiClient().getProductApi();



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Create Product", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold ),),
          centerTitle: true,
          backgroundColor: Colors.orange,
        ),
            body:Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(20),
              child:  Column(
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
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Product Price',
                        hintText: 'Enter Product Price'
                    ),
                  ),

                  SizedBox(height: 16),
                  TextField(
                    controller: productstockcontroller,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Stock',
                        hintText: 'Enter Product Stock count'
                    ),
                  ),
                  SizedBox(height: 16),

                  TextField(
                    controller: productdescriptioncontroller,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Description',
                        hintText: 'Enter Product Description'
                    ),
                  ),
                  SizedBox(height: 16),


                  MaterialButton(onPressed: () async{
                    String token = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6ImYxMzNhMDczLTZkZmUtNDAxZi1hMmMzLTNhNjJjMDQwOGZkOCIsImVtYWlsIjoia2VlcnRoaWdhbkBnbWFpbC5jb20iLCJyb2xlIjoiYWRtaW4iLCJpYXQiOjE3NzQ1Mjk4NjksImV4cCI6MTc3NDUzMDc2OX0.YspzmIp-XFRCRdGDVAir-OSqk9abY7sk6-rqKorR3Fc";
                    // String name =productnamecontroller.text;
                    // String description =productdescriptioncontroller.text;
                    // double? price = double.tryParse(productpricecontroller.text);
                    // int? stock = int.tryParse(productstockcontroller.text);
                    //
                    // if (name.isEmpty || description.isEmpty || price == null || stock == null){
                    //   setState(() {
                    //     displayText="Please fill all the fields";
                    //   });
                    //   return;
                    // }
                    //
                    // String result =await apiService.createProduct(
                    //   name,
                    //   price,
                    //   stock,
                    //   description,
                    //   token,
                    //
                    // );
                    // print(result);



                    setState(() {
                      productnamecontroller.text.isEmpty ? displayText = "Please Enter Product Name" :
                      productpricecontroller.text.isEmpty ? displayText = "Please Enter Product Price" :
                      productstockcontroller.text.isEmpty ? displayText = "Please Enter Product Stock" :
                      productdescriptioncontroller.text.isEmpty ? displayText = "Please Enter Product Description" :

                      displayText = "Product Added Successfully";
                    });
                    products.add({
                      "name":productnamecontroller.text,
                      "price":productpricecontroller.text,
                      "stock":productstockcontroller.text,
                      "description":productdescriptioncontroller.text
                    });
                    productnamecontroller.clear();
                    productpricecontroller.clear();
                    productstockcontroller.clear();
                    productdescriptioncontroller.clear();
                  },

                    minWidth: double.infinity,
                    height: 40,

                    child: Text("Add Product"),
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
                      itemBuilder: (context,index){
                        return Row(
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

                            // ✅ FIXED — DELETE BUTTON INSIDE children[]
                            IconButton(
                              icon: Icon(Icons.delete, color: Colors.red),
                              onPressed: () {
                                setState(() {
                                  products.removeAt(index);
                                });
                              },
                            ),
                          ],
                        );
                      }
                  
                        ),
                ),

                ],
              ),
            )
      )

    );
  }
}