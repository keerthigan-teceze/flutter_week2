// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_register_post400_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AuthRegisterPost400ResponseMessageEnum
    _$authRegisterPost400ResponseMessageEnum_validationFailed =
    const AuthRegisterPost400ResponseMessageEnum._('validationFailed');

AuthRegisterPost400ResponseMessageEnum
    _$authRegisterPost400ResponseMessageEnumValueOf(String name) {
  switch (name) {
    case 'validationFailed':
      return _$authRegisterPost400ResponseMessageEnum_validationFailed;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AuthRegisterPost400ResponseMessageEnum>
    _$authRegisterPost400ResponseMessageEnumValues = BuiltSet<
        AuthRegisterPost400ResponseMessageEnum>(const <AuthRegisterPost400ResponseMessageEnum>[
  _$authRegisterPost400ResponseMessageEnum_validationFailed,
]);

Serializer<AuthRegisterPost400ResponseMessageEnum>
    _$authRegisterPost400ResponseMessageEnumSerializer =
    _$AuthRegisterPost400ResponseMessageEnumSerializer();

class _$AuthRegisterPost400ResponseMessageEnumSerializer
    implements PrimitiveSerializer<AuthRegisterPost400ResponseMessageEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'validationFailed': 'Validation failed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Validation failed': 'validationFailed',
  };

  @override
  final Iterable<Type> types = const <Type>[
    AuthRegisterPost400ResponseMessageEnum
  ];
  @override
  final String wireName = 'AuthRegisterPost400ResponseMessageEnum';

  @override
  Object serialize(Serializers serializers,
          AuthRegisterPost400ResponseMessageEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AuthRegisterPost400ResponseMessageEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AuthRegisterPost400ResponseMessageEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AuthRegisterPost400Response extends AuthRegisterPost400Response {
  @override
  final AuthRegisterPost400ResponseMessageEnum message;
  @override
  final BuiltList<AuthRegisterPost400ResponseIssuesInner> issues;

  factory _$AuthRegisterPost400Response(
          [void Function(AuthRegisterPost400ResponseBuilder)? updates]) =>
      (AuthRegisterPost400ResponseBuilder()..update(updates))._build();

  _$AuthRegisterPost400Response._({required this.message, required this.issues})
      : super._();
  @override
  AuthRegisterPost400Response rebuild(
          void Function(AuthRegisterPost400ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthRegisterPost400ResponseBuilder toBuilder() =>
      AuthRegisterPost400ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthRegisterPost400Response &&
        message == other.message &&
        issues == other.issues;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, issues.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AuthRegisterPost400Response')
          ..add('message', message)
          ..add('issues', issues))
        .toString();
  }
}

class AuthRegisterPost400ResponseBuilder
    implements
        Builder<AuthRegisterPost400Response,
            AuthRegisterPost400ResponseBuilder> {
  _$AuthRegisterPost400Response? _$v;

  AuthRegisterPost400ResponseMessageEnum? _message;
  AuthRegisterPost400ResponseMessageEnum? get message => _$this._message;
  set message(AuthRegisterPost400ResponseMessageEnum? message) =>
      _$this._message = message;

  ListBuilder<AuthRegisterPost400ResponseIssuesInner>? _issues;
  ListBuilder<AuthRegisterPost400ResponseIssuesInner> get issues =>
      _$this._issues ??= ListBuilder<AuthRegisterPost400ResponseIssuesInner>();
  set issues(ListBuilder<AuthRegisterPost400ResponseIssuesInner>? issues) =>
      _$this._issues = issues;

  AuthRegisterPost400ResponseBuilder() {
    AuthRegisterPost400Response._defaults(this);
  }

  AuthRegisterPost400ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _issues = $v.issues.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthRegisterPost400Response other) {
    _$v = other as _$AuthRegisterPost400Response;
  }

  @override
  void update(void Function(AuthRegisterPost400ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthRegisterPost400Response build() => _build();

  _$AuthRegisterPost400Response _build() {
    _$AuthRegisterPost400Response _$result;
    try {
      _$result = _$v ??
          _$AuthRegisterPost400Response._(
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'AuthRegisterPost400Response', 'message'),
            issues: issues.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'issues';
        issues.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'AuthRegisterPost400Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
