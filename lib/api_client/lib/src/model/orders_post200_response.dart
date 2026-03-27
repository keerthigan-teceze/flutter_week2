//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:ecommerce_api_client/src/model/orders_post200_response_items_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'orders_post200_response.g.dart';

/// OrdersPost200Response
///
/// Properties:
/// * [orderId]
/// * [totalAmount]
/// * [status]
/// * [items]
@BuiltValue()
abstract class OrdersPost200Response
    implements Built<OrdersPost200Response, OrdersPost200ResponseBuilder> {
  @BuiltValueField(wireName: r'orderId')
  String get orderId;

  @BuiltValueField(wireName: r'totalAmount')
  num get totalAmount;

  @BuiltValueField(wireName: r'status')
  OrdersPost200ResponseStatusEnum get status;
  // enum statusEnum {  pending,  paid,  failed,  };

  @BuiltValueField(wireName: r'items')
  BuiltList<OrdersPost200ResponseItemsInner> get items;

  OrdersPost200Response._();

  factory OrdersPost200Response(
      [void updates(OrdersPost200ResponseBuilder b)]) = _$OrdersPost200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OrdersPost200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OrdersPost200Response> get serializer =>
      _$OrdersPost200ResponseSerializer();
}

class _$OrdersPost200ResponseSerializer
    implements PrimitiveSerializer<OrdersPost200Response> {
  @override
  final Iterable<Type> types = const [
    OrdersPost200Response,
    _$OrdersPost200Response
  ];

  @override
  final String wireName = r'OrdersPost200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OrdersPost200Response object, {
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
      specifiedType: const FullType(OrdersPost200ResponseStatusEnum),
    );
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(
          BuiltList, [FullType(OrdersPost200ResponseItemsInner)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    OrdersPost200Response object, {
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
    required OrdersPost200ResponseBuilder result,
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
            specifiedType: const FullType(OrdersPost200ResponseStatusEnum),
          ) as OrdersPost200ResponseStatusEnum;
          result.status = valueDes;
          break;
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(OrdersPost200ResponseItemsInner)]),
          ) as BuiltList<OrdersPost200ResponseItemsInner>;
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
  OrdersPost200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrdersPost200ResponseBuilder();
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

class OrdersPost200ResponseStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'pending')
  static const OrdersPost200ResponseStatusEnum pending =
      _$ordersPost200ResponseStatusEnum_pending;
  @BuiltValueEnumConst(wireName: r'paid')
  static const OrdersPost200ResponseStatusEnum paid =
      _$ordersPost200ResponseStatusEnum_paid;
  @BuiltValueEnumConst(wireName: r'failed')
  static const OrdersPost200ResponseStatusEnum failed =
      _$ordersPost200ResponseStatusEnum_failed;

  static Serializer<OrdersPost200ResponseStatusEnum> get serializer =>
      _$ordersPost200ResponseStatusEnumSerializer;

  const OrdersPost200ResponseStatusEnum._(String name) : super(name);

  static BuiltSet<OrdersPost200ResponseStatusEnum> get values =>
      _$ordersPost200ResponseStatusEnumValues;
  static OrdersPost200ResponseStatusEnum valueOf(String name) =>
      _$ordersPost200ResponseStatusEnumValueOf(name);
}
