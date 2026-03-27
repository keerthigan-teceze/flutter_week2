// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_register_post409_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthRegisterPost409Response extends AuthRegisterPost409Response {
  @override
  final String message;

  factory _$AuthRegisterPost409Response(
          [void Function(AuthRegisterPost409ResponseBuilder)? updates]) =>
      (AuthRegisterPost409ResponseBuilder()..update(updates))._build();

  _$AuthRegisterPost409Response._({required this.message}) : super._();
  @override
  AuthRegisterPost409Response rebuild(
          void Function(AuthRegisterPost409ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthRegisterPost409ResponseBuilder toBuilder() =>
      AuthRegisterPost409ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthRegisterPost409Response && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AuthRegisterPost409Response')
          ..add('message', message))
        .toString();
  }
}

class AuthRegisterPost409ResponseBuilder
    implements
        Builder<AuthRegisterPost409Response,
            AuthRegisterPost409ResponseBuilder> {
  _$AuthRegisterPost409Response? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  AuthRegisterPost409ResponseBuilder() {
    AuthRegisterPost409Response._defaults(this);
  }

  AuthRegisterPost409ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthRegisterPost409Response other) {
    _$v = other as _$AuthRegisterPost409Response;
  }

  @override
  void update(void Function(AuthRegisterPost409ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthRegisterPost409Response build() => _build();

  _$AuthRegisterPost409Response _build() {
    final _$result = _$v ??
        _$AuthRegisterPost409Response._(
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'AuthRegisterPost409Response', 'message'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
