# ecommerce_api_client.api.OrderApi

## Load the API package
```dart
import 'package:ecommerce_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ordersPost**](OrderApi.md#orderspost) | **POST** /orders | Create a new order


# **ordersPost**
> OrdersPost200Response ordersPost(ordersPostRequest)

Create a new order

Creates a new order from explicit items, or from the authenticated user's cart when `items` is omitted.

### Example
```dart
import 'package:ecommerce_api_client/api.dart';

final api = EcommerceApiClient().getOrderApi();
final OrdersPostRequest ordersPostRequest = ; // OrdersPostRequest | 

try {
    final response = api.ordersPost(ordersPostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrderApi->ordersPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ordersPostRequest** | [**OrdersPostRequest**](OrdersPostRequest.md)|  | [optional] 

### Return type

[**OrdersPost200Response**](OrdersPost200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

