//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'auth_register_post409_response.g.dart';

/// AuthRegisterPost409Response
///
/// Properties:
/// * [message]
@BuiltValue()
abstract class AuthRegisterPost409Response
    implements
        Built<AuthRegisterPost409Response, AuthRegisterPost409ResponseBuilder> {
  @BuiltValueField(wireName: r'message')
  String get message;

  AuthRegisterPost409Response._();

  factory AuthRegisterPost409Response(
          [void updates(AuthRegisterPost409ResponseBuilder b)]) =
      _$AuthRegisterPost409Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AuthRegisterPost409ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AuthRegisterPost409Response> get serializer =>
      _$AuthRegisterPost409ResponseSerializer();
}

class _$AuthRegisterPost409ResponseSerializer
    implements PrimitiveSerializer<AuthRegisterPost409Response> {
  @override
  final Iterable<Type> types = const [
    AuthRegisterPost409Response,
    _$AuthRegisterPost409Response
  ];

  @override
  final String wireName = r'AuthRegisterPost409Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AuthRegisterPost409Response object, {
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
    AuthRegisterPost409Response object, {
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
    required AuthRegisterPost409ResponseBuilder result,
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
  AuthRegisterPost409Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthRegisterPost409ResponseBuilder();
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
