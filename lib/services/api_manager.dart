import 'package:dio/dio.dart';
import 'package:ecommerce_api_client/ecommerce_api_client.dart';

class ApiManager {
  // 1. Centralized Dio Instance
  static final Dio _dio = Dio(BaseOptions(
    baseUrl: 'https://e-commerce-backend-sw10.onrender.com',
    connectTimeout: const Duration(seconds: 15),
    receiveTimeout: const Duration(seconds: 15),
  ));

  // 2. Security: Call this once after the user logs in
  static void setToken(String token) {
    _dio.interceptors.clear();
    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        options.headers['Authorization'] = 'Bearer $token';
        return handler.next(options);
      },
    ));
  }

  // 3. API Getters
  static ProductApi get productApi => EcommerceApiClient(dio: _dio).getProductApi();
  static AuthApi get authApi => EcommerceApiClient(dio: _dio).getAuthApi();
  static UserApi get userApi => EcommerceApiClient(dio: _dio).getUserApi();
}