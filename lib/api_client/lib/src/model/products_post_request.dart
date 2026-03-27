//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'products_post_request.g.dart';

/// ProductsPostRequest
///
/// Properties:
/// * [name]
/// * [description]
/// * [price]
/// * [stock]
@BuiltValue()
abstract class ProductsPostRequest
    implements Built<ProductsPostRequest, ProductsPostRequestBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'description')
  String get description;

  @BuiltValueField(wireName: r'price')
  num get price;

  @BuiltValueField(wireName: r'stock')
  int get stock;

  ProductsPostRequest._();

  factory ProductsPostRequest([void updates(ProductsPostRequestBuilder b)]) =
      _$ProductsPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProductsPostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProductsPostRequest> get serializer =>
      _$ProductsPostRequestSerializer();
}

class _$ProductsPostRequestSerializer
    implements PrimitiveSerializer<ProductsPostRequest> {
  @override
  final Iterable<Type> types = const [
    ProductsPostRequest,
    _$ProductsPostRequest
  ];

  @override
  final String wireName = r'ProductsPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProductsPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    yield r'price';
    yield serializers.serialize(
      object.price,
      specifiedType: const FullType(num),
    );
    yield r'stock';
    yield serializers.serialize(
      object.stock,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ProductsPostRequest object, {
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
    required ProductsPostRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.price = valueDes;
          break;
        case r'stock':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.stock = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProductsPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProductsPostRequestBuilder();
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
