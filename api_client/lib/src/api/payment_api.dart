//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:ecommerce_api_client/src/model/users_id_put400_response.dart';
import 'package:ecommerce_api_client/src/model/webhooks_payments_mock_post200_response.dart';
import 'package:ecommerce_api_client/src/model/webhooks_payments_mock_post500_response.dart';
import 'package:ecommerce_api_client/src/model/webhooks_payments_mock_post_request.dart';
import 'package:ecommerce_api_client/src/model/webhooks_payments_post200_response.dart';
import 'package:ecommerce_api_client/src/model/webhooks_payments_post_request.dart';

class PaymentApi {
  final Dio _dio;

  final Serializers _serializers;

  const PaymentApi(this._dio, this._serializers);

  /// Mock payment-provider webhook for local testing
  /// Creates a pending payment row for the supplied order ID, generates a stripe-like signature, and internally calls the real payment webhook handler. Useful for demo and local lifecycle verification.
  ///
  /// Parameters:
  /// * [webhooksPaymentsMockPostRequest]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [WebhooksPaymentsMockPost200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<WebhooksPaymentsMockPost200Response>>
      webhooksPaymentsMockPost({
    WebhooksPaymentsMockPostRequest? webhooksPaymentsMockPostRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/webhooks/payments/mock';
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      const _type = FullType(WebhooksPaymentsMockPostRequest);
      _bodyData = webhooksPaymentsMockPostRequest == null
          ? null
          : _serializers.serialize(webhooksPaymentsMockPostRequest,
              specifiedType: _type);
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _options.compose(
          _dio.options,
          _path,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    WebhooksPaymentsMockPost200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType:
                  const FullType(WebhooksPaymentsMockPost200Response),
            ) as WebhooksPaymentsMockPost200Response;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<WebhooksPaymentsMockPost200Response>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Payment webhook endpoint
  /// Verifies a stripe-like &#x60;stripe-signature&#x60; header using &#x60;WEBHOOK_SECRET&#x60;, resolves a provider reference from the event payload, and updates both &#x60;payments.status&#x60; and &#x60;orders.status&#x60;. Success transitions the order to &#x60;paid&#x60;, failure transitions it to &#x60;failed&#x60;. Repeated delivery of the same event is handled idempotently.
  ///
  /// Parameters:
  /// * [stripeSignature] - Stripe-like signature header verified with WEBHOOK_SECRET.
  /// * [webhooksPaymentsPostRequest]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [WebhooksPaymentsPost200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<WebhooksPaymentsPost200Response>> webhooksPaymentsPost({
    required String stripeSignature,
    WebhooksPaymentsPostRequest? webhooksPaymentsPostRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/webhooks/payments';
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        r'stripe-signature': stripeSignature,
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      const _type = FullType(WebhooksPaymentsPostRequest);
      _bodyData = webhooksPaymentsPostRequest == null
          ? null
          : _serializers.serialize(webhooksPaymentsPostRequest,
              specifiedType: _type);
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _options.compose(
          _dio.options,
          _path,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    WebhooksPaymentsPost200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType: const FullType(WebhooksPaymentsPost200Response),
            ) as WebhooksPaymentsPost200Response;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<WebhooksPaymentsPost200Response>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }
}
