//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'users_post_request.g.dart';

/// UsersPostRequest
///
/// Properties:
/// * [name]
/// * [email]
/// * [password]
/// * [role]
@BuiltValue()
abstract class UsersPostRequest
    implements Built<UsersPostRequest, UsersPostRequestBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'email')
  String get email;

  @BuiltValueField(wireName: r'password')
  String get password;

  @BuiltValueField(wireName: r'role')
  UsersPostRequestRoleEnum? get role;
  // enum roleEnum {  user,  admin,  };

  UsersPostRequest._();

  factory UsersPostRequest([void updates(UsersPostRequestBuilder b)]) =
      _$UsersPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UsersPostRequestBuilder b) =>
      b..role = const UsersPostRequestRoleEnum._('user');

  @BuiltValueSerializer(custom: true)
  static Serializer<UsersPostRequest> get serializer =>
      _$UsersPostRequestSerializer();
}

class _$UsersPostRequestSerializer
    implements PrimitiveSerializer<UsersPostRequest> {
  @override
  final Iterable<Type> types = const [UsersPostRequest, _$UsersPostRequest];

  @override
  final String wireName = r'UsersPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UsersPostRequest object, {
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
        specifiedType: const FullType(UsersPostRequestRoleEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UsersPostRequest object, {
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
    required UsersPostRequestBuilder result,
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
            specifiedType: const FullType(UsersPostRequestRoleEnum),
          ) as UsersPostRequestRoleEnum;
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
  UsersPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UsersPostRequestBuilder();
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

class UsersPostRequestRoleEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'user')
  static const UsersPostRequestRoleEnum user = _$usersPostRequestRoleEnum_user;
  @BuiltValueEnumConst(wireName: r'admin')
  static const UsersPostRequestRoleEnum admin =
      _$usersPostRequestRoleEnum_admin;

  static Serializer<UsersPostRequestRoleEnum> get serializer =>
      _$usersPostRequestRoleEnumSerializer;

  const UsersPostRequestRoleEnum._(String name) : super(name);

  static BuiltSet<UsersPostRequestRoleEnum> get values =>
      _$usersPostRequestRoleEnumValues;
  static UsersPostRequestRoleEnum valueOf(String name) =>
      _$usersPostRequestRoleEnumValueOf(name);
}
