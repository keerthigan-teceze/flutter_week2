// lib/repositories/product_repository.dart

import 'package:ecommerce/services/api_manager.dart';
import 'package:ecommerce_api_client/ecommerce_api_client.dart';

class ProductRepository {

  // ✅ Get all products (No token needed here; ApiManager adds it automatically)
  Future<List<Map<String, dynamic>>> getProducts() async {
    try {
      final response = await ApiManager.productApi.productsGet();

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

  // ✅ Add product
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
        ..description = description
      );

      await ApiManager.productApi.productsPost(
        productsPostRequest: request,
      );
    } catch (e) {
      throw Exception("Failed to add product: $e");
    }
  }

  // ✅ Delete product
  Future<void> deleteProduct(String id) async {
    try {
      await ApiManager.productApi.productsIdDelete(id: id);
    } catch (e) {
      throw Exception("Failed to delete product: $e");
    }
  }

  // ✅ Edit product
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
        ..description = description
      );

      await ApiManager.productApi.productsIdPut(
        id: id,
        productsIdPutRequest: request,
      );
    } catch (e) {
      throw Exception("Failed to edit product: $e");
    }
  }

  // ✅ Single product
  Future<Map<String, dynamic>> getSingleProduct(String id) async {
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