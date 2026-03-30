import 'package:ecommerce/services/api_manager.dart';
import 'package:ecommerce_api_client/ecommerce_api_client.dart';

class AdminRepository {

  Future<void> createUser(String name, String email, String password) async {
    try {
      final request = AuthRegisterPostRequest((b) => b
        ..name = name
        ..email = email
        ..password = password
      );

      await ApiManager.authApi.authRegisterPost(
          authRegisterPostRequest: request
      );

    } catch (e) {
      print("Error creating user: $e");
      rethrow;
    }
  }

  // ✅ FIX: Added the return statement and converted response to List
  Future<List<dynamic>> getallusers() async {
    try {
      final response = await ApiManager.userApi.usersGet();

      // Extract the data. Depending on your generated client,
      // it is usually response.data or response.data.users
      final userList = response.data?.toList() ?? [];

      print("Successfully fetched ${userList.length} users");
      return userList; // <--- This fixes the "null return" error

    } catch (e) {
      print("Error getting all users: $e");
      rethrow;
    }
  }


  // Update User
  Future<void> updateUser(String userId, String name, String email) async {
    try {
      // 1. Use the correct generated class name: UsersIdPutRequest
      final request = UsersIdPutRequest((b) => b
        ..name = name
        ..email = email);

      // 2. Use the correct parameter name: usersIdPutRequest
      await ApiManager.userApi.usersIdPut(
        id: userId,
        usersIdPutRequest: request,
      );

      print("✅ User $userId updated successfully");
    } catch (e) {
      print("❌ Error updating user: $e");
      rethrow;
    }


  }
  Future <void> deleteUser(String userId) async {
    try {
      await ApiManager.userApi.usersIdDelete(id: userId);
      print("✅ User $userId deleted successfully");
    } catch (e) {
      print("❌ Error deleting user: $e");
      rethrow;
    }

  }
}