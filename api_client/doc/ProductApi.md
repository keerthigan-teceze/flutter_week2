# ecommerce_api_client.api.ProductApi

## Load the API package
```dart
import 'package:ecommerce_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**productsGet**](ProductApi.md#productsget) | **GET** /products | Get all products
[**productsIdDelete**](ProductApi.md#productsiddelete) | **DELETE** /products/{id} | Delete a product by ID
[**productsIdGet**](ProductApi.md#productsidget) | **GET** /products/{id} | Get a product by ID
[**productsIdPut**](ProductApi.md#productsidput) | **PUT** /products/{id} | Update a product by ID
[**productsPost**](ProductApi.md#productspost) | **POST** /products | Create a new product


# **productsGet**
> BuiltList<ProductsGet200ResponseInner> productsGet()

Get all products

Returns all products visible to an authenticated user.

### Example
```dart
import 'package:ecommerce_api_client/api.dart';

final api = EcommerceApiClient().getProductApi();

try {
    final response = api.productsGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling ProductApi->productsGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;ProductsGet200ResponseInner&gt;**](ProductsGet200ResponseInner.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **productsIdDelete**
> ProductsIdDelete200Response productsIdDelete(id)

Delete a product by ID

Deletes a product by UUID. This endpoint requires an authenticated admin token.

### Example
```dart
import 'package:ecommerce_api_client/api.dart';

final api = EcommerceApiClient().getProductApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.productsIdDelete(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ProductApi->productsIdDelete: $e\n');
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

# **productsIdGet**
> ProductsGet200ResponseInner productsIdGet(id)

Get a product by ID

Returns a single product by UUID for an authenticated user.

### Example
```dart
import 'package:ecommerce_api_client/api.dart';

final api = EcommerceApiClient().getProductApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.productsIdGet(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ProductApi->productsIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**ProductsGet200ResponseInner**](ProductsGet200ResponseInner.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **productsIdPut**
> ProductsGet200ResponseInner productsIdPut(id, productsIdPutRequest)

Update a product by ID

Updates a product by UUID. This endpoint requires an authenticated admin token.

### Example
```dart
import 'package:ecommerce_api_client/api.dart';

final api = EcommerceApiClient().getProductApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final ProductsIdPutRequest productsIdPutRequest = ; // ProductsIdPutRequest | 

try {
    final response = api.productsIdPut(id, productsIdPutRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ProductApi->productsIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **productsIdPutRequest** | [**ProductsIdPutRequest**](ProductsIdPutRequest.md)|  | [optional] 

### Return type

[**ProductsGet200ResponseInner**](ProductsGet200ResponseInner.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **productsPost**
> ProductsGet200ResponseInner productsPost(productsPostRequest)

Create a new product

Creates a product. This endpoint requires an authenticated user token. Product creation is not currently admin-only in the implementation.

### Example
```dart
import 'package:ecommerce_api_client/api.dart';

final api = EcommerceApiClient().getProductApi();
final ProductsPostRequest productsPostRequest = ; // ProductsPostRequest | 

try {
    final response = api.productsPost(productsPostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ProductApi->productsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productsPostRequest** | [**ProductsPostRequest**](ProductsPostRequest.md)|  | [optional] 

### Return type

[**ProductsGet200ResponseInner**](ProductsGet200ResponseInner.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

