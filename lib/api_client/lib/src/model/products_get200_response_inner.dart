//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'products_get200_response_inner.g.dart';

/// ProductsGet200ResponseInner
///
/// Properties:
/// * [name]
/// * [description]
/// * [price]
/// * [stock]
/// * [id]
@BuiltValue()
abstract class ProductsGet200ResponseInner
    implements
        Built<ProductsGet200ResponseInner, ProductsGet200ResponseInnerBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'description')
  String get description;

  @BuiltValueField(wireName: r'price')
  num get price;

  @BuiltValueField(wireName: r'stock')
  int get stock;

  @BuiltValueField(wireName: r'id')
  String get id;

  ProductsGet200ResponseInner._();

  factory ProductsGet200ResponseInner(
          [void updates(ProductsGet200ResponseInnerBuilder b)]) =
      _$ProductsGet200ResponseInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProductsGet200ResponseInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProductsGet200ResponseInner> get serializer =>
      _$ProductsGet200ResponseInnerSerializer();
}

class _$ProductsGet200ResponseInnerSerializer
    implements PrimitiveSerializer<ProductsGet200ResponseInner> {
  @override
  final Iterable<Type> types = const [
    ProductsGet200ResponseInner,
    _$ProductsGet200ResponseInner
  ];

  @override
  final String wireName = r'ProductsGet200ResponseInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProductsGet200ResponseInner object, {
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
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ProductsGet200ResponseInner object, {
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
    required ProductsGet200ResponseInnerBuilder result,
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
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProductsGet200ResponseInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProductsGet200ResponseInnerBuilder();
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
