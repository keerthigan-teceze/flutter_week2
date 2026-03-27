# ecommerce_api_client.api.AuthApi

## Load the API package
```dart
import 'package:ecommerce_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authLoginPost**](AuthApi.md#authloginpost) | **POST** /auth/login | Login
[**authRefreshPost**](AuthApi.md#authrefreshpost) | **POST** /auth/refresh | Refresh tokens
[**authRegisterPost**](AuthApi.md#authregisterpost) | **POST** /auth/register | Register a new user


# **authLoginPost**
> AuthRegisterPost200Response authLoginPost(authLoginPostRequest)

Login

Authenticates a user and returns access + refresh tokens.

### Example
```dart
import 'package:ecommerce_api_client/api.dart';

final api = EcommerceApiClient().getAuthApi();
final AuthLoginPostRequest authLoginPostRequest = ; // AuthLoginPostRequest | 

try {
    final response = api.authLoginPost(authLoginPostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->authLoginPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authLoginPostRequest** | [**AuthLoginPostRequest**](AuthLoginPostRequest.md)|  | [optional] 

### Return type

[**AuthRegisterPost200Response**](AuthRegisterPost200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authRefreshPost**
> AuthRegisterPost200Response authRefreshPost(authRefreshPostRequest)

Refresh tokens

Uses a refresh token to issue a new access + refresh token pair.

### Example
```dart
import 'package:ecommerce_api_client/api.dart';

final api = EcommerceApiClient().getAuthApi();
final AuthRefreshPostRequest authRefreshPostRequest = ; // AuthRefreshPostRequest | 

try {
    final response = api.authRefreshPost(authRefreshPostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->authRefreshPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authRefreshPostRequest** | [**AuthRefreshPostRequest**](AuthRefreshPostRequest.md)|  | [optional] 

### Return type

[**AuthRegisterPost200Response**](AuthRegisterPost200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authRegisterPost**
> AuthRegisterPost200Response authRegisterPost(usersPostRequest)

Register a new user

Creates a new user account and returns access + refresh tokens.

### Example
```dart
import 'package:ecommerce_api_client/api.dart';

final api = EcommerceApiClient().getAuthApi();
final UsersPostRequest usersPostRequest = ; // UsersPostRequest | 

try {
    final response = api.authRegisterPost(usersPostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->authRegisterPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **usersPostRequest** | [**UsersPostRequest**](UsersPostRequest.md)|  | [optional] 

### Return type

[**AuthRegisterPost200Response**](AuthRegisterPost200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

