# ecommerce_api_client.api.UserApi

## Load the API package
```dart
import 'package:ecommerce_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**usersGet**](UserApi.md#usersget) | **GET** /users | Get all users
[**usersIdDelete**](UserApi.md#usersiddelete) | **DELETE** /users/{id} | Delete a user by ID
[**usersIdGet**](UserApi.md#usersidget) | **GET** /users/{id} | Get a user by ID
[**usersIdPut**](UserApi.md#usersidput) | **PUT** /users/{id} | Update a user by ID
[**usersPost**](UserApi.md#userspost) | **POST** /users | Create a new user


# **usersGet**
> BuiltList<UsersGet200ResponseInner> usersGet()

Get all users

Retrieves a list of all users

### Example
```dart
import 'package:ecommerce_api_client/api.dart';

final api = EcommerceApiClient().getUserApi();

try {
    final response = api.usersGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserApi->usersGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;UsersGet200ResponseInner&gt;**](UsersGet200ResponseInner.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersIdDelete**
> ProductsIdDelete200Response usersIdDelete(id)

Delete a user by ID

Deletes a user by its ID

### Example
```dart
import 'package:ecommerce_api_client/api.dart';

final api = EcommerceApiClient().getUserApi();
final String id = id_example; // String | 

try {
    final response = api.usersIdDelete(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserApi->usersIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**ProductsIdDelete200Response**](ProductsIdDelete200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersIdGet**
> UsersGet200ResponseInner usersIdGet(id)

Get a user by ID

Retrieves a user by its ID

### Example
```dart
import 'package:ecommerce_api_client/api.dart';

final api = EcommerceApiClient().getUserApi();
final String id = id_example; // String | 

try {
    final response = api.usersIdGet(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserApi->usersIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**UsersGet200ResponseInner**](UsersGet200ResponseInner.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersIdPut**
> UsersGet200ResponseInner usersIdPut(id, usersIdPutRequest)

Update a user by ID

Updates a user by its ID

### Example
```dart
import 'package:ecommerce_api_client/api.dart';

final api = EcommerceApiClient().getUserApi();
final String id = id_example; // String | 
final UsersIdPutRequest usersIdPutRequest = ; // UsersIdPutRequest | 

try {
    final response = api.usersIdPut(id, usersIdPutRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserApi->usersIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **usersIdPutRequest** | [**UsersIdPutRequest**](UsersIdPutRequest.md)|  | [optional] 

### Return type

[**UsersGet200ResponseInner**](UsersGet200ResponseInner.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersPost**
> UsersGet200ResponseInner usersPost(usersPostRequest)

Create a new user

Creates a new user with the provided details

### Example
```dart
import 'package:ecommerce_api_client/api.dart';

final api = EcommerceApiClient().getUserApi();
final UsersPostRequest usersPostRequest = ; // UsersPostRequest | 

try {
    final response = api.usersPost(usersPostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserApi->usersPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **usersPostRequest** | [**UsersPostRequest**](UsersPostRequest.md)|  | [optional] 

### Return type

[**UsersGet200ResponseInner**](UsersGet200ResponseInner.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

