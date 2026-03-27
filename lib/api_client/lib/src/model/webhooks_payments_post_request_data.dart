//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:ecommerce_api_client/src/model/webhooks_payments_post_request_data_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'webhooks_payments_post_request_data.g.dart';

/// WebhooksPaymentsPostRequestData
///
/// Properties:
/// * [object]
@BuiltValue()
abstract class WebhooksPaymentsPostRequestData
    implements
        Built<WebhooksPaymentsPostRequestData,
            WebhooksPaymentsPostRequestDataBuilder> {
  @BuiltValueField(wireName: r'object')
  WebhooksPaymentsPostRequestDataObject get object;

  WebhooksPaymentsPostRequestData._();

  factory WebhooksPaymentsPostRequestData(
          [void updates(WebhooksPaymentsPostRequestDataBuilder b)]) =
      _$WebhooksPaymentsPostRequestData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WebhooksPaymentsPostRequestDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WebhooksPaymentsPostRequestData> get serializer =>
      _$WebhooksPaymentsPostRequestDataSerializer();
}

class _$WebhooksPaymentsPostRequestDataSerializer
    implements PrimitiveSerializer<WebhooksPaymentsPostRequestData> {
  @override
  final Iterable<Type> types = const [
    WebhooksPaymentsPostRequestData,
    _$WebhooksPaymentsPostRequestData
  ];

  @override
  final String wireName = r'WebhooksPaymentsPostRequestData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WebhooksPaymentsPostRequestData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'object';
    yield serializers.serialize(
      object.object,
      specifiedType: const FullType(WebhooksPaymentsPostRequestDataObject),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    WebhooksPaymentsPostRequestData object, {
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
    required WebhooksPaymentsPostRequestDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'object':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(WebhooksPaymentsPostRequestDataObject),
          ) as WebhooksPaymentsPostRequestDataObject;
          result.object.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WebhooksPaymentsPostRequestData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WebhooksPaymentsPostRequestDataBuilder();
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
