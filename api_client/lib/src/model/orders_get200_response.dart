//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:ecommerce_api_client/src/model/orders_get200_response_current_orders_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'orders_get200_response.g.dart';

/// OrdersGet200Response
///
/// Properties:
/// * [currentOrders]
/// * [pastOrders]
@BuiltValue()
abstract class OrdersGet200Response
    implements Built<OrdersGet200Response, OrdersGet200ResponseBuilder> {
  @BuiltValueField(wireName: r'currentOrders')
  BuiltList<OrdersGet200ResponseCurrentOrdersInner> get currentOrders;

  @BuiltValueField(wireName: r'pastOrders')
  BuiltList<OrdersGet200ResponseCurrentOrdersInner> get pastOrders;

  OrdersGet200Response._();

  factory OrdersGet200Response([void updates(OrdersGet200ResponseBuilder b)]) =
      _$OrdersGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OrdersGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OrdersGet200Response> get serializer =>
      _$OrdersGet200ResponseSerializer();
}

class _$OrdersGet200ResponseSerializer
    implements PrimitiveSerializer<OrdersGet200Response> {
  @override
  final Iterable<Type> types = const [
    OrdersGet200Response,
    _$OrdersGet200Response
  ];

  @override
  final String wireName = r'OrdersGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OrdersGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'currentOrders';
    yield serializers.serialize(
      object.currentOrders,
      specifiedType: const FullType(
          BuiltList, [FullType(OrdersGet200ResponseCurrentOrdersInner)]),
    );
    yield r'pastOrders';
    yield serializers.serialize(
      object.pastOrders,
      specifiedType: const FullType(
          BuiltList, [FullType(OrdersGet200ResponseCurrentOrdersInner)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    OrdersGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OrdersGet200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'currentOrders':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(OrdersGet200ResponseCurrentOrdersInner)]),
          ) as BuiltList<OrdersGet200ResponseCurrentOrdersInner>;
          result.currentOrders.replace(valueDes);
          break;
        case r'pastOrders':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(OrdersGet200ResponseCurrentOrdersInner)]),
          ) as BuiltList<OrdersGet200ResponseCurrentOrdersInner>;
          result.pastOrders.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OrdersGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrdersGet200ResponseBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}
