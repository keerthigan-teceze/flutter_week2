// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_id_delete200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UsersIdDelete200Response extends UsersIdDelete200Response {
  @override
  final String message;
  @override
  final UsersGet200ResponseInner user;

  factory _$UsersIdDelete200Response(
          [void Function(UsersIdDelete200ResponseBuilder)? updates]) =>
      (UsersIdDelete200ResponseBuilder()..update(updates))._build();

  _$UsersIdDelete200Response._({required this.message, required this.user})
      : super._();
  @override
  UsersIdDelete200Response rebuild(
          void Function(UsersIdDelete200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersIdDelete200ResponseBuilder toBuilder() =>
      UsersIdDelete200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersIdDelete200Response &&
        message == other.message &&
        user == other.user;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UsersIdDelete200Response')
          ..add('message', message)
          ..add('user', user))
        .toString();
  }
}

class UsersIdDelete200ResponseBuilder
    implements
        Builder<UsersIdDelete200Response, UsersIdDelete200ResponseBuilder> {
  _$UsersIdDelete200Response? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  UsersGet200ResponseInnerBuilder? _user;
  UsersGet200ResponseInnerBuilder get user =>
      _$this._user ??= UsersGet200ResponseInnerBuilder();
  set user(UsersGet200ResponseInnerBuilder? user) => _$this._user = user;

  UsersIdDelete200ResponseBuilder() {
    UsersIdDelete200Response._defaults(this);
  }

  UsersIdDelete200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _user = $v.user.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersIdDelete200Response other) {
    _$v = other as _$UsersIdDelete200Response;
  }

  @override
  void update(void Function(UsersIdDelete200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsersIdDelete200Response build() => _build();

  _$UsersIdDelete200Response _build() {
    _$UsersIdDelete200Response _$result;
    try {
      _$result = _$v ??
          _$UsersIdDelete200Response._(
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'UsersIdDelete200Response', 'message'),
            user: user.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        user.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'UsersIdDelete200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
