import 'package:ecommerce/services/api_manager.dart';
import 'package:ecommerce_api_client/ecommerce_api_client.dart';

class auth_Repository {



  Future <void> registerUser(String name, String email, String password) async {
    final request = AuthRegisterPostRequest((b) => b
      ..name = name
      ..email = email
      ..password = password
    );

    final response = await ApiManager.authApi.authRegisterPost(authRegisterPostRequest: request);
    print("Register Response: $response");

  }




  Future<Map<String, dynamic>> loginUser(String email, String password) async {
    try {
      final request = AuthLoginPostRequest((b) => b
        ..email = email
        ..password = password
      );

      final response = await ApiManager.authApi.authLoginPost(
        authLoginPostRequest: request,
      );

      // Extract token and role from the response data
      final token = response.data?.accessToken;
      final refreshToken = response.data?.refreshToken;

      // ✅ Check your generated model for the exact name (usually .role or .user.role)
      final role = response.data?.user.role;

      if (token == null || token.isEmpty) {
        throw Exception("accessToken missing in response");
      }

      // 2. Return both values in a Map
      return {
        "token": token,
        "role": role ?? "user", // Default to "user" if role is null
        "refreshToken": refreshToken,
      };

    } catch (e) {
      throw Exception("Login failed: $e");
    }
  }
}



