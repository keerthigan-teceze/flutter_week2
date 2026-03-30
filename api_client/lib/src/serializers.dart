//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:ecommerce_api_client/src/date_serializer.dart';
import 'package:ecommerce_api_client/src/model/date.dart';

import 'package:ecommerce_api_client/src/model/auth_login_post_request.dart';
import 'package:ecommerce_api_client/src/model/auth_refresh_post_request.dart';
import 'package:ecommerce_api_client/src/model/auth_register_post200_response.dart';
import 'package:ecommerce_api_client/src/model/auth_register_post200_response_user.dart';
import 'package:ecommerce_api_client/src/model/auth_register_post400_response.dart';
import 'package:ecommerce_api_client/src/model/auth_register_post400_response_issues_inner.dart';
import 'package:ecommerce_api_client/src/model/auth_register_post409_response.dart';
import 'package:ecommerce_api_client/src/model/auth_register_post_request.dart';
import 'package:ecommerce_api_client/src/model/cart_get200_response.dart';
import 'package:ecommerce_api_client/src/model/cart_get200_response_items_inner.dart';
import 'package:ecommerce_api_client/src/model/cart_items_post_request.dart';
import 'package:ecommerce_api_client/src/model/cart_items_product_id_put_request.dart';
import 'package:ecommerce_api_client/src/model/orders_get200_response.dart';
import 'package:ecommerce_api_client/src/model/orders_get200_response_current_orders_inner.dart';
import 'package:ecommerce_api_client/src/model/orders_get200_response_current_orders_inner_items_inner.dart';
import 'package:ecommerce_api_client/src/model/orders_post200_response.dart';
import 'package:ecommerce_api_client/src/model/orders_post200_response_items_inner.dart';
import 'package:ecommerce_api_client/src/model/orders_post_request.dart';
import 'package:ecommerce_api_client/src/model/products_get200_response_inner.dart';
import 'package:ecommerce_api_client/src/model/products_id_delete200_response.dart';
import 'package:ecommerce_api_client/src/model/products_id_put_request.dart';
import 'package:ecommerce_api_client/src/model/products_post_request.dart';
import 'package:ecommerce_api_client/src/model/users_get200_response_inner.dart';
import 'package:ecommerce_api_client/src/model/users_id_delete200_response.dart';
import 'package:ecommerce_api_client/src/model/users_id_put400_response.dart';
import 'package:ecommerce_api_client/src/model/users_id_put_request.dart';
import 'package:ecommerce_api_client/src/model/webhooks_payments_mock_post200_response.dart';
import 'package:ecommerce_api_client/src/model/webhooks_payments_mock_post500_response.dart';
import 'package:ecommerce_api_client/src/model/webhooks_payments_mock_post_request.dart';
import 'package:ecommerce_api_client/src/model/webhooks_payments_post200_response.dart';
import 'package:ecommerce_api_client/src/model/webhooks_payments_post_request.dart';
import 'package:ecommerce_api_client/src/model/webhooks_payments_post_request_data.dart';
import 'package:ecommerce_api_client/src/model/webhooks_payments_post_request_data_object.dart';
import 'package:ecommerce_api_client/src/model/webhooks_payments_post_request_data_object_metadata.dart';

part 'serializers.g.dart';

@SerializersFor([
  AuthLoginPostRequest,
  AuthRefreshPostRequest,
  AuthRegisterPost200Response,
  AuthRegisterPost200ResponseUser,
  AuthRegisterPost400Response,
  AuthRegisterPost400ResponseIssuesInner,
  AuthRegisterPost409Response,
  AuthRegisterPostRequest,
  CartGet200Response,
  CartGet200ResponseItemsInner,
  CartItemsPostRequest,
  CartItemsProductIdPutRequest,
  OrdersGet200Response,
  OrdersGet200ResponseCurrentOrdersInner,
  OrdersGet200ResponseCurrentOrdersInnerItemsInner,
  OrdersPost200Response,
  OrdersPost200ResponseItemsInner,
  OrdersPostRequest,
  ProductsGet200ResponseInner,
  ProductsIdDelete200Response,
  ProductsIdPutRequest,
  ProductsPostRequest,
  UsersGet200ResponseInner,
  UsersIdDelete200Response,
  UsersIdPut400Response,
  UsersIdPutRequest,
  WebhooksPaymentsMockPost200Response,
  WebhooksPaymentsMockPost500Response,
  WebhooksPaymentsMockPostRequest,
  WebhooksPaymentsPost200Response,
  WebhooksPaymentsPostRequest,
  WebhooksPaymentsPostRequestData,
  WebhooksPaymentsPostRequestDataObject,
  WebhooksPaymentsPostRequestDataObjectMetadata,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(UsersGet200ResponseInner)]),
        () => ListBuilder<UsersGet200ResponseInner>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ProductsGet200ResponseInner)]),
        () => ListBuilder<ProductsGet200ResponseInner>(),
      )
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
