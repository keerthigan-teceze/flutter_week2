// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_id_put_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const UsersIdPutRequestRoleEnum _$usersIdPutRequestRoleEnum_user =
    const UsersIdPutRequestRoleEnum._('user');
const UsersIdPutRequestRoleEnum _$usersIdPutRequestRoleEnum_admin =
    const UsersIdPutRequestRoleEnum._('admin');

UsersIdPutRequestRoleEnum _$usersIdPutRequestRoleEnumValueOf(String name) {
  switch (name) {
    case 'user':
      return _$usersIdPutRequestRoleEnum_user;
    case 'admin':
      return _$usersIdPutRequestRoleEnum_admin;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<UsersIdPutRequestRoleEnum> _$usersIdPutRequestRoleEnumValues =
    BuiltSet<UsersIdPutRequestRoleEnum>(const <UsersIdPutRequestRoleEnum>[
  _$usersIdPutRequestRoleEnum_user,
  _$usersIdPutRequestRoleEnum_admin,
]);

Serializer<UsersIdPutRequestRoleEnum> _$usersIdPutRequestRoleEnumSerializer =
    _$UsersIdPutRequestRoleEnumSerializer();

class _$UsersIdPutRequestRoleEnumSerializer
    implements PrimitiveSerializer<UsersIdPutRequestRoleEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'user': 'user',
    'admin': 'admin',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'user': 'user',
    'admin': 'admin',
  };

  @override
  final Iterable<Type> types = const <Type>[UsersIdPutRequestRoleEnum];
  @override
  final String wireName = 'UsersIdPutRequestRoleEnum';

  @override
  Object serialize(Serializers serializers, UsersIdPutRequestRoleEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  UsersIdPutRequestRoleEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      UsersIdPutRequestRoleEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$UsersIdPutRequest extends UsersIdPutRequest {
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? password;
  @override
  final UsersIdPutRequestRoleEnum? role;

  factory _$UsersIdPutRequest(
          [void Function(UsersIdPutRequestBuilder)? updates]) =>
      (UsersIdPutRequestBuilder()..update(updates))._build();

  _$UsersIdPutRequest._({this.name, this.email, this.password, this.role})
      : super._();
  @override
  UsersIdPutRequest rebuild(void Function(UsersIdPutRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersIdPutRequestBuilder toBuilder() =>
      UsersIdPutRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersIdPutRequest &&
        name == other.name &&
        email == other.email &&
        password == other.password &&
        role == other.role;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UsersIdPutRequest')
          ..add('name', name)
          ..add('email', email)
          ..add('password', password)
          ..add('role', role))
        .toString();
  }
}

class UsersIdPutRequestBuilder
    implements Builder<UsersIdPutRequest, UsersIdPutRequestBuilder> {
  _$UsersIdPutRequest? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  UsersIdPutRequestRoleEnum? _role;
  UsersIdPutRequestRoleEnum? get role => _$this._role;
  set role(UsersIdPutRequestRoleEnum? role) => _$this._role = role;

  UsersIdPutRequestBuilder() {
    UsersIdPutRequest._defaults(this);
  }

  UsersIdPutRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _email = $v.email;
      _password = $v.password;
      _role = $v.role;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersIdPutRequest other) {
    _$v = other as _$UsersIdPutRequest;
  }

  @override
  void update(void Function(UsersIdPutRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsersIdPutRequest build() => _build();

  _$UsersIdPutRequest _build() {
    final _$result = _$v ??
        _$UsersIdPutRequest._(
          name: name,
          email: email,
          password: password,
          role: role,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
