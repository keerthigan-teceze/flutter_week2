//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:ecommerce_api_client/src/model/webhooks_payments_post_request_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'webhooks_payments_post_request.g.dart';

/// WebhooksPaymentsPostRequest
///
/// Properties:
/// * [type]
/// * [data]
@BuiltValue()
abstract class WebhooksPaymentsPostRequest
    implements
        Built<WebhooksPaymentsPostRequest, WebhooksPaymentsPostRequestBuilder> {
  @BuiltValueField(wireName: r'type')
  WebhooksPaymentsPostRequestTypeEnum get type;
  // enum typeEnum {  payment_intent.succeeded,  payment_intent.failed,  };

  @BuiltValueField(wireName: r'data')
  WebhooksPaymentsPostRequestData get data;

  WebhooksPaymentsPostRequest._();

  factory WebhooksPaymentsPostRequest(
          [void updates(WebhooksPaymentsPostRequestBuilder b)]) =
      _$WebhooksPaymentsPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WebhooksPaymentsPostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WebhooksPaymentsPostRequest> get serializer =>
      _$WebhooksPaymentsPostRequestSerializer();
}

class _$WebhooksPaymentsPostRequestSerializer
    implements PrimitiveSerializer<WebhooksPaymentsPostRequest> {
  @override
  final Iterable<Type> types = const [
    WebhooksPaymentsPostRequest,
    _$WebhooksPaymentsPostRequest
  ];

  @override
  final String wireName = r'WebhooksPaymentsPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WebhooksPaymentsPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(WebhooksPaymentsPostRequestTypeEnum),
    );
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(WebhooksPaymentsPostRequestData),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    WebhooksPaymentsPostRequest object, {
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
    required WebhooksPaymentsPostRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(WebhooksPaymentsPostRequestTypeEnum),
          ) as WebhooksPaymentsPostRequestTypeEnum;
          result.type = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(WebhooksPaymentsPostRequestData),
          ) as WebhooksPaymentsPostRequestData;
          result.data.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WebhooksPaymentsPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WebhooksPaymentsPostRequestBuilder();
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

class WebhooksPaymentsPostRequestTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'payment_intent.succeeded')
  static const WebhooksPaymentsPostRequestTypeEnum succeeded =
      _$webhooksPaymentsPostRequestTypeEnum_succeeded;
  @BuiltValueEnumConst(wireName: r'payment_intent.failed')
  static const WebhooksPaymentsPostRequestTypeEnum failed =
      _$webhooksPaymentsPostRequestTypeEnum_failed;

  static Serializer<WebhooksPaymentsPostRequestTypeEnum> get serializer =>
      _$webhooksPaymentsPostRequestTypeEnumSerializer;

  const WebhooksPaymentsPostRequestTypeEnum._(String name) : super(name);

  static BuiltSet<WebhooksPaymentsPostRequestTypeEnum> get values =>
      _$webhooksPaymentsPostRequestTypeEnumValues;
  static WebhooksPaymentsPostRequestTypeEnum valueOf(String name) =>
      _$webhooksPaymentsPostRequestTypeEnumValueOf(name);
}
