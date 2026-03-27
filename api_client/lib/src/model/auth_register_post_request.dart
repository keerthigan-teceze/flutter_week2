//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'auth_register_post_request.g.dart';

/// AuthRegisterPostRequest
///
/// Properties:
/// * [name]
/// * [email]
/// * [password]
/// * [role]
@BuiltValue()
abstract class AuthRegisterPostRequest
    implements Built<AuthRegisterPostRequest, AuthRegisterPostRequestBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'email')
  String get email;

  @BuiltValueField(wireName: r'password')
  String get password;

  @BuiltValueField(wireName: r'role')
  AuthRegisterPostRequestRoleEnum? get role;
  // enum roleEnum {  user,  admin,  };

  AuthRegisterPostRequest._();

  factory AuthRegisterPostRequest(
          [void updates(AuthRegisterPostRequestBuilder b)]) =
      _$AuthRegisterPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AuthRegisterPostRequestBuilder b) =>
      b..role = const AuthRegisterPostRequestRoleEnum._('user');

  @BuiltValueSerializer(custom: true)
  static Serializer<AuthRegisterPostRequest> get serializer =>
      _$AuthRegisterPostRequestSerializer();
}

class _$AuthRegisterPostRequestSerializer
    implements PrimitiveSerializer<AuthRegisterPostRequest> {
  @override
  final Iterable<Type> types = const [
    AuthRegisterPostRequest,
    _$AuthRegisterPostRequest
  ];

  @override
  final String wireName = r'AuthRegisterPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AuthRegisterPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
    yield r'password';
    yield serializers.serialize(
      object.password,
      specifiedType: const FullType(String),
    );
    if (object.role != null) {
      yield r'role';
      yield serializers.serialize(
        object.role,
        specifiedType: const FullType(AuthRegisterPostRequestRoleEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AuthRegisterPostRequest object, {
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
    required AuthRegisterPostRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.password = valueDes;
          break;
        case r'role':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AuthRegisterPostRequestRoleEnum),
          ) as AuthRegisterPostRequestRoleEnum;
          result.role = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AuthRegisterPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthRegisterPostRequestBuilder();
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

class AuthRegisterPostRequestRoleEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'user')
  static const AuthRegisterPostRequestRoleEnum user =
      _$authRegisterPostRequestRoleEnum_user;
  @BuiltValueEnumConst(wireName: r'admin')
  static const AuthRegisterPostRequestRoleEnum admin =
      _$authRegisterPostRequestRoleEnum_admin;

  static Serializer<AuthRegisterPostRequestRoleEnum> get serializer =>
      _$authRegisterPostRequestRoleEnumSerializer;

  const AuthRegisterPostRequestRoleEnum._(String name) : super(name);

  static BuiltSet<AuthRegisterPostRequestRoleEnum> get values =>
      _$authRegisterPostRequestRoleEnumValues;
  static AuthRegisterPostRequestRoleEnum valueOf(String name) =>
      _$authRegisterPostRequestRoleEnumValueOf(name);
}
