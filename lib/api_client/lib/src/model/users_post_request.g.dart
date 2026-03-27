// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const UsersPostRequestRoleEnum _$usersPostRequestRoleEnum_user =
    const UsersPostRequestRoleEnum._('user');
const UsersPostRequestRoleEnum _$usersPostRequestRoleEnum_admin =
    const UsersPostRequestRoleEnum._('admin');

UsersPostRequestRoleEnum _$usersPostRequestRoleEnumValueOf(String name) {
  switch (name) {
    case 'user':
      return _$usersPostRequestRoleEnum_user;
    case 'admin':
      return _$usersPostRequestRoleEnum_admin;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<UsersPostRequestRoleEnum> _$usersPostRequestRoleEnumValues =
    BuiltSet<UsersPostRequestRoleEnum>(const <UsersPostRequestRoleEnum>[
  _$usersPostRequestRoleEnum_user,
  _$usersPostRequestRoleEnum_admin,
]);

Serializer<UsersPostRequestRoleEnum> _$usersPostRequestRoleEnumSerializer =
    _$UsersPostRequestRoleEnumSerializer();

class _$UsersPostRequestRoleEnumSerializer
    implements PrimitiveSerializer<UsersPostRequestRoleEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'user': 'user',
    'admin': 'admin',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'user': 'user',
    'admin': 'admin',
  };

  @override
  final Iterable<Type> types = const <Type>[UsersPostRequestRoleEnum];
  @override
  final String wireName = 'UsersPostRequestRoleEnum';

  @override
  Object serialize(Serializers serializers, UsersPostRequestRoleEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  UsersPostRequestRoleEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      UsersPostRequestRoleEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$UsersPostRequest extends UsersPostRequest {
  @override
  final String name;
  @override
  final String email;
  @override
  final String password;
  @override
  final UsersPostRequestRoleEnum? role;

  factory _$UsersPostRequest(
          [void Function(UsersPostRequestBuilder)? updates]) =>
      (UsersPostRequestBuilder()..update(updates))._build();

  _$UsersPostRequest._(
      {required this.name,
      required this.email,
      required this.password,
      this.role})
      : super._();
  @override
  UsersPostRequest rebuild(void Function(UsersPostRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersPostRequestBuilder toBuilder() =>
      UsersPostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersPostRequest &&
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
    return (newBuiltValueToStringHelper(r'UsersPostRequest')
          ..add('name', name)
          ..add('email', email)
          ..add('password', password)
          ..add('role', role))
        .toString();
  }
}

class UsersPostRequestBuilder
    implements Builder<UsersPostRequest, UsersPostRequestBuilder> {
  _$UsersPostRequest? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  UsersPostRequestRoleEnum? _role;
  UsersPostRequestRoleEnum? get role => _$this._role;
  set role(UsersPostRequestRoleEnum? role) => _$this._role = role;

  UsersPostRequestBuilder() {
    UsersPostRequest._defaults(this);
  }

  UsersPostRequestBuilder get _$this {
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
  void replace(UsersPostRequest other) {
    _$v = other as _$UsersPostRequest;
  }

  @override
  void update(void Function(UsersPostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsersPostRequest build() => _build();

  _$UsersPostRequest _build() {
    final _$result = _$v ??
        _$UsersPostRequest._(
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'UsersPostRequest', 'name'),
          email: BuiltValueNullFieldError.checkNotNull(
              email, r'UsersPostRequest', 'email'),
          password: BuiltValueNullFieldError.checkNotNull(
              password, r'UsersPostRequest', 'password'),
          role: role,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
