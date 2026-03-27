import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio = Dio(
    BaseOptions(baseUrl: "https://e-commerce-backend-sw10.onrender.com"),
  );

  // SIMPLE POST request
  Future<String> createProduct(String name, dynamic price, dynamic stock, String description,String token ) async {
    final data = {
      "name": name,
      "price": price,
      "stock": stock,
      "description": description,

    };

    final response = await _dio.post("/products",
        data: data,
      options: Options(
        headers: {
          "Authorization": "Bearer $token",  // ✅ send token here
        },


    ),

    );

    return response.data.toString();
  }
}