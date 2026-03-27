//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:ecommerce_api_client/src/model/auth_register_post400_response.dart';
import 'package:built_collection/built_collection.dart';
import 'package:ecommerce_api_client/src/model/auth_register_post400_response_issues_inner.dart';
import 'package:ecommerce_api_client/src/model/auth_register_post409_response.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/any_of.dart';

part 'users_id_put400_response.g.dart';

/// UsersIdPut400Response
///
/// Properties:
/// * [message]
/// * [issues]
@BuiltValue()
abstract class UsersIdPut400Response
    implements Built<UsersIdPut400Response, UsersIdPut400ResponseBuilder> {
  /// Any Of [AuthRegisterPost400Response], [AuthRegisterPost409Response]
  AnyOf get anyOf;

  UsersIdPut400Response._();

  factory UsersIdPut400Response(
      [void updates(UsersIdPut400ResponseBuilder b)]) = _$UsersIdPut400Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UsersIdPut400ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UsersIdPut400Response> get serializer =>
      _$UsersIdPut400ResponseSerializer();
}

class _$UsersIdPut400ResponseSerializer
    implements PrimitiveSerializer<UsersIdPut400Response> {
  @override
  final Iterable<Type> types = const [
    UsersIdPut400Response,
    _$UsersIdPut400Response
  ];

  @override
  final String wireName = r'UsersIdPut400Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UsersIdPut400Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    UsersIdPut400Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final anyOf = object.anyOf;
    return serializers.serialize(anyOf,
        specifiedType: FullType(
            AnyOf, anyOf.valueTypes.map((type) => FullType(type)).toList()))!;
  }

  @override
  UsersIdPut400Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UsersIdPut400ResponseBuilder();
    Object? anyOfDataSrc;
    final targetType = const FullType(AnyOf, [
      FullType(AuthRegisterPost409Response),
      FullType(AuthRegisterPost400Response),
    ]);
    anyOfDataSrc = serialized;
    result.anyOf = serializers.deserialize(anyOfDataSrc,
        specifiedType: targetType) as AnyOf;
    return result.build();
  }
}

class UsersIdPut400ResponseMessageEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'Validation failed')
  static const UsersIdPut400ResponseMessageEnum validationFailed =
      _$usersIdPut400ResponseMessageEnum_validationFailed;

  static Serializer<UsersIdPut400ResponseMessageEnum> get serializer =>
      _$usersIdPut400ResponseMessageEnumSerializer;

  const UsersIdPut400ResponseMessageEnum._(String name) : super(name);

  static BuiltSet<UsersIdPut400ResponseMessageEnum> get values =>
      _$usersIdPut400ResponseMessageEnumValues;
  static UsersIdPut400ResponseMessageEnum valueOf(String name) =>
      _$usersIdPut400ResponseMessageEnumValueOf(name);
}
