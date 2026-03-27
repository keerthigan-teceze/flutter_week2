import 'package:test/test.dart';
import 'package:ecommerce_api_client/ecommerce_api_client.dart';

/// tests for PaymentApi
void main() {
  final instance = EcommerceApiClient().getPaymentApi();

  group(PaymentApi, () {
    // Mock payment-provider webhook (local testing)
    //
    // Creates a pending payment and simulates a provider webhook event by calling the real /webhooks/payments handler internally.
    //
    //Future<WebhooksPaymentsMockPost200Response> webhooksPaymentsMockPost({ WebhooksPaymentsMockPostRequest webhooksPaymentsMockPostRequest }) async
    test('test webhooksPaymentsMockPost', () async {
      // TODO
    });

    // Payment webhook endpoint
    //
    // Verifies a stripe-like signature from the `stripe-signature` header using WEBHOOK_SECRET, then updates `orders.status` and `payments.status` based on `payment_intent.succeeded` / `payment_intent.failed`.
    //
    //Future<WebhooksPaymentsPost200Response> webhooksPaymentsPost({ WebhooksPaymentsPostRequest webhooksPaymentsPostRequest }) async
    test('test webhooksPaymentsPost', () async {
      // TODO
    });
  });
}
