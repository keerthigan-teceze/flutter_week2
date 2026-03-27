// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_get200_response_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const UsersGet200ResponseInnerRoleEnum _$usersGet200ResponseInnerRoleEnum_user =
    const UsersGet200ResponseInnerRoleEnum._('user');
const UsersGet200ResponseInnerRoleEnum
    _$usersGet200ResponseInnerRoleEnum_admin =
    const UsersGet200ResponseInnerRoleEnum._('admin');

UsersGet200ResponseInnerRoleEnum _$usersGet200ResponseInnerRoleEnumValueOf(
    String name) {
  switch (name) {
    case 'user':
      return _$usersGet200ResponseInnerRoleEnum_user;
    case 'admin':
      return _$usersGet200ResponseInnerRoleEnum_admin;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<UsersGet200ResponseInnerRoleEnum>
    _$usersGet200ResponseInnerRoleEnumValues = BuiltSet<
        UsersGet200ResponseInnerRoleEnum>(const <UsersGet200ResponseInnerRoleEnum>[
  _$usersGet200ResponseInnerRoleEnum_user,
  _$usersGet200ResponseInnerRoleEnum_admin,
]);

Serializer<UsersGet200ResponseInnerRoleEnum>
    _$usersGet200ResponseInnerRoleEnumSerializer =
    _$UsersGet200ResponseInnerRoleEnumSerializer();

class _$UsersGet200ResponseInnerRoleEnumSerializer
    implements PrimitiveSerializer<UsersGet200ResponseInnerRoleEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'user': 'user',
    'admin': 'admin',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'user': 'user',
    'admin': 'admin',
  };

  @override
  final Iterable<Type> types = const <Type>[UsersGet200ResponseInnerRoleEnum];
  @override
  final String wireName = 'UsersGet200ResponseInnerRoleEnum';

  @override
  Object serialize(
          Serializers serializers, UsersGet200ResponseInnerRoleEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  UsersGet200ResponseInnerRoleEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      UsersGet200ResponseInnerRoleEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$UsersGet200ResponseInner extends UsersGet200ResponseInner {
  @override
  final String name;
  @override
  final String email;
  @override
  final String password;
  @override
  final String id;
  @override
  final UsersGet200ResponseInnerRoleEnum? role;
  @override
  final String? createdAt;

  factory _$UsersGet200ResponseInner(
          [void Function(UsersGet200ResponseInnerBuilder)? updates]) =>
      (UsersGet200ResponseInnerBuilder()..update(updates))._build();

  _$UsersGet200ResponseInner._(
      {required this.name,
      required this.email,
      required this.password,
      required this.id,
      this.role,
      this.createdAt})
      : super._();
  @override
  UsersGet200ResponseInner rebuild(
          void Function(UsersGet200ResponseInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersGet200ResponseInnerBuilder toBuilder() =>
      UsersGet200ResponseInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersGet200ResponseInner &&
        name == other.name &&
        email == other.email &&
        password == other.password &&
        id == other.id &&
        role == other.role &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UsersGet200ResponseInner')
          ..add('name', name)
          ..add('email', email)
          ..add('password', password)
          ..add('id', id)
          ..add('role', role)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class UsersGet200ResponseInnerBuilder
    implements
        Builder<UsersGet200ResponseInner, UsersGet200ResponseInnerBuilder> {
  _$UsersGet200ResponseInner? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  UsersGet200ResponseInnerRoleEnum? _role;
  UsersGet200ResponseInnerRoleEnum? get role => _$this._role;
  set role(UsersGet200ResponseInnerRoleEnum? role) => _$this._role = role;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  UsersGet200ResponseInnerBuilder() {
    UsersGet200ResponseInner._defaults(this);
  }

  UsersGet200ResponseInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _email = $v.email;
      _password = $v.password;
      _id = $v.id;
      _role = $v.role;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersGet200ResponseInner other) {
    _$v = other as _$UsersGet200ResponseInner;
  }

  @override
  void update(void Function(UsersGet200ResponseInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsersGet200ResponseInner build() => _build();

  _$UsersGet200ResponseInner _build() {
    final _$result = _$v ??
        _$UsersGet200ResponseInner._(
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'UsersGet200ResponseInner', 'name'),
          email: BuiltValueNullFieldError.checkNotNull(
              email, r'UsersGet200ResponseInner', 'email'),
          password: BuiltValueNullFieldError.checkNotNull(
              password, r'UsersGet200ResponseInner', 'password'),
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'UsersGet200ResponseInner', 'id'),
          role: role,
          createdAt: createdAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
