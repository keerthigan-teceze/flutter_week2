//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'users_id_put_request.g.dart';

/// UsersIdPutRequest
///
/// Properties:
/// * [name]
/// * [email]
/// * [password]
/// * [role]
@BuiltValue()
abstract class UsersIdPutRequest
    implements Built<UsersIdPutRequest, UsersIdPutRequestBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'email')
  String? get email;

  @BuiltValueField(wireName: r'password')
  String? get password;

  @BuiltValueField(wireName: r'role')
  UsersIdPutRequestRoleEnum? get role;
  // enum roleEnum {  user,  admin,  };

  UsersIdPutRequest._();

  factory UsersIdPutRequest([void updates(UsersIdPutRequestBuilder b)]) =
      _$UsersIdPutRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UsersIdPutRequestBuilder b) =>
      b..role = const UsersIdPutRequestRoleEnum._('user');

  @BuiltValueSerializer(custom: true)
  static Serializer<UsersIdPutRequest> get serializer =>
      _$UsersIdPutRequestSerializer();
}

class _$UsersIdPutRequestSerializer
    implements PrimitiveSerializer<UsersIdPutRequest> {
  @override
  final Iterable<Type> types = const [UsersIdPutRequest, _$UsersIdPutRequest];

  @override
  final String wireName = r'UsersIdPutRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UsersIdPutRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType(String),
      );
    }
    if (object.password != null) {
      yield r'password';
      yield serializers.serialize(
        object.password,
        specifiedType: const FullType(String),
      );
    }
    if (object.role != null) {
      yield r'role';
      yield serializers.serialize(
        object.role,
        specifiedType: const FullType(UsersIdPutRequestRoleEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UsersIdPutRequest object, {
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
    required UsersIdPutRequestBuilder result,
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
            specifiedType: const FullType(UsersIdPutRequestRoleEnum),
          ) as UsersIdPutRequestRoleEnum;
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
  UsersIdPutRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UsersIdPutRequestBuilder();
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

class UsersIdPutRequestRoleEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'user')
  static const UsersIdPutRequestRoleEnum user =
      _$usersIdPutRequestRoleEnum_user;
  @BuiltValueEnumConst(wireName: r'admin')
  static const UsersIdPutRequestRoleEnum admin =
      _$usersIdPutRequestRoleEnum_admin;

  static Serializer<UsersIdPutRequestRoleEnum> get serializer =>
      _$usersIdPutRequestRoleEnumSerializer;

  const UsersIdPutRequestRoleEnum._(String name) : super(name);

  static BuiltSet<UsersIdPutRequestRoleEnum> get values =>
      _$usersIdPutRequestRoleEnumValues;
  static UsersIdPutRequestRoleEnum valueOf(String name) =>
      _$usersIdPutRequestRoleEnumValueOf(name);
}
