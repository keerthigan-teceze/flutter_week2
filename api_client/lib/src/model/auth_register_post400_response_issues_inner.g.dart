// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_register_post400_response_issues_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthRegisterPost400ResponseIssuesInner
    extends AuthRegisterPost400ResponseIssuesInner {
  @override
  final String path;
  @override
  final String message;

  factory _$AuthRegisterPost400ResponseIssuesInner(
          [void Function(AuthRegisterPost400ResponseIssuesInnerBuilder)?
              updates]) =>
      (AuthRegisterPost400ResponseIssuesInnerBuilder()..update(updates))
          ._build();

  _$AuthRegisterPost400ResponseIssuesInner._(
      {required this.path, required this.message})
      : super._();
  @override
  AuthRegisterPost400ResponseIssuesInner rebuild(
          void Function(AuthRegisterPost400ResponseIssuesInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthRegisterPost400ResponseIssuesInnerBuilder toBuilder() =>
      AuthRegisterPost400ResponseIssuesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthRegisterPost400ResponseIssuesInner &&
        path == other.path &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'AuthRegisterPost400ResponseIssuesInner')
          ..add('path', path)
          ..add('message', message))
        .toString();
  }
}

class AuthRegisterPost400ResponseIssuesInnerBuilder
    implements
        Builder<AuthRegisterPost400ResponseIssuesInner,
            AuthRegisterPost400ResponseIssuesInnerBuilder> {
  _$AuthRegisterPost400ResponseIssuesInner? _$v;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  AuthRegisterPost400ResponseIssuesInnerBuilder() {
    AuthRegisterPost400ResponseIssuesInner._defaults(this);
  }

  AuthRegisterPost400ResponseIssuesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _path = $v.path;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthRegisterPost400ResponseIssuesInner other) {
    _$v = other as _$AuthRegisterPost400ResponseIssuesInner;
  }

  @override
  void update(
      void Function(AuthRegisterPost400ResponseIssuesInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthRegisterPost400ResponseIssuesInner build() => _build();

  _$AuthRegisterPost400ResponseIssuesInner _build() {
    final _$result = _$v ??
        _$AuthRegisterPost400ResponseIssuesInner._(
          path: BuiltValueNullFieldError.checkNotNull(
              path, r'AuthRegisterPost400ResponseIssuesInner', 'path'),
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'AuthRegisterPost400ResponseIssuesInner', 'message'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
