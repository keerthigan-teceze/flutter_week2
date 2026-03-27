import 'package:test/test.dart';
import 'package:ecommerce_api_client/ecommerce_api_client.dart';

/// tests for UserApi
void main() {
  final instance = EcommerceApiClient().getUserApi();

  group(UserApi, () {
    // Get all users
    //
    // Retrieves a list of all users
    //
    //Future<BuiltList<UsersGet200ResponseInner>> usersGet() async
    test('test usersGet', () async {
      // TODO
    });

    // Delete a user by ID
    //
    // Deletes a user by its ID
    //
    //Future<ProductsIdDelete200Response> usersIdDelete(String id) async
    test('test usersIdDelete', () async {
      // TODO
    });

    // Get a user by ID
    //
    // Retrieves a user by its ID
    //
    //Future<UsersGet200ResponseInner> usersIdGet(String id) async
    test('test usersIdGet', () async {
      // TODO
    });

    // Update a user by ID
    //
    // Updates a user by its ID
    //
    //Future<UsersGet200ResponseInner> usersIdPut(String id, { UsersIdPutRequest usersIdPutRequest }) async
    test('test usersIdPut', () async {
      // TODO
    });

    // Create a new user
    //
    // Creates a new user with the provided details
    //
    //Future<UsersGet200ResponseInner> usersPost({ UsersPostRequest usersPostRequest }) async
    test('test usersPost', () async {
      // TODO
    });
  });
}
