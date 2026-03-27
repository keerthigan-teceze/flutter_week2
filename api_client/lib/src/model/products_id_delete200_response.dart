//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'products_id_delete200_response.g.dart';

/// ProductsIdDelete200Response
///
/// Properties:
/// * [message]
@BuiltValue()
abstract class ProductsIdDelete200Response
    implements
        Built<ProductsIdDelete200Response, ProductsIdDelete200ResponseBuilder> {
  @BuiltValueField(wireName: r'message')
  String get message;

  ProductsIdDelete200Response._();

  factory ProductsIdDelete200Response(
          [void updates(ProductsIdDelete200ResponseBuilder b)]) =
      _$ProductsIdDelete200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProductsIdDelete200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProductsIdDelete200Response> get serializer =>
      _$ProductsIdDelete200ResponseSerializer();
}

class _$ProductsIdDelete200ResponseSerializer
    implements PrimitiveSerializer<ProductsIdDelete200Response> {
  @override
  final Iterable<Type> types = const [
    ProductsIdDelete200Response,
    _$ProductsIdDelete200Response
  ];

  @override
  final String wireName = r'ProductsIdDelete200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProductsIdDelete200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ProductsIdDelete200Response object, {
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
    required ProductsIdDelete200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProductsIdDelete200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProductsIdDelete200ResponseBuilder();
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
