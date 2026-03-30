//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:ecommerce_api_client/src/model/webhooks_payments_post_request_data_object_metadata.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'webhooks_payments_post_request_data_object.g.dart';

/// WebhooksPaymentsPostRequestDataObject
///
/// Properties:
/// * [providerRef]
/// * [providerRef]
/// * [metadata]
@BuiltValue()
abstract class WebhooksPaymentsPostRequestDataObject
    implements
        Built<WebhooksPaymentsPostRequestDataObject,
            WebhooksPaymentsPostRequestDataObjectBuilder> {
  @BuiltValueField(wireName: r'providerRef')
  String? get providerRef;

  // @BuiltValueField(wireName: r'provider_ref')
  // String? get providerRef;

  @BuiltValueField(wireName: r'metadata')
  WebhooksPaymentsPostRequestDataObjectMetadata? get metadata;

  WebhooksPaymentsPostRequestDataObject._();

  factory WebhooksPaymentsPostRequestDataObject(
          [void updates(WebhooksPaymentsPostRequestDataObjectBuilder b)]) =
      _$WebhooksPaymentsPostRequestDataObject;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WebhooksPaymentsPostRequestDataObjectBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WebhooksPaymentsPostRequestDataObject> get serializer =>
      _$WebhooksPaymentsPostRequestDataObjectSerializer();
}

class _$WebhooksPaymentsPostRequestDataObjectSerializer
    implements PrimitiveSerializer<WebhooksPaymentsPostRequestDataObject> {
  @override
  final Iterable<Type> types = const [
    WebhooksPaymentsPostRequestDataObject,
    _$WebhooksPaymentsPostRequestDataObject
  ];

  @override
  final String wireName = r'WebhooksPaymentsPostRequestDataObject';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WebhooksPaymentsPostRequestDataObject object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.providerRef != null) {
      yield r'providerRef';
      yield serializers.serialize(
        object.providerRef,
        specifiedType: const FullType(String),
      );
    }
    if (object.providerRef != null) {
      yield r'provider_ref';
      yield serializers.serialize(
        object.providerRef,
        specifiedType: const FullType(String),
      );
    }
    if (object.metadata != null) {
      yield r'metadata';
      yield serializers.serialize(
        object.metadata,
        specifiedType:
            const FullType(WebhooksPaymentsPostRequestDataObjectMetadata),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WebhooksPaymentsPostRequestDataObject object, {
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
    required WebhooksPaymentsPostRequestDataObjectBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'providerRef':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.providerRef = valueDes;
          break;
        case r'provider_ref':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.providerRef = valueDes;
          break;
        case r'metadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(WebhooksPaymentsPostRequestDataObjectMetadata),
          ) as WebhooksPaymentsPostRequestDataObjectMetadata;
          result.metadata.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WebhooksPaymentsPostRequestDataObject deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WebhooksPaymentsPostRequestDataObjectBuilder();
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
