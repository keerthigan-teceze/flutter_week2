//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cart_items_post_request.g.dart';

/// CartItemsPostRequest
///
/// Properties:
/// * [productId]
/// * [quantity]
@BuiltValue()
abstract class CartItemsPostRequest
    implements Built<CartItemsPostRequest, CartItemsPostRequestBuilder> {
  @BuiltValueField(wireName: r'productId')
  String get productId;

  @BuiltValueField(wireName: r'quantity')
  int get quantity;

  CartItemsPostRequest._();

  factory CartItemsPostRequest([void updates(CartItemsPostRequestBuilder b)]) =
      _$CartItemsPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CartItemsPostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CartItemsPostRequest> get serializer =>
      _$CartItemsPostRequestSerializer();
}

class _$CartItemsPostRequestSerializer
    implements PrimitiveSerializer<CartItemsPostRequest> {
  @override
  final Iterable<Type> types = const [
    CartItemsPostRequest,
    _$CartItemsPostRequest
  ];

  @override
  final String wireName = r'CartItemsPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CartItemsPostRequest object, {
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
    CartItemsPostRequest object, {
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
    required CartItemsPostRequestBuilder result,
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
  CartItemsPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CartItemsPostRequestBuilder();
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
