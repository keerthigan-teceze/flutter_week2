# ecommerce_api_client.api.PaymentApi

## Load the API package
```dart
import 'package:ecommerce_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**webhooksPaymentsMockPost**](PaymentApi.md#webhookspaymentsmockpost) | **POST** /webhooks/payments/mock | Mock payment-provider webhook (local testing)
[**webhooksPaymentsPost**](PaymentApi.md#webhookspaymentspost) | **POST** /webhooks/payments | Payment webhook endpoint


# **webhooksPaymentsMockPost**
> WebhooksPaymentsMockPost200Response webhooksPaymentsMockPost(webhooksPaymentsMockPostRequest)

Mock payment-provider webhook (local testing)

Creates a pending payment and simulates a provider webhook event by calling the real /webhooks/payments handler internally.

### Example
```dart
import 'package:ecommerce_api_client/api.dart';

final api = EcommerceApiClient().getPaymentApi();
final WebhooksPaymentsMockPostRequest webhooksPaymentsMockPostRequest = ; // WebhooksPaymentsMockPostRequest | 

try {
    final response = api.webhooksPaymentsMockPost(webhooksPaymentsMockPostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PaymentApi->webhooksPaymentsMockPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhooksPaymentsMockPostRequest** | [**WebhooksPaymentsMockPostRequest**](WebhooksPaymentsMockPostRequest.md)|  | [optional] 

### Return type

[**WebhooksPaymentsMockPost200Response**](WebhooksPaymentsMockPost200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **webhooksPaymentsPost**
> WebhooksPaymentsPost200Response webhooksPaymentsPost(webhooksPaymentsPostRequest)

Payment webhook endpoint

Verifies a stripe-like signature from the `stripe-signature` header using WEBHOOK_SECRET, then updates `orders.status` and `payments.status` based on `payment_intent.succeeded` / `payment_intent.failed`.

### Example
```dart
import 'package:ecommerce_api_client/api.dart';

final api = EcommerceApiClient().getPaymentApi();
final WebhooksPaymentsPostRequest webhooksPaymentsPostRequest = ; // WebhooksPaymentsPostRequest | 

try {
    final response = api.webhooksPaymentsPost(webhooksPaymentsPostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PaymentApi->webhooksPaymentsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhooksPaymentsPostRequest** | [**WebhooksPaymentsPostRequest**](WebhooksPaymentsPostRequest.md)|  | [optional] 

### Return type

[**WebhooksPaymentsPost200Response**](WebhooksPaymentsPost200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

