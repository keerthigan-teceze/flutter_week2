// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_register_post200_response_user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthRegisterPost200ResponseUser
    extends AuthRegisterPost200ResponseUser {
  @override
  final String id;
  @override
  final String name;
  @override
  final String email;
  @override
  final String role;

  factory _$AuthRegisterPost200ResponseUser(
          [void Function(AuthRegisterPost200ResponseUserBuilder)? updates]) =>
      (AuthRegisterPost200ResponseUserBuilder()..update(updates))._build();

  _$AuthRegisterPost200ResponseUser._(
      {required this.id,
      required this.name,
      required this.email,
      required this.role})
      : super._();
  @override
  AuthRegisterPost200ResponseUser rebuild(
          void Function(AuthRegisterPost200ResponseUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthRegisterPost200ResponseUserBuilder toBuilder() =>
      AuthRegisterPost200ResponseUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthRegisterPost200ResponseUser &&
        id == other.id &&
        name == other.name &&
        email == other.email &&
        role == other.role;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AuthRegisterPost200ResponseUser')
          ..add('id', id)
          ..add('name', name)
          ..add('email', email)
          ..add('role', role))
        .toString();
  }
}

class AuthRegisterPost200ResponseUserBuilder
    implements
        Builder<AuthRegisterPost200ResponseUser,
            AuthRegisterPost200ResponseUserBuilder> {
  _$AuthRegisterPost200ResponseUser? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _role;
  String? get role => _$this._role;
  set role(String? role) => _$this._role = role;

  AuthRegisterPost200ResponseUserBuilder() {
    AuthRegisterPost200ResponseUser._defaults(this);
  }

  AuthRegisterPost200ResponseUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _email = $v.email;
      _role = $v.role;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthRegisterPost200ResponseUser other) {
    _$v = other as _$AuthRegisterPost200ResponseUser;
  }

  @override
  void update(void Function(AuthRegisterPost200ResponseUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthRegisterPost200ResponseUser build() => _build();

  _$AuthRegisterPost200ResponseUser _build() {
    final _$result = _$v ??
        _$AuthRegisterPost200ResponseUser._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'AuthRegisterPost200ResponseUser', 'id'),
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'AuthRegisterPost200ResponseUser', 'name'),
          email: BuiltValueNullFieldError.checkNotNull(
              email, r'AuthRegisterPost200ResponseUser', 'email'),
          role: BuiltValueNullFieldError.checkNotNull(
              role, r'AuthRegisterPost200ResponseUser', 'role'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
