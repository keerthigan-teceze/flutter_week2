# ecommerce_api_client.api.OrderApi

## Load the API package
```dart
import 'package:ecommerce_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ordersGet**](OrderApi.md#ordersget) | **GET** /orders | Get the authenticated user&#39;s orders
[**ordersPost**](OrderApi.md#orderspost) | **POST** /orders | Create a new order


# **ordersGet**
> OrdersGet200Response ordersGet()

Get the authenticated user's orders

Returns the authenticated user's order history split into ongoing orders (`pending`) and past orders (`paid` or `failed`). Each order includes its purchased products, per-item purchase price, and current status.

### Example
```dart
import 'package:ecommerce_api_client/api.dart';

final api = EcommerceApiClient().getOrderApi();

try {
    final response = api.ordersGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrderApi->ordersGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OrdersGet200Response**](OrdersGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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

