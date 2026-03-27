//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'webhooks_payments_mock_post_request.g.dart';

/// WebhooksPaymentsMockPostRequest
///
/// Properties:
/// * [orderId]
/// * [result]
@BuiltValue()
abstract class WebhooksPaymentsMockPostRequest
    implements
        Built<WebhooksPaymentsMockPostRequest,
            WebhooksPaymentsMockPostRequestBuilder> {
  @BuiltValueField(wireName: r'orderId')
  String get orderId;

  @BuiltValueField(wireName: r'result')
  WebhooksPaymentsMockPostRequestResultEnum get result;
  // enum resultEnum {  success,  failed,  };

  WebhooksPaymentsMockPostRequest._();

  factory WebhooksPaymentsMockPostRequest(
          [void updates(WebhooksPaymentsMockPostRequestBuilder b)]) =
      _$WebhooksPaymentsMockPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WebhooksPaymentsMockPostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WebhooksPaymentsMockPostRequest> get serializer =>
      _$WebhooksPaymentsMockPostRequestSerializer();
}

class _$WebhooksPaymentsMockPostRequestSerializer
    implements PrimitiveSerializer<WebhooksPaymentsMockPostRequest> {
  @override
  final Iterable<Type> types = const [
    WebhooksPaymentsMockPostRequest,
    _$WebhooksPaymentsMockPostRequest
  ];

  @override
  final String wireName = r'WebhooksPaymentsMockPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WebhooksPaymentsMockPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'orderId';
    yield serializers.serialize(
      object.orderId,
      specifiedType: const FullType(String),
    );
    yield r'result';
    yield serializers.serialize(
      object.result,
      specifiedType: const FullType(WebhooksPaymentsMockPostRequestResultEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    WebhooksPaymentsMockPostRequest object, {
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
    required WebhooksPaymentsMockPostRequestBuilder result,
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
        case r'result':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(WebhooksPaymentsMockPostRequestResultEnum),
          ) as WebhooksPaymentsMockPostRequestResultEnum;
          result.result = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WebhooksPaymentsMockPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WebhooksPaymentsMockPostRequestBuilder();
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

class WebhooksPaymentsMockPostRequestResultEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'success')
  static const WebhooksPaymentsMockPostRequestResultEnum success =
      _$webhooksPaymentsMockPostRequestResultEnum_success;
  @BuiltValueEnumConst(wireName: r'failed')
  static const WebhooksPaymentsMockPostRequestResultEnum failed =
      _$webhooksPaymentsMockPostRequestResultEnum_failed;

  static Serializer<WebhooksPaymentsMockPostRequestResultEnum> get serializer =>
      _$webhooksPaymentsMockPostRequestResultEnumSerializer;

  const WebhooksPaymentsMockPostRequestResultEnum._(String name) : super(name);

  static BuiltSet<WebhooksPaymentsMockPostRequestResultEnum> get values =>
      _$webhooksPaymentsMockPostRequestResultEnumValues;
  static WebhooksPaymentsMockPostRequestResultEnum valueOf(String name) =>
      _$webhooksPaymentsMockPostRequestResultEnumValueOf(name);
}
