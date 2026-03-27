// lib/repositories/product_repository.dart

import 'package:ecommerce/services/api_manager.dart';
import 'package:ecommerce_api_client/ecommerce_api_client.dart';

class ProductRepository {
  final String _authToken = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6ImYxMzNhMDczLTZkZmUtNDAxZi1hMmMzLTNhNjJjMDQwOGZkOCIsImVtYWlsIjoia2VlcnRoaWdhbkBnbWFpbC5jb20iLCJyb2xlIjoiYWRtaW4iLCJpYXQiOjE3NzQ1Mjk4NjksImV4cCI6MTc3NDUzMDc2OX0.YspzmIp-XFRCRdGDVAir-OSqk9abY7sk6-rqKorR3Fc";

  // Fetch all products
  Future<List<Map<String, dynamic>>> getProducts() async {
    try {
      final response = await ApiManager.productApi.productsGet(
        headers: {"Authorization": "Bearer $_authToken"},
      );

      return response.data!.map((product) => {
        "id": product.id,
        "name": product.name,
        "price": product.price,
        "stock": product.stock,
        "description": product.description,
      }).toList();
    } catch (e) {
      throw Exception("Failed to fetch products: $e");
    }
  }

  // Add a new product
  Future<void> addProduct({
    required String name,
    required double price,
    required int stock,
    required String description,
  }) async {
    try {
      final request = ProductsPostRequest((b) => b
        ..name = name
        ..price = price
        ..stock = stock
        ..description = description);

      await ApiManager.productApi.productsPost(
        productsPostRequest: request,
      );
    } catch (e) {
      throw Exception("Failed to add product: $e");
    }
  }


  //delete product
  Future<void> deleteProduct(String id) async {
    try {
      await ApiManager.productApi.productsIdDelete(id: id);
    } catch (e) {
      throw Exception("Failed to delete product: $e");
    }
  }


  //edit product
  Future<void> editProduct({
    required String id,
    required String name,
    required double price,
    required int stock,
    required String description,
  }) async {
    try {
      final request = ProductsIdPutRequest((b) => b
          ..name = name
        ..price = price
        ..stock = stock
        ..description = description);

      await ApiManager.productApi.productsIdPut(
        id: id,
        productsIdPutRequest: request,
      );
      } catch (e) {
      throw Exception("Failed to edit product: $e");
    }

  }
  //single product
  Future <Map<String, dynamic>> getSingleProduct(String id) async {
    try {
      final response = await ApiManager.productApi.productsIdGet(id: id);
      return {
        "id": response.data!.id,
        "name": response.data!.name,
        "price": response.data!.price,
        "stock": response.data!.stock,
        "description": response.data!.description,
      };
    } catch (e) {
      throw Exception("Failed to fetch product: $e");
    }
  }

}





