import 'package:ecommerce/services/api_manager.dart';
import 'package:ecommerce_api_client/ecommerce_api_client.dart';

class AdminRepository { // Renamed to CamelCase (standard Dart practice)

  Future<void> createUser(String name, String email, String password) async {
    try {
      final request = AuthRegisterPostRequest((b) => b
        ..name = name
        ..email = email
        ..password = password
      );

      final response = await ApiManager.authApi.authRegisterPost(
          authRegisterPostRequest: request
      );

      print("User Created: ${response.data}");
    } catch (e) {
      print("Error creating user: $e");
      rethrow; // Send the error to the UI
    }
  }
}