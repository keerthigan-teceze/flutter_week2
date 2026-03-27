// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_id_put400_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const UsersIdPut400ResponseMessageEnum
    _$usersIdPut400ResponseMessageEnum_validationFailed =
    const UsersIdPut400ResponseMessageEnum._('validationFailed');

UsersIdPut400ResponseMessageEnum _$usersIdPut400ResponseMessageEnumValueOf(
    String name) {
  switch (name) {
    case 'validationFailed':
      return _$usersIdPut400ResponseMessageEnum_validationFailed;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<UsersIdPut400ResponseMessageEnum>
    _$usersIdPut400ResponseMessageEnumValues = BuiltSet<
        UsersIdPut400ResponseMessageEnum>(const <UsersIdPut400ResponseMessageEnum>[
  _$usersIdPut400ResponseMessageEnum_validationFailed,
]);

Serializer<UsersIdPut400ResponseMessageEnum>
    _$usersIdPut400ResponseMessageEnumSerializer =
    _$UsersIdPut400ResponseMessageEnumSerializer();

class _$UsersIdPut400ResponseMessageEnumSerializer
    implements PrimitiveSerializer<UsersIdPut400ResponseMessageEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'validationFailed': 'Validation failed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Validation failed': 'validationFailed',
  };

  @override
  final Iterable<Type> types = const <Type>[UsersIdPut400ResponseMessageEnum];
  @override
  final String wireName = 'UsersIdPut400ResponseMessageEnum';

  @override
  Object serialize(
          Serializers serializers, UsersIdPut400ResponseMessageEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  UsersIdPut400ResponseMessageEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      UsersIdPut400ResponseMessageEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$UsersIdPut400Response extends UsersIdPut400Response {
  @override
  final AnyOf anyOf;

  factory _$UsersIdPut400Response(
          [void Function(UsersIdPut400ResponseBuilder)? updates]) =>
      (UsersIdPut400ResponseBuilder()..update(updates))._build();

  _$UsersIdPut400Response._({required this.anyOf}) : super._();
  @override
  UsersIdPut400Response rebuild(
          void Function(UsersIdPut400ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersIdPut400ResponseBuilder toBuilder() =>
      UsersIdPut400ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersIdPut400Response && anyOf == other.anyOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, anyOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UsersIdPut400Response')
          ..add('anyOf', anyOf))
        .toString();
  }
}

class UsersIdPut400ResponseBuilder
    implements Builder<UsersIdPut400Response, UsersIdPut400ResponseBuilder> {
  _$UsersIdPut400Response? _$v;

  AnyOf? _anyOf;
  AnyOf? get anyOf => _$this._anyOf;
  set anyOf(AnyOf? anyOf) => _$this._anyOf = anyOf;

  UsersIdPut400ResponseBuilder() {
    UsersIdPut400Response._defaults(this);
  }

  UsersIdPut400ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _anyOf = $v.anyOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersIdPut400Response other) {
    _$v = other as _$UsersIdPut400Response;
  }

  @override
  void update(void Function(UsersIdPut400ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsersIdPut400Response build() => _build();

  _$UsersIdPut400Response _build() {
    final _$result = _$v ??
        _$UsersIdPut400Response._(
          anyOf: BuiltValueNullFieldError.checkNotNull(
              anyOf, r'UsersIdPut400Response', 'anyOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
