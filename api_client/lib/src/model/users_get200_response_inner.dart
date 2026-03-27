//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'users_get200_response_inner.g.dart';

/// UsersGet200ResponseInner
///
/// Properties:
/// * [name]
/// * [email]
/// * [password]
/// * [id]
/// * [role]
/// * [createdAt]
@BuiltValue()
abstract class UsersGet200ResponseInner
    implements
        Built<UsersGet200ResponseInner, UsersGet200ResponseInnerBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'email')
  String get email;

  @BuiltValueField(wireName: r'password')
  String get password;

  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'role')
  UsersGet200ResponseInnerRoleEnum? get role;
  // enum roleEnum {  user,  admin,  };

  @BuiltValueField(wireName: r'createdAt')
  String? get createdAt;

  UsersGet200ResponseInner._();

  factory UsersGet200ResponseInner(
          [void updates(UsersGet200ResponseInnerBuilder b)]) =
      _$UsersGet200ResponseInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UsersGet200ResponseInnerBuilder b) =>
      b..role = const UsersGet200ResponseInnerRoleEnum._('user');

  @BuiltValueSerializer(custom: true)
  static Serializer<UsersGet200ResponseInner> get serializer =>
      _$UsersGet200ResponseInnerSerializer();
}

class _$UsersGet200ResponseInnerSerializer
    implements PrimitiveSerializer<UsersGet200ResponseInner> {
  @override
  final Iterable<Type> types = const [
    UsersGet200ResponseInner,
    _$UsersGet200ResponseInner
  ];

  @override
  final String wireName = r'UsersGet200ResponseInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UsersGet200ResponseInner object, {
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
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    if (object.role != null) {
      yield r'role';
      yield serializers.serialize(
        object.role,
        specifiedType: const FullType(UsersGet200ResponseInnerRoleEnum),
      );
    }
    if (object.createdAt != null) {
      yield r'createdAt';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UsersGet200ResponseInner object, {
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
    required UsersGet200ResponseInnerBuilder result,
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
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'role':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UsersGet200ResponseInnerRoleEnum),
          ) as UsersGet200ResponseInnerRoleEnum;
          result.role = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.createdAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UsersGet200ResponseInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UsersGet200ResponseInnerBuilder();
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

class UsersGet200ResponseInnerRoleEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'user')
  static const UsersGet200ResponseInnerRoleEnum user =
      _$usersGet200ResponseInnerRoleEnum_user;
  @BuiltValueEnumConst(wireName: r'admin')
  static const UsersGet200ResponseInnerRoleEnum admin =
      _$usersGet200ResponseInnerRoleEnum_admin;

  static Serializer<UsersGet200ResponseInnerRoleEnum> get serializer =>
      _$usersGet200ResponseInnerRoleEnumSerializer;

  const UsersGet200ResponseInnerRoleEnum._(String name) : super(name);

  static BuiltSet<UsersGet200ResponseInnerRoleEnum> get values =>
      _$usersGet200ResponseInnerRoleEnumValues;
  static UsersGet200ResponseInnerRoleEnum valueOf(String name) =>
      _$usersGet200ResponseInnerRoleEnumValueOf(name);
}
