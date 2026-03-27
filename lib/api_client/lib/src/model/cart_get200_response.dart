//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:ecommerce_api_client/src/model/cart_get200_response_items_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cart_get200_response.g.dart';

/// CartGet200Response
///
/// Properties:
/// * [cartId]
/// * [userId]
/// * [items]
/// * [totalAmount]
@BuiltValue()
abstract class CartGet200Response
    implements Built<CartGet200Response, CartGet200ResponseBuilder> {
  @BuiltValueField(wireName: r'cartId')
  String get cartId;

  @BuiltValueField(wireName: r'userId')
  String get userId;

  @BuiltValueField(wireName: r'items')
  BuiltList<CartGet200ResponseItemsInner> get items;

  @BuiltValueField(wireName: r'totalAmount')
  int get totalAmount;

  CartGet200Response._();

  factory CartGet200Response([void updates(CartGet200ResponseBuilder b)]) =
      _$CartGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CartGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CartGet200Response> get serializer =>
      _$CartGet200ResponseSerializer();
}

class _$CartGet200ResponseSerializer
    implements PrimitiveSerializer<CartGet200Response> {
  @override
  final Iterable<Type> types = const [CartGet200Response, _$CartGet200Response];

  @override
  final String wireName = r'CartGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CartGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'cartId';
    yield serializers.serialize(
      object.cartId,
      specifiedType: const FullType(String),
    );
    yield r'userId';
    yield serializers.serialize(
      object.userId,
      specifiedType: const FullType(String),
    );
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType:
          const FullType(BuiltList, [FullType(CartGet200ResponseItemsInner)]),
    );
    yield r'totalAmount';
    yield serializers.serialize(
      object.totalAmount,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CartGet200Response object, {
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
    required CartGet200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'cartId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.cartId = valueDes;
          break;
        case r'userId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.userId = valueDes;
          break;
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(CartGet200ResponseItemsInner)]),
          ) as BuiltList<CartGet200ResponseItemsInner>;
          result.items.replace(valueDes);
          break;
        case r'totalAmount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalAmount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CartGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CartGet200ResponseBuilder();
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
