//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'webhooks_payments_mock_post200_response.g.dart';

/// WebhooksPaymentsMockPost200Response
///
/// Properties:
/// * [success]
/// * [providerRef]
/// * [stripeSignature]
/// * [orderId]
/// * [orderStatus]
/// * [paymentStatus]
/// * [payload]
@BuiltValue()
abstract class WebhooksPaymentsMockPost200Response
    implements
        Built<WebhooksPaymentsMockPost200Response,
            WebhooksPaymentsMockPost200ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool get success;

  @BuiltValueField(wireName: r'providerRef')
  String get providerRef;

  @BuiltValueField(wireName: r'stripeSignature')
  String get stripeSignature;

  @BuiltValueField(wireName: r'orderId')
  String get orderId;

  @BuiltValueField(wireName: r'orderStatus')
  WebhooksPaymentsMockPost200ResponseOrderStatusEnum get orderStatus;
  // enum orderStatusEnum {  paid,  failed,  };

  @BuiltValueField(wireName: r'paymentStatus')
  WebhooksPaymentsMockPost200ResponsePaymentStatusEnum get paymentStatus;
  // enum paymentStatusEnum {  success,  failed,  };

  @BuiltValueField(wireName: r'payload')
  JsonObject? get payload;

  WebhooksPaymentsMockPost200Response._();

  factory WebhooksPaymentsMockPost200Response(
          [void updates(WebhooksPaymentsMockPost200ResponseBuilder b)]) =
      _$WebhooksPaymentsMockPost200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WebhooksPaymentsMockPost200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WebhooksPaymentsMockPost200Response> get serializer =>
      _$WebhooksPaymentsMockPost200ResponseSerializer();
}

class _$WebhooksPaymentsMockPost200ResponseSerializer
    implements PrimitiveSerializer<WebhooksPaymentsMockPost200Response> {
  @override
  final Iterable<Type> types = const [
    WebhooksPaymentsMockPost200Response,
    _$WebhooksPaymentsMockPost200Response
  ];

  @override
  final String wireName = r'WebhooksPaymentsMockPost200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WebhooksPaymentsMockPost200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'success';
    yield serializers.serialize(
      object.success,
      specifiedType: const FullType(bool),
    );
    yield r'providerRef';
    yield serializers.serialize(
      object.providerRef,
      specifiedType: const FullType(String),
    );
    yield r'stripeSignature';
    yield serializers.serialize(
      object.stripeSignature,
      specifiedType: const FullType(String),
    );
    yield r'orderId';
    yield serializers.serialize(
      object.orderId,
      specifiedType: const FullType(String),
    );
    yield r'orderStatus';
    yield serializers.serialize(
      object.orderStatus,
      specifiedType:
          const FullType(WebhooksPaymentsMockPost200ResponseOrderStatusEnum),
    );
    yield r'paymentStatus';
    yield serializers.serialize(
      object.paymentStatus,
      specifiedType:
          const FullType(WebhooksPaymentsMockPost200ResponsePaymentStatusEnum),
    );
    if (object.payload != null) {
      yield r'payload';
      yield serializers.serialize(
        object.payload,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WebhooksPaymentsMockPost200Response object, {
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
    required WebhooksPaymentsMockPost200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'success':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.success = valueDes;
          break;
        case r'providerRef':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.providerRef = valueDes;
          break;
        case r'stripeSignature':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.stripeSignature = valueDes;
          break;
        case r'orderId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.orderId = valueDes;
          break;
        case r'orderStatus':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                WebhooksPaymentsMockPost200ResponseOrderStatusEnum),
          ) as WebhooksPaymentsMockPost200ResponseOrderStatusEnum;
          result.orderStatus = valueDes;
          break;
        case r'paymentStatus':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                WebhooksPaymentsMockPost200ResponsePaymentStatusEnum),
          ) as WebhooksPaymentsMockPost200ResponsePaymentStatusEnum;
          result.paymentStatus = valueDes;
          break;
        case r'payload':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.payload = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WebhooksPaymentsMockPost200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WebhooksPaymentsMockPost200ResponseBuilder();
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

class WebhooksPaymentsMockPost200ResponseOrderStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'paid')
  static const WebhooksPaymentsMockPost200ResponseOrderStatusEnum paid =
      _$webhooksPaymentsMockPost200ResponseOrderStatusEnum_paid;
  @BuiltValueEnumConst(wireName: r'failed')
  static const WebhooksPaymentsMockPost200ResponseOrderStatusEnum failed =
      _$webhooksPaymentsMockPost200ResponseOrderStatusEnum_failed;

  static Serializer<WebhooksPaymentsMockPost200ResponseOrderStatusEnum>
      get serializer =>
          _$webhooksPaymentsMockPost200ResponseOrderStatusEnumSerializer;

  const WebhooksPaymentsMockPost200ResponseOrderStatusEnum._(String name)
      : super(name);

  static BuiltSet<WebhooksPaymentsMockPost200ResponseOrderStatusEnum>
      get values => _$webhooksPaymentsMockPost200ResponseOrderStatusEnumValues;
  static WebhooksPaymentsMockPost200ResponseOrderStatusEnum valueOf(
          String name) =>
      _$webhooksPaymentsMockPost200ResponseOrderStatusEnumValueOf(name);
}

class WebhooksPaymentsMockPost200ResponsePaymentStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'success')
  static const WebhooksPaymentsMockPost200ResponsePaymentStatusEnum success =
      _$webhooksPaymentsMockPost200ResponsePaymentStatusEnum_success;
  @BuiltValueEnumConst(wireName: r'failed')
  static const WebhooksPaymentsMockPost200ResponsePaymentStatusEnum failed =
      _$webhooksPaymentsMockPost200ResponsePaymentStatusEnum_failed;

  static Serializer<WebhooksPaymentsMockPost200ResponsePaymentStatusEnum>
      get serializer =>
          _$webhooksPaymentsMockPost200ResponsePaymentStatusEnumSerializer;

  const WebhooksPaymentsMockPost200ResponsePaymentStatusEnum._(String name)
      : super(name);

  static BuiltSet<WebhooksPaymentsMockPost200ResponsePaymentStatusEnum>
      get values =>
          _$webhooksPaymentsMockPost200ResponsePaymentStatusEnumValues;
  static WebhooksPaymentsMockPost200ResponsePaymentStatusEnum valueOf(
          String name) =>
      _$webhooksPaymentsMockPost200ResponsePaymentStatusEnumValueOf(name);
}
