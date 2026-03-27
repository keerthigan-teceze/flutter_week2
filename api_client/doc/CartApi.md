# ecommerce_api_client.api.CartApi

## Load the API package
```dart
import 'package:ecommerce_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cartDelete**](CartApi.md#cartdelete) | **DELETE** /cart | Clear cart
[**cartGet**](CartApi.md#cartget) | **GET** /cart | Get current cart
[**cartItemsPost**](CartApi.md#cartitemspost) | **POST** /cart/items | Add item to cart
[**cartItemsProductIdDelete**](CartApi.md#cartitemsproductiddelete) | **DELETE** /cart/items/{productId} | Remove item from cart
[**cartItemsProductIdPut**](CartApi.md#cartitemsproductidput) | **PUT** /cart/items/{productId} | Update cart item quantity


# **cartDelete**
> CartGet200Response cartDelete()

Clear cart

Removes all items from the authenticated user's cart.

### Example
```dart
import 'package:ecommerce_api_client/api.dart';

final api = EcommerceApiClient().getCartApi();

try {
    final response = api.cartDelete();
    print(response);
} catch on DioException (e) {
    print('Exception when calling CartApi->cartDelete: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CartGet200Response**](CartGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cartGet**
> CartGet200Response cartGet()

Get current cart

Returns the authenticated user's cart, creating an empty cart if one does not exist yet.

### Example
```dart
import 'package:ecommerce_api_client/api.dart';

final api = EcommerceApiClient().getCartApi();

try {
    final response = api.cartGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling CartApi->cartGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CartGet200Response**](CartGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cartItemsPost**
> CartGet200Response cartItemsPost(ordersPostRequestItemsInner)

Add item to cart

Adds a product to the authenticated user's cart, incrementing quantity if the item already exists.

### Example
```dart
import 'package:ecommerce_api_client/api.dart';

final api = EcommerceApiClient().getCartApi();
final OrdersPostRequestItemsInner ordersPostRequestItemsInner = ; // OrdersPostRequestItemsInner | 

try {
    final response = api.cartItemsPost(ordersPostRequestItemsInner);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CartApi->cartItemsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ordersPostRequestItemsInner** | [**OrdersPostRequestItemsInner**](OrdersPostRequestItemsInner.md)|  | [optional] 

### Return type

[**CartGet200Response**](CartGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cartItemsProductIdDelete**
> CartGet200Response cartItemsProductIdDelete(productId)

Remove item from cart

Removes a product from the authenticated user's cart.

### Example
```dart
import 'package:ecommerce_api_client/api.dart';

final api = EcommerceApiClient().getCartApi();
final String productId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.cartItemsProductIdDelete(productId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CartApi->cartItemsProductIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productId** | **String**|  | 

### Return type

[**CartGet200Response**](CartGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cartItemsProductIdPut**
> CartGet200Response cartItemsProductIdPut(productId, cartItemsProductIdPutRequest)

Update cart item quantity

Sets a new quantity for a cart item belonging to the authenticated user.

### Example
```dart
import 'package:ecommerce_api_client/api.dart';

final api = EcommerceApiClient().getCartApi();
final String productId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final CartItemsProductIdPutRequest cartItemsProductIdPutRequest = ; // CartItemsProductIdPutRequest | 

try {
    final response = api.cartItemsProductIdPut(productId, cartItemsProductIdPutRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CartApi->cartItemsProductIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productId** | **String**|  | 
 **cartItemsProductIdPutRequest** | [**CartItemsProductIdPutRequest**](CartItemsProductIdPutRequest.md)|  | [optional] 

### Return type

[**CartGet200Response**](CartGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

