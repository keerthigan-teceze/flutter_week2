//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:ecommerce_api_client/src/model/users_get200_response_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'users_id_delete200_response.g.dart';

/// UsersIdDelete200Response
///
/// Properties:
/// * [message]
/// * [user]
@BuiltValue()
abstract class UsersIdDelete200Response
    implements
        Built<UsersIdDelete200Response, UsersIdDelete200ResponseBuilder> {
  @BuiltValueField(wireName: r'message')
  String get message;

  @BuiltValueField(wireName: r'user')
  UsersGet200ResponseInner get user;

  UsersIdDelete200Response._();

  factory UsersIdDelete200Response(
          [void updates(UsersIdDelete200ResponseBuilder b)]) =
      _$UsersIdDelete200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UsersIdDelete200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UsersIdDelete200Response> get serializer =>
      _$UsersIdDelete200ResponseSerializer();
}

class _$UsersIdDelete200ResponseSerializer
    implements PrimitiveSerializer<UsersIdDelete200Response> {
  @override
  final Iterable<Type> types = const [
    UsersIdDelete200Response,
    _$UsersIdDelete200Response
  ];

  @override
  final String wireName = r'UsersIdDelete200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UsersIdDelete200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
    yield r'user';
    yield serializers.serialize(
      object.user,
      specifiedType: const FullType(UsersGet200ResponseInner),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    UsersIdDelete200Response object, {
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
    required UsersIdDelete200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'user':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UsersGet200ResponseInner),
          ) as UsersGet200ResponseInner;
          result.user.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UsersIdDelete200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UsersIdDelete200ResponseBuilder();
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
