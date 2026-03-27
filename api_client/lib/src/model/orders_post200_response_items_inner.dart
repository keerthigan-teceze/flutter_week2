//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'orders_post200_response_items_inner.g.dart';

/// OrdersPost200ResponseItemsInner
///
/// Properties:
/// * [productId]
/// * [quantity]
/// * [priceAtPurchase]
@BuiltValue()
abstract class OrdersPost200ResponseItemsInner
    implements
        Built<OrdersPost200ResponseItemsInner,
            OrdersPost200ResponseItemsInnerBuilder> {
  @BuiltValueField(wireName: r'productId')
  String get productId;

  @BuiltValueField(wireName: r'quantity')
  int get quantity;

  @BuiltValueField(wireName: r'priceAtPurchase')
  num get priceAtPurchase;

  OrdersPost200ResponseItemsInner._();

  factory OrdersPost200ResponseItemsInner(
          [void updates(OrdersPost200ResponseItemsInnerBuilder b)]) =
      _$OrdersPost200ResponseItemsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OrdersPost200ResponseItemsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OrdersPost200ResponseItemsInner> get serializer =>
      _$OrdersPost200ResponseItemsInnerSerializer();
}

class _$OrdersPost200ResponseItemsInnerSerializer
    implements PrimitiveSerializer<OrdersPost200ResponseItemsInner> {
  @override
  final Iterable<Type> types = const [
    OrdersPost200ResponseItemsInner,
    _$OrdersPost200ResponseItemsInner
  ];

  @override
  final String wireName = r'OrdersPost200ResponseItemsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OrdersPost200ResponseItemsInner object, {
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
    yield r'priceAtPurchase';
    yield serializers.serialize(
      object.priceAtPurchase,
      specifiedType: const FullType(num),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    OrdersPost200ResponseItemsInner object, {
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
    required OrdersPost200ResponseItemsInnerBuilder result,
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
        case r'priceAtPurchase':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.priceAtPurchase = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OrdersPost200ResponseItemsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrdersPost200ResponseItemsInnerBuilder();
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
