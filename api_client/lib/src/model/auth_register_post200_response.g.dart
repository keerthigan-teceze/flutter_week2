// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_register_post200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthRegisterPost200Response extends AuthRegisterPost200Response {
  @override
  final String accessToken;
  @override
  final String refreshToken;
  @override
  final AuthRegisterPost200ResponseUser user;

  factory _$AuthRegisterPost200Response(
          [void Function(AuthRegisterPost200ResponseBuilder)? updates]) =>
      (AuthRegisterPost200ResponseBuilder()..update(updates))._build();

  _$AuthRegisterPost200Response._(
      {required this.accessToken,
      required this.refreshToken,
      required this.user})
      : super._();
  @override
  AuthRegisterPost200Response rebuild(
          void Function(AuthRegisterPost200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthRegisterPost200ResponseBuilder toBuilder() =>
      AuthRegisterPost200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthRegisterPost200Response &&
        accessToken == other.accessToken &&
        refreshToken == other.refreshToken &&
        user == other.user;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accessToken.hashCode);
    _$hash = $jc(_$hash, refreshToken.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AuthRegisterPost200Response')
          ..add('accessToken', accessToken)
          ..add('refreshToken', refreshToken)
          ..add('user', user))
        .toString();
  }
}

class AuthRegisterPost200ResponseBuilder
    implements
        Builder<AuthRegisterPost200Response,
            AuthRegisterPost200ResponseBuilder> {
  _$AuthRegisterPost200Response? _$v;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  String? _refreshToken;
  String? get refreshToken => _$this._refreshToken;
  set refreshToken(String? refreshToken) => _$this._refreshToken = refreshToken;

  AuthRegisterPost200ResponseUserBuilder? _user;
  AuthRegisterPost200ResponseUserBuilder get user =>
      _$this._user ??= AuthRegisterPost200ResponseUserBuilder();
  set user(AuthRegisterPost200ResponseUserBuilder? user) => _$this._user = user;

  AuthRegisterPost200ResponseBuilder() {
    AuthRegisterPost200Response._defaults(this);
  }

  AuthRegisterPost200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessToken = $v.accessToken;
      _refreshToken = $v.refreshToken;
      _user = $v.user.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthRegisterPost200Response other) {
    _$v = other as _$AuthRegisterPost200Response;
  }

  @override
  void update(void Function(AuthRegisterPost200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthRegisterPost200Response build() => _build();

  _$AuthRegisterPost200Response _build() {
    _$AuthRegisterPost200Response _$result;
    try {
      _$result = _$v ??
          _$AuthRegisterPost200Response._(
            accessToken: BuiltValueNullFieldError.checkNotNull(
                accessToken, r'AuthRegisterPost200Response', 'accessToken'),
            refreshToken: BuiltValueNullFieldError.checkNotNull(
                refreshToken, r'AuthRegisterPost200Response', 'refreshToken'),
            user: user.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        user.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'AuthRegisterPost200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
