//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:ecommerce_api_client/src/model/auth_register_post200_response_user.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'auth_register_post200_response.g.dart';

/// AuthRegisterPost200Response
///
/// Properties:
/// * [accessToken]
/// * [refreshToken]
/// * [user]
@BuiltValue()
abstract class AuthRegisterPost200Response
    implements
        Built<AuthRegisterPost200Response, AuthRegisterPost200ResponseBuilder> {
  @BuiltValueField(wireName: r'accessToken')
  String get accessToken;

  @BuiltValueField(wireName: r'refreshToken')
  String get refreshToken;

  @BuiltValueField(wireName: r'user')
  AuthRegisterPost200ResponseUser get user;

  AuthRegisterPost200Response._();

  factory AuthRegisterPost200Response(
          [void updates(AuthRegisterPost200ResponseBuilder b)]) =
      _$AuthRegisterPost200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AuthRegisterPost200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AuthRegisterPost200Response> get serializer =>
      _$AuthRegisterPost200ResponseSerializer();
}

class _$AuthRegisterPost200ResponseSerializer
    implements PrimitiveSerializer<AuthRegisterPost200Response> {
  @override
  final Iterable<Type> types = const [
    AuthRegisterPost200Response,
    _$AuthRegisterPost200Response
  ];

  @override
  final String wireName = r'AuthRegisterPost200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AuthRegisterPost200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'accessToken';
    yield serializers.serialize(
      object.accessToken,
      specifiedType: const FullType(String),
    );
    yield r'refreshToken';
    yield serializers.serialize(
      object.refreshToken,
      specifiedType: const FullType(String),
    );
    yield r'user';
    yield serializers.serialize(
      object.user,
      specifiedType: const FullType(AuthRegisterPost200ResponseUser),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AuthRegisterPost200Response object, {
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
    required AuthRegisterPost200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'accessToken':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.accessToken = valueDes;
          break;
        case r'refreshToken':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.refreshToken = valueDes;
          break;
        case r'user':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AuthRegisterPost200ResponseUser),
          ) as AuthRegisterPost200ResponseUser;
          result.user.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AuthRegisterPost200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthRegisterPost200ResponseBuilder();
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
