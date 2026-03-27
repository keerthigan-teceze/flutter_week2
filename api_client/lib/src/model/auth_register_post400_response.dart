//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:ecommerce_api_client/src/model/auth_register_post400_response_issues_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'auth_register_post400_response.g.dart';

/// AuthRegisterPost400Response
///
/// Properties:
/// * [message]
/// * [issues]
@BuiltValue()
abstract class AuthRegisterPost400Response
    implements
        Built<AuthRegisterPost400Response, AuthRegisterPost400ResponseBuilder> {
  @BuiltValueField(wireName: r'message')
  AuthRegisterPost400ResponseMessageEnum get message;
  // enum messageEnum {  Validation failed,  };

  @BuiltValueField(wireName: r'issues')
  BuiltList<AuthRegisterPost400ResponseIssuesInner> get issues;

  AuthRegisterPost400Response._();

  factory AuthRegisterPost400Response(
          [void updates(AuthRegisterPost400ResponseBuilder b)]) =
      _$AuthRegisterPost400Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AuthRegisterPost400ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AuthRegisterPost400Response> get serializer =>
      _$AuthRegisterPost400ResponseSerializer();
}

class _$AuthRegisterPost400ResponseSerializer
    implements PrimitiveSerializer<AuthRegisterPost400Response> {
  @override
  final Iterable<Type> types = const [
    AuthRegisterPost400Response,
    _$AuthRegisterPost400Response
  ];

  @override
  final String wireName = r'AuthRegisterPost400Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AuthRegisterPost400Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(AuthRegisterPost400ResponseMessageEnum),
    );
    yield r'issues';
    yield serializers.serialize(
      object.issues,
      specifiedType: const FullType(
          BuiltList, [FullType(AuthRegisterPost400ResponseIssuesInner)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AuthRegisterPost400Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AuthRegisterPost400ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(AuthRegisterPost400ResponseMessageEnum),
          ) as AuthRegisterPost400ResponseMessageEnum;
          result.message = valueDes;
          break;
        case r'issues':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(AuthRegisterPost400ResponseIssuesInner)]),
          ) as BuiltList<AuthRegisterPost400ResponseIssuesInner>;
          result.issues.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AuthRegisterPost400Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthRegisterPost400ResponseBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

class AuthRegisterPost400ResponseMessageEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'Validation failed')
  static const AuthRegisterPost400ResponseMessageEnum validationFailed =
      _$authRegisterPost400ResponseMessageEnum_validationFailed;

  static Serializer<AuthRegisterPost400ResponseMessageEnum> get serializer =>
      _$authRegisterPost400ResponseMessageEnumSerializer;

  const AuthRegisterPost400ResponseMessageEnum._(String name) : super(name);

  static BuiltSet<AuthRegisterPost400ResponseMessageEnum> get values =>
      _$authRegisterPost400ResponseMessageEnumValues;
  static AuthRegisterPost400ResponseMessageEnum valueOf(String name) =>
      _$authRegisterPost400ResponseMessageEnumValueOf(name);
}
