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
> OrdersPost200Response ordersPost(idempotencyKey, ordersPostRequest)

Create a new order

Creates an order for the authenticated user. If `items` is omitted, the API checks out the user's cart directly. Stock is decremented immediately during order creation rather than using a separate reservation lifecycle.

### Example
```dart
import 'package:ecommerce_api_client/api.dart';

final api = EcommerceApiClient().getOrderApi();
final String idempotencyKey = checkout-2026-03-27-001; // String | Required for POST /orders. Reusing the same key returns the cached order response.
final OrdersPostRequest ordersPostRequest = ; // OrdersPostRequest | 

try {
    final response = api.ordersPost(idempotencyKey, ordersPostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrderApi->ordersPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idempotencyKey** | **String**| Required for POST /orders. Reusing the same key returns the cached order response. | 
 **ordersPostRequest** | [**OrdersPostRequest**](OrdersPostRequest.md)|  | [optional] 

### Return type

[**OrdersPost200Response**](OrdersPost200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

