//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'auth_register_post400_response_issues_inner.g.dart';

/// AuthRegisterPost400ResponseIssuesInner
///
/// Properties:
/// * [path]
/// * [message]
@BuiltValue()
abstract class AuthRegisterPost400ResponseIssuesInner
    implements
        Built<AuthRegisterPost400ResponseIssuesInner,
            AuthRegisterPost400ResponseIssuesInnerBuilder> {
  @BuiltValueField(wireName: r'path')
  String get path;

  @BuiltValueField(wireName: r'message')
  String get message;

  AuthRegisterPost400ResponseIssuesInner._();

  factory AuthRegisterPost400ResponseIssuesInner(
          [void updates(AuthRegisterPost400ResponseIssuesInnerBuilder b)]) =
      _$AuthRegisterPost400ResponseIssuesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AuthRegisterPost400ResponseIssuesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AuthRegisterPost400ResponseIssuesInner> get serializer =>
      _$AuthRegisterPost400ResponseIssuesInnerSerializer();
}

class _$AuthRegisterPost400ResponseIssuesInnerSerializer
    implements PrimitiveSerializer<AuthRegisterPost400ResponseIssuesInner> {
  @override
  final Iterable<Type> types = const [
    AuthRegisterPost400ResponseIssuesInner,
    _$AuthRegisterPost400ResponseIssuesInner
  ];

  @override
  final String wireName = r'AuthRegisterPost400ResponseIssuesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AuthRegisterPost400ResponseIssuesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'path';
    yield serializers.serialize(
      object.path,
      specifiedType: const FullType(String),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AuthRegisterPost400ResponseIssuesInner object, {
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
    required AuthRegisterPost400ResponseIssuesInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'path':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.path = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AuthRegisterPost400ResponseIssuesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthRegisterPost400ResponseIssuesInnerBuilder();
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
