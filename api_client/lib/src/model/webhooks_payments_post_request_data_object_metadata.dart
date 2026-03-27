//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'webhooks_payments_post_request_data_object_metadata.g.dart';

/// WebhooksPaymentsPostRequestDataObjectMetadata
///
/// Properties:
/// * [providerRef]
@BuiltValue()
abstract class WebhooksPaymentsPostRequestDataObjectMetadata
    implements
        Built<WebhooksPaymentsPostRequestDataObjectMetadata,
            WebhooksPaymentsPostRequestDataObjectMetadataBuilder> {
  @BuiltValueField(wireName: r'providerRef')
  String? get providerRef;

  WebhooksPaymentsPostRequestDataObjectMetadata._();

  factory WebhooksPaymentsPostRequestDataObjectMetadata(
          [void updates(
              WebhooksPaymentsPostRequestDataObjectMetadataBuilder b)]) =
      _$WebhooksPaymentsPostRequestDataObjectMetadata;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
          WebhooksPaymentsPostRequestDataObjectMetadataBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WebhooksPaymentsPostRequestDataObjectMetadata>
      get serializer =>
          _$WebhooksPaymentsPostRequestDataObjectMetadataSerializer();
}

class _$WebhooksPaymentsPostRequestDataObjectMetadataSerializer
    implements
        PrimitiveSerializer<WebhooksPaymentsPostRequestDataObjectMetadata> {
  @override
  final Iterable<Type> types = const [
    WebhooksPaymentsPostRequestDataObjectMetadata,
    _$WebhooksPaymentsPostRequestDataObjectMetadata
  ];

  @override
  final String wireName = r'WebhooksPaymentsPostRequestDataObjectMetadata';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WebhooksPaymentsPostRequestDataObjectMetadata object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.providerRef != null) {
      yield r'providerRef';
      yield serializers.serialize(
        object.providerRef,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WebhooksPaymentsPostRequestDataObjectMetadata object, {
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
    required WebhooksPaymentsPostRequestDataObjectMetadataBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WebhooksPaymentsPostRequestDataObjectMetadata deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WebhooksPaymentsPostRequestDataObjectMetadataBuilder();
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
