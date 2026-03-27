//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:ecommerce_api_client/src/model/orders_post_request_items_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'orders_post_request.g.dart';

/// OrdersPostRequest
///
/// Properties:
/// * [items]
@BuiltValue()
abstract class OrdersPostRequest
    implements Built<OrdersPostRequest, OrdersPostRequestBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<OrdersPostRequestItemsInner>? get items;

  OrdersPostRequest._();

  factory OrdersPostRequest([void updates(OrdersPostRequestBuilder b)]) =
      _$OrdersPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OrdersPostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OrdersPostRequest> get serializer =>
      _$OrdersPostRequestSerializer();
}

class _$OrdersPostRequestSerializer
    implements PrimitiveSerializer<OrdersPostRequest> {
  @override
  final Iterable<Type> types = const [OrdersPostRequest, _$OrdersPostRequest];

  @override
  final String wireName = r'OrdersPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OrdersPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.items != null) {
      yield r'items';
      yield serializers.serialize(
        object.items,
        specifiedType:
            const FullType(BuiltList, [FullType(OrdersPostRequestItemsInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OrdersPostRequest object, {
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
    required OrdersPostRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(OrdersPostRequestItemsInner)]),
          ) as BuiltList<OrdersPostRequestItemsInner>;
          result.items.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OrdersPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrdersPostRequestBuilder();
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
