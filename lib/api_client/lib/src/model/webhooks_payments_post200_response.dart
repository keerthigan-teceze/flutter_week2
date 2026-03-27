//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'webhooks_payments_post200_response.g.dart';

/// WebhooksPaymentsPost200Response
///
/// Properties:
/// * [success]
/// * [ok]
/// * [alreadyProcessed]
/// * [providerRef]
/// * [orderId]
/// * [orderStatus]
/// * [paymentStatus]
/// * [message]
@BuiltValue()
abstract class WebhooksPaymentsPost200Response
    implements
        Built<WebhooksPaymentsPost200Response,
            WebhooksPaymentsPost200ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool get success;

  @BuiltValueField(wireName: r'ok')
  bool get ok;

  @BuiltValueField(wireName: r'alreadyProcessed')
  bool get alreadyProcessed;

  @BuiltValueField(wireName: r'providerRef')
  String get providerRef;

  @BuiltValueField(wireName: r'orderId')
  String get orderId;

  @BuiltValueField(wireName: r'orderStatus')
  WebhooksPaymentsPost200ResponseOrderStatusEnum get orderStatus;
  // enum orderStatusEnum {  paid,  failed,  };

  @BuiltValueField(wireName: r'paymentStatus')
  WebhooksPaymentsPost200ResponsePaymentStatusEnum get paymentStatus;
  // enum paymentStatusEnum {  success,  failed,  };

  @BuiltValueField(wireName: r'message')
  String? get message;

  WebhooksPaymentsPost200Response._();

  factory WebhooksPaymentsPost200Response(
          [void updates(WebhooksPaymentsPost200ResponseBuilder b)]) =
      _$WebhooksPaymentsPost200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WebhooksPaymentsPost200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WebhooksPaymentsPost200Response> get serializer =>
      _$WebhooksPaymentsPost200ResponseSerializer();
}

class _$WebhooksPaymentsPost200ResponseSerializer
    implements PrimitiveSerializer<WebhooksPaymentsPost200Response> {
  @override
  final Iterable<Type> types = const [
    WebhooksPaymentsPost200Response,
    _$WebhooksPaymentsPost200Response
  ];

  @override
  final String wireName = r'WebhooksPaymentsPost200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WebhooksPaymentsPost200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'success';
    yield serializers.serialize(
      object.success,
      specifiedType: const FullType(bool),
    );
    yield r'ok';
    yield serializers.serialize(
      object.ok,
      specifiedType: const FullType(bool),
    );
    yield r'alreadyProcessed';
    yield serializers.serialize(
      object.alreadyProcessed,
      specifiedType: const FullType(bool),
    );
    yield r'providerRef';
    yield serializers.serialize(
      object.providerRef,
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
          const FullType(WebhooksPaymentsPost200ResponseOrderStatusEnum),
    );
    yield r'paymentStatus';
    yield serializers.serialize(
      object.paymentStatus,
      specifiedType:
          const FullType(WebhooksPaymentsPost200ResponsePaymentStatusEnum),
    );
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WebhooksPaymentsPost200Response object, {
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
    required WebhooksPaymentsPost200ResponseBuilder result,
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
        case r'ok':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.ok = valueDes;
          break;
        case r'alreadyProcessed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.alreadyProcessed = valueDes;
          break;
        case r'providerRef':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.providerRef = valueDes;
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
            specifiedType:
                const FullType(WebhooksPaymentsPost200ResponseOrderStatusEnum),
          ) as WebhooksPaymentsPost200ResponseOrderStatusEnum;
          result.orderStatus = valueDes;
          break;
        case r'paymentStatus':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                WebhooksPaymentsPost200ResponsePaymentStatusEnum),
          ) as WebhooksPaymentsPost200ResponsePaymentStatusEnum;
          result.paymentStatus = valueDes;
          break;
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
  WebhooksPaymentsPost200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WebhooksPaymentsPost200ResponseBuilder();
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

class WebhooksPaymentsPost200ResponseOrderStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'paid')
  static const WebhooksPaymentsPost200ResponseOrderStatusEnum paid =
      _$webhooksPaymentsPost200ResponseOrderStatusEnum_paid;
  @BuiltValueEnumConst(wireName: r'failed')
  static const WebhooksPaymentsPost200ResponseOrderStatusEnum failed =
      _$webhooksPaymentsPost200ResponseOrderStatusEnum_failed;

  static Serializer<WebhooksPaymentsPost200ResponseOrderStatusEnum>
      get serializer =>
          _$webhooksPaymentsPost200ResponseOrderStatusEnumSerializer;

  const WebhooksPaymentsPost200ResponseOrderStatusEnum._(String name)
      : super(name);

  static BuiltSet<WebhooksPaymentsPost200ResponseOrderStatusEnum> get values =>
      _$webhooksPaymentsPost200ResponseOrderStatusEnumValues;
  static WebhooksPaymentsPost200ResponseOrderStatusEnum valueOf(String name) =>
      _$webhooksPaymentsPost200ResponseOrderStatusEnumValueOf(name);
}

class WebhooksPaymentsPost200ResponsePaymentStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'success')
  static const WebhooksPaymentsPost200ResponsePaymentStatusEnum success =
      _$webhooksPaymentsPost200ResponsePaymentStatusEnum_success;
  @BuiltValueEnumConst(wireName: r'failed')
  static const WebhooksPaymentsPost200ResponsePaymentStatusEnum failed =
      _$webhooksPaymentsPost200ResponsePaymentStatusEnum_failed;

  static Serializer<WebhooksPaymentsPost200ResponsePaymentStatusEnum>
      get serializer =>
          _$webhooksPaymentsPost200ResponsePaymentStatusEnumSerializer;

  const WebhooksPaymentsPost200ResponsePaymentStatusEnum._(String name)
      : super(name);

  static BuiltSet<WebhooksPaymentsPost200ResponsePaymentStatusEnum>
      get values => _$webhooksPaymentsPost200ResponsePaymentStatusEnumValues;
  static WebhooksPaymentsPost200ResponsePaymentStatusEnum valueOf(
          String name) =>
      _$webhooksPaymentsPost200ResponsePaymentStatusEnumValueOf(name);
}
