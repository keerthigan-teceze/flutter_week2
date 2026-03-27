// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_register_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AuthRegisterPostRequestRoleEnum _$authRegisterPostRequestRoleEnum_user =
    const AuthRegisterPostRequestRoleEnum._('user');
const AuthRegisterPostRequestRoleEnum _$authRegisterPostRequestRoleEnum_admin =
    const AuthRegisterPostRequestRoleEnum._('admin');

AuthRegisterPostRequestRoleEnum _$authRegisterPostRequestRoleEnumValueOf(
    String name) {
  switch (name) {
    case 'user':
      return _$authRegisterPostRequestRoleEnum_user;
    case 'admin':
      return _$authRegisterPostRequestRoleEnum_admin;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AuthRegisterPostRequestRoleEnum>
    _$authRegisterPostRequestRoleEnumValues = BuiltSet<
        AuthRegisterPostRequestRoleEnum>(const <AuthRegisterPostRequestRoleEnum>[
  _$authRegisterPostRequestRoleEnum_user,
  _$authRegisterPostRequestRoleEnum_admin,
]);

Serializer<AuthRegisterPostRequestRoleEnum>
    _$authRegisterPostRequestRoleEnumSerializer =
    _$AuthRegisterPostRequestRoleEnumSerializer();

class _$AuthRegisterPostRequestRoleEnumSerializer
    implements PrimitiveSerializer<AuthRegisterPostRequestRoleEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'user': 'user',
    'admin': 'admin',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'user': 'user',
    'admin': 'admin',
  };

  @override
  final Iterable<Type> types = const <Type>[AuthRegisterPostRequestRoleEnum];
  @override
  final String wireName = 'AuthRegisterPostRequestRoleEnum';

  @override
  Object serialize(
          Serializers serializers, AuthRegisterPostRequestRoleEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AuthRegisterPostRequestRoleEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AuthRegisterPostRequestRoleEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AuthRegisterPostRequest extends AuthRegisterPostRequest {
  @override
  final String name;
  @override
  final String email;
  @override
  final String password;
  @override
  final AuthRegisterPostRequestRoleEnum? role;

  factory _$AuthRegisterPostRequest(
          [void Function(AuthRegisterPostRequestBuilder)? updates]) =>
      (AuthRegisterPostRequestBuilder()..update(updates))._build();

  _$AuthRegisterPostRequest._(
      {required this.name,
      required this.email,
      required this.password,
      this.role})
      : super._();
  @override
  AuthRegisterPostRequest rebuild(
          void Function(AuthRegisterPostRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthRegisterPostRequestBuilder toBuilder() =>
      AuthRegisterPostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthRegisterPostRequest &&
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
    return (newBuiltValueToStringHelper(r'AuthRegisterPostRequest')
          ..add('name', name)
          ..add('email', email)
          ..add('password', password)
          ..add('role', role))
        .toString();
  }
}

class AuthRegisterPostRequestBuilder
    implements
        Builder<AuthRegisterPostRequest, AuthRegisterPostRequestBuilder> {
  _$AuthRegisterPostRequest? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  AuthRegisterPostRequestRoleEnum? _role;
  AuthRegisterPostRequestRoleEnum? get role => _$this._role;
  set role(AuthRegisterPostRequestRoleEnum? role) => _$this._role = role;

  AuthRegisterPostRequestBuilder() {
    AuthRegisterPostRequest._defaults(this);
  }

  AuthRegisterPostRequestBuilder get _$this {
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
  void replace(AuthRegisterPostRequest other) {
    _$v = other as _$AuthRegisterPostRequest;
  }

  @override
  void update(void Function(AuthRegisterPostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthRegisterPostRequest build() => _build();

  _$AuthRegisterPostRequest _build() {
    final _$result = _$v ??
        _$AuthRegisterPostRequest._(
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'AuthRegisterPostRequest', 'name'),
          email: BuiltValueNullFieldError.checkNotNull(
              email, r'AuthRegisterPostRequest', 'email'),
          password: BuiltValueNullFieldError.checkNotNull(
              password, r'AuthRegisterPostRequest', 'password'),
          role: role,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
