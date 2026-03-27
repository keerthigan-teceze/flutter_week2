//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'orders_post_request_items_inner.g.dart';

/// OrdersPostRequestItemsInner
///
/// Properties:
/// * [productId]
/// * [quantity]
@BuiltValue()
abstract class OrdersPostRequestItemsInner
    implements
        Built<OrdersPostRequestItemsInner, OrdersPostRequestItemsInnerBuilder> {
  @BuiltValueField(wireName: r'productId')
  String get productId;

  @BuiltValueField(wireName: r'quantity')
  int get quantity;

  OrdersPostRequestItemsInner._();

  factory OrdersPostRequestItemsInner(
          [void updates(OrdersPostRequestItemsInnerBuilder b)]) =
      _$OrdersPostRequestItemsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OrdersPostRequestItemsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OrdersPostRequestItemsInner> get serializer =>
      _$OrdersPostRequestItemsInnerSerializer();
}

class _$OrdersPostRequestItemsInnerSerializer
    implements PrimitiveSerializer<OrdersPostRequestItemsInner> {
  @override
  final Iterable<Type> types = const [
    OrdersPostRequestItemsInner,
    _$OrdersPostRequestItemsInner
  ];

  @override
  final String wireName = r'OrdersPostRequestItemsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OrdersPostRequestItemsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'productId';
    yield serializers.serialize(
      object.productId,
      specifiedType: const FullType(String),
    );
    yield r'quantity';
    yield serializers.serialize(
      object.quantity,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    OrdersPostRequestItemsInner object, {
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
    required OrdersPostRequestItemsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'productId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.productId = valueDes;
          break;
        case r'quantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.quantity = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OrdersPostRequestItemsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrdersPostRequestItemsInnerBuilder();
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
