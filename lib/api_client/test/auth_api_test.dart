import 'package:test/test.dart';
import 'package:ecommerce_api_client/ecommerce_api_client.dart';

/// tests for AuthApi
void main() {
  final instance = EcommerceApiClient().getAuthApi();

  group(AuthApi, () {
    // Login
    //
    // Authenticates a user and returns access + refresh tokens.
    //
    //Future<AuthRegisterPost200Response> authLoginPost({ AuthLoginPostRequest authLoginPostRequest }) async
    test('test authLoginPost', () async {
      // TODO
    });

    // Refresh tokens
    //
    // Uses a refresh token to issue a new access + refresh token pair.
    //
    //Future<AuthRegisterPost200Response> authRefreshPost({ AuthRefreshPostRequest authRefreshPostRequest }) async
    test('test authRefreshPost', () async {
      // TODO
    });

    // Register a new user
    //
    // Creates a new user account and returns access + refresh tokens.
    //
    //Future<AuthRegisterPost200Response> authRegisterPost({ UsersPostRequest usersPostRequest }) async
    test('test authRegisterPost', () async {
      // TODO
    });
  });
}
