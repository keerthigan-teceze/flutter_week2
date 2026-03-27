# ecommerce_api_client.api.PaymentApi

## Load the API package
```dart
import 'package:ecommerce_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**webhooksPaymentsMockPost**](PaymentApi.md#webhookspaymentsmockpost) | **POST** /webhooks/payments/mock | Mock payment-provider webhook for local testing
[**webhooksPaymentsPost**](PaymentApi.md#webhookspaymentspost) | **POST** /webhooks/payments | Payment webhook endpoint


# **webhooksPaymentsMockPost**
> WebhooksPaymentsMockPost200Response webhooksPaymentsMockPost(webhooksPaymentsMockPostRequest)

Mock payment-provider webhook for local testing

Creates a pending payment row for the supplied order ID, generates a stripe-like signature, and internally calls the real payment webhook handler. Useful for demo and local lifecycle verification.

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
> WebhooksPaymentsPost200Response webhooksPaymentsPost(stripeSignature, webhooksPaymentsPostRequest)

Payment webhook endpoint

Verifies a stripe-like `stripe-signature` header using `WEBHOOK_SECRET`, resolves a provider reference from the event payload, and updates both `payments.status` and `orders.status`. Success transitions the order to `paid`, failure transitions it to `failed`. Repeated delivery of the same event is handled idempotently.

### Example
```dart
import 'package:ecommerce_api_client/api.dart';

final api = EcommerceApiClient().getPaymentApi();
final String stripeSignature = t=1711536000,v1=<hex-signature>; // String | Stripe-like signature header verified with WEBHOOK_SECRET.
final WebhooksPaymentsPostRequest webhooksPaymentsPostRequest = ; // WebhooksPaymentsPostRequest | 

try {
    final response = api.webhooksPaymentsPost(stripeSignature, webhooksPaymentsPostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PaymentApi->webhooksPaymentsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stripeSignature** | **String**| Stripe-like signature header verified with WEBHOOK_SECRET. | 
 **webhooksPaymentsPostRequest** | [**WebhooksPaymentsPostRequest**](WebhooksPaymentsPostRequest.md)|  | [optional] 

### Return type

[**WebhooksPaymentsPost200Response**](WebhooksPaymentsPost200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

