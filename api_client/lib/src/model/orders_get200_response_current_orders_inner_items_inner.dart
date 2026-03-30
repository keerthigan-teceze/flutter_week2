//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'orders_get200_response_current_orders_inner_items_inner.g.dart';

/// OrdersGet200ResponseCurrentOrdersInnerItemsInner
///
/// Properties:
/// * [productId]
/// * [quantity]
/// * [priceAtPurchase]
/// * [name]
/// * [description]
@BuiltValue()
abstract class OrdersGet200ResponseCurrentOrdersInnerItemsInner
    implements
        Built<OrdersGet200ResponseCurrentOrdersInnerItemsInner,
            OrdersGet200ResponseCurrentOrdersInnerItemsInnerBuilder> {
  @BuiltValueField(wireName: r'productId')
  String get productId;

  @BuiltValueField(wireName: r'quantity')
  int get quantity;

  @BuiltValueField(wireName: r'priceAtPurchase')
  num get priceAtPurchase;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'description')
  String get description;

  OrdersGet200ResponseCurrentOrdersInnerItemsInner._();

  factory OrdersGet200ResponseCurrentOrdersInnerItemsInner(
          [void updates(
              OrdersGet200ResponseCurrentOrdersInnerItemsInnerBuilder b)]) =
      _$OrdersGet200ResponseCurrentOrdersInnerItemsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
          OrdersGet200ResponseCurrentOrdersInnerItemsInnerBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OrdersGet200ResponseCurrentOrdersInnerItemsInner>
      get serializer =>
          _$OrdersGet200ResponseCurrentOrdersInnerItemsInnerSerializer();
}

class _$OrdersGet200ResponseCurrentOrdersInnerItemsInnerSerializer
    implements
        PrimitiveSerializer<OrdersGet200ResponseCurrentOrdersInnerItemsInner> {
  @override
  final Iterable<Type> types = const [
    OrdersGet200ResponseCurrentOrdersInnerItemsInner,
    _$OrdersGet200ResponseCurrentOrdersInnerItemsInner
  ];

  @override
  final String wireName = r'OrdersGet200ResponseCurrentOrdersInnerItemsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OrdersGet200ResponseCurrentOrdersInnerItemsInner object, {
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
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'description';
    yield serializers.serialize(
      object.description,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    OrdersGet200ResponseCurrentOrdersInnerItemsInner object, {
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
    required OrdersGet200ResponseCurrentOrdersInnerItemsInnerBuilder result,
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
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OrdersGet200ResponseCurrentOrdersInnerItemsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrdersGet200ResponseCurrentOrdersInnerItemsInnerBuilder();
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
