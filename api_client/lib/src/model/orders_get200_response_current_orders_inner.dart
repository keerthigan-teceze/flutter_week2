//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:ecommerce_api_client/src/model/orders_get200_response_current_orders_inner_items_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'orders_get200_response_current_orders_inner.g.dart';

/// OrdersGet200ResponseCurrentOrdersInner
///
/// Properties:
/// * [orderId]
/// * [totalAmount]
/// * [status]
/// * [createdAt]
/// * [items]
@BuiltValue()
abstract class OrdersGet200ResponseCurrentOrdersInner
    implements
        Built<OrdersGet200ResponseCurrentOrdersInner,
            OrdersGet200ResponseCurrentOrdersInnerBuilder> {
  @BuiltValueField(wireName: r'orderId')
  String get orderId;

  @BuiltValueField(wireName: r'totalAmount')
  num get totalAmount;

  @BuiltValueField(wireName: r'status')
  OrdersGet200ResponseCurrentOrdersInnerStatusEnum get status;
  // enum statusEnum {  pending,  paid,  failed,  };

  @BuiltValueField(wireName: r'createdAt')
  String? get createdAt;

  @BuiltValueField(wireName: r'items')
  BuiltList<OrdersGet200ResponseCurrentOrdersInnerItemsInner> get items;

  OrdersGet200ResponseCurrentOrdersInner._();

  factory OrdersGet200ResponseCurrentOrdersInner(
          [void updates(OrdersGet200ResponseCurrentOrdersInnerBuilder b)]) =
      _$OrdersGet200ResponseCurrentOrdersInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OrdersGet200ResponseCurrentOrdersInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OrdersGet200ResponseCurrentOrdersInner> get serializer =>
      _$OrdersGet200ResponseCurrentOrdersInnerSerializer();
}

class _$OrdersGet200ResponseCurrentOrdersInnerSerializer
    implements PrimitiveSerializer<OrdersGet200ResponseCurrentOrdersInner> {
  @override
  final Iterable<Type> types = const [
    OrdersGet200ResponseCurrentOrdersInner,
    _$OrdersGet200ResponseCurrentOrdersInner
  ];

  @override
  final String wireName = r'OrdersGet200ResponseCurrentOrdersInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OrdersGet200ResponseCurrentOrdersInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'orderId';
    yield serializers.serialize(
      object.orderId,
      specifiedType: const FullType(String),
    );
    yield r'totalAmount';
    yield serializers.serialize(
      object.totalAmount,
      specifiedType: const FullType(num),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType:
          const FullType(OrdersGet200ResponseCurrentOrdersInnerStatusEnum),
    );
    yield r'createdAt';
    yield object.createdAt == null
        ? null
        : serializers.serialize(
            object.createdAt,
            specifiedType: const FullType.nullable(String),
          );
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList,
          [FullType(OrdersGet200ResponseCurrentOrdersInnerItemsInner)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    OrdersGet200ResponseCurrentOrdersInner object, {
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
    required OrdersGet200ResponseCurrentOrdersInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'orderId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.orderId = valueDes;
          break;
        case r'totalAmount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.totalAmount = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                OrdersGet200ResponseCurrentOrdersInnerStatusEnum),
          ) as OrdersGet200ResponseCurrentOrdersInnerStatusEnum;
          result.status = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.createdAt = valueDes;
          break;
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList,
                [FullType(OrdersGet200ResponseCurrentOrdersInnerItemsInner)]),
          ) as BuiltList<OrdersGet200ResponseCurrentOrdersInnerItemsInner>;
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
  OrdersGet200ResponseCurrentOrdersInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrdersGet200ResponseCurrentOrdersInnerBuilder();
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

class OrdersGet200ResponseCurrentOrdersInnerStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'pending')
  static const OrdersGet200ResponseCurrentOrdersInnerStatusEnum pending =
      _$ordersGet200ResponseCurrentOrdersInnerStatusEnum_pending;
  @BuiltValueEnumConst(wireName: r'paid')
  static const OrdersGet200ResponseCurrentOrdersInnerStatusEnum paid =
      _$ordersGet200ResponseCurrentOrdersInnerStatusEnum_paid;
  @BuiltValueEnumConst(wireName: r'failed')
  static const OrdersGet200ResponseCurrentOrdersInnerStatusEnum failed =
      _$ordersGet200ResponseCurrentOrdersInnerStatusEnum_failed;

  static Serializer<OrdersGet200ResponseCurrentOrdersInnerStatusEnum>
      get serializer =>
          _$ordersGet200ResponseCurrentOrdersInnerStatusEnumSerializer;

  const OrdersGet200ResponseCurrentOrdersInnerStatusEnum._(String name)
      : super(name);

  static BuiltSet<OrdersGet200ResponseCurrentOrdersInnerStatusEnum>
      get values => _$ordersGet200ResponseCurrentOrdersInnerStatusEnumValues;
  static OrdersGet200ResponseCurrentOrdersInnerStatusEnum valueOf(
          String name) =>
      _$ordersGet200ResponseCurrentOrdersInnerStatusEnumValueOf(name);
}
