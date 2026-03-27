//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'webhooks_payments_mock_post500_response.g.dart';

/// WebhooksPaymentsMockPost500Response
///
/// Properties:
/// * [success]
/// * [error]
@BuiltValue()
abstract class WebhooksPaymentsMockPost500Response
    implements
        Built<WebhooksPaymentsMockPost500Response,
            WebhooksPaymentsMockPost500ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool get success;

  @BuiltValueField(wireName: r'error')
  String get error;

  WebhooksPaymentsMockPost500Response._();

  factory WebhooksPaymentsMockPost500Response(
          [void updates(WebhooksPaymentsMockPost500ResponseBuilder b)]) =
      _$WebhooksPaymentsMockPost500Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WebhooksPaymentsMockPost500ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WebhooksPaymentsMockPost500Response> get serializer =>
      _$WebhooksPaymentsMockPost500ResponseSerializer();
}

class _$WebhooksPaymentsMockPost500ResponseSerializer
    implements PrimitiveSerializer<WebhooksPaymentsMockPost500Response> {
  @override
  final Iterable<Type> types = const [
    WebhooksPaymentsMockPost500Response,
    _$WebhooksPaymentsMockPost500Response
  ];

  @override
  final String wireName = r'WebhooksPaymentsMockPost500Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WebhooksPaymentsMockPost500Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'success';
    yield serializers.serialize(
      object.success,
      specifiedType: const FullType(bool),
    );
    yield r'error';
    yield serializers.serialize(
      object.error,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    WebhooksPaymentsMockPost500Response object, {
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
    required WebhooksPaymentsMockPost500ResponseBuilder result,
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
        case r'error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.error = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WebhooksPaymentsMockPost500Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WebhooksPaymentsMockPost500ResponseBuilder();
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
