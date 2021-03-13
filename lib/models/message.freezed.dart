// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FFMessage _$FFMessageFromJson(Map<String, dynamic> json) {
  return _FFMessage.fromJson(json);
}

/// @nodoc
class _$FFMessageTearOff {
  const _$FFMessageTearOff();

  _FFMessage call(
      {required String id,
      required String channelId,
      required DateTime timestamp,
      dynamic reportCount = 0,
      required String authorId,
      dynamic heartCount = 0,
      String? body,
      List<String> imageUrls = const []}) {
    return _FFMessage(
      id: id,
      channelId: channelId,
      timestamp: timestamp,
      reportCount: reportCount,
      authorId: authorId,
      heartCount: heartCount,
      body: body,
      imageUrls: imageUrls,
    );
  }

  FFMessage fromJson(Map<String, Object> json) {
    return FFMessage.fromJson(json);
  }
}

/// @nodoc
const $FFMessage = _$FFMessageTearOff();

/// @nodoc
mixin _$FFMessage {
  String get id => throw _privateConstructorUsedError;
  String get channelId => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  dynamic get reportCount => throw _privateConstructorUsedError;
  String get authorId => throw _privateConstructorUsedError;
  dynamic get heartCount => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;
  List<String> get imageUrls => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FFMessageCopyWith<FFMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FFMessageCopyWith<$Res> {
  factory $FFMessageCopyWith(FFMessage value, $Res Function(FFMessage) then) =
      _$FFMessageCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String channelId,
      DateTime timestamp,
      dynamic reportCount,
      String authorId,
      dynamic heartCount,
      String? body,
      List<String> imageUrls});
}

/// @nodoc
class _$FFMessageCopyWithImpl<$Res> implements $FFMessageCopyWith<$Res> {
  _$FFMessageCopyWithImpl(this._value, this._then);

  final FFMessage _value;
  // ignore: unused_field
  final $Res Function(FFMessage) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? channelId = freezed,
    Object? timestamp = freezed,
    Object? reportCount = freezed,
    Object? authorId = freezed,
    Object? heartCount = freezed,
    Object? body = freezed,
    Object? imageUrls = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      channelId: channelId == freezed
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      reportCount: reportCount == freezed
          ? _value.reportCount
          : reportCount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      authorId: authorId == freezed
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      heartCount: heartCount == freezed
          ? _value.heartCount
          : heartCount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrls: imageUrls == freezed
          ? _value.imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$FFMessageCopyWith<$Res> implements $FFMessageCopyWith<$Res> {
  factory _$FFMessageCopyWith(
          _FFMessage value, $Res Function(_FFMessage) then) =
      __$FFMessageCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String channelId,
      DateTime timestamp,
      dynamic reportCount,
      String authorId,
      dynamic heartCount,
      String? body,
      List<String> imageUrls});
}

/// @nodoc
class __$FFMessageCopyWithImpl<$Res> extends _$FFMessageCopyWithImpl<$Res>
    implements _$FFMessageCopyWith<$Res> {
  __$FFMessageCopyWithImpl(_FFMessage _value, $Res Function(_FFMessage) _then)
      : super(_value, (v) => _then(v as _FFMessage));

  @override
  _FFMessage get _value => super._value as _FFMessage;

  @override
  $Res call({
    Object? id = freezed,
    Object? channelId = freezed,
    Object? timestamp = freezed,
    Object? reportCount = freezed,
    Object? authorId = freezed,
    Object? heartCount = freezed,
    Object? body = freezed,
    Object? imageUrls = freezed,
  }) {
    return _then(_FFMessage(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      channelId: channelId == freezed
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      reportCount: reportCount == freezed ? _value.reportCount : reportCount,
      authorId: authorId == freezed
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      heartCount: heartCount == freezed ? _value.heartCount : heartCount,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrls: imageUrls == freezed
          ? _value.imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_FFMessage with DiagnosticableTreeMixin implements _FFMessage {
  const _$_FFMessage(
      {required this.id,
      required this.channelId,
      required this.timestamp,
      this.reportCount = 0,
      required this.authorId,
      this.heartCount = 0,
      this.body,
      this.imageUrls = const []});

  factory _$_FFMessage.fromJson(Map<String, dynamic> json) =>
      _$_$_FFMessageFromJson(json);

  @override
  final String id;
  @override
  final String channelId;
  @override
  final DateTime timestamp;
  @JsonKey(defaultValue: 0)
  @override
  final dynamic reportCount;
  @override
  final String authorId;
  @JsonKey(defaultValue: 0)
  @override
  final dynamic heartCount;
  @override
  final String? body;
  @JsonKey(defaultValue: const [])
  @override
  final List<String> imageUrls;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FFMessage(id: $id, channelId: $channelId, timestamp: $timestamp, reportCount: $reportCount, authorId: $authorId, heartCount: $heartCount, body: $body, imageUrls: $imageUrls)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FFMessage'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('channelId', channelId))
      ..add(DiagnosticsProperty('timestamp', timestamp))
      ..add(DiagnosticsProperty('reportCount', reportCount))
      ..add(DiagnosticsProperty('authorId', authorId))
      ..add(DiagnosticsProperty('heartCount', heartCount))
      ..add(DiagnosticsProperty('body', body))
      ..add(DiagnosticsProperty('imageUrls', imageUrls));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FFMessage &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.channelId, channelId) ||
                const DeepCollectionEquality()
                    .equals(other.channelId, channelId)) &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality()
                    .equals(other.timestamp, timestamp)) &&
            (identical(other.reportCount, reportCount) ||
                const DeepCollectionEquality()
                    .equals(other.reportCount, reportCount)) &&
            (identical(other.authorId, authorId) ||
                const DeepCollectionEquality()
                    .equals(other.authorId, authorId)) &&
            (identical(other.heartCount, heartCount) ||
                const DeepCollectionEquality()
                    .equals(other.heartCount, heartCount)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.imageUrls, imageUrls) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrls, imageUrls)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(channelId) ^
      const DeepCollectionEquality().hash(timestamp) ^
      const DeepCollectionEquality().hash(reportCount) ^
      const DeepCollectionEquality().hash(authorId) ^
      const DeepCollectionEquality().hash(heartCount) ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(imageUrls);

  @JsonKey(ignore: true)
  @override
  _$FFMessageCopyWith<_FFMessage> get copyWith =>
      __$FFMessageCopyWithImpl<_FFMessage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FFMessageToJson(this);
  }
}

abstract class _FFMessage implements FFMessage {
  const factory _FFMessage(
      {required String id,
      required String channelId,
      required DateTime timestamp,
      dynamic reportCount,
      required String authorId,
      dynamic heartCount,
      String? body,
      List<String> imageUrls}) = _$_FFMessage;

  factory _FFMessage.fromJson(Map<String, dynamic> json) =
      _$_FFMessage.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get channelId => throw _privateConstructorUsedError;
  @override
  DateTime get timestamp => throw _privateConstructorUsedError;
  @override
  dynamic get reportCount => throw _privateConstructorUsedError;
  @override
  String get authorId => throw _privateConstructorUsedError;
  @override
  dynamic get heartCount => throw _privateConstructorUsedError;
  @override
  String? get body => throw _privateConstructorUsedError;
  @override
  List<String> get imageUrls => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FFMessageCopyWith<_FFMessage> get copyWith =>
      throw _privateConstructorUsedError;
}
