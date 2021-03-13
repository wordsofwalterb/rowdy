// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FFNotification _$FFNotificationFromJson(Map<String, dynamic> json) {
  return _FFNotification.fromJson(json);
}

/// @nodoc
class _$FFNotificationTearOff {
  const _$FFNotificationTearOff();

  _FFNotification call(
      {String? title,
      String? body,
      String? imageUrl,
      required String timestamp}) {
    return _FFNotification(
      title: title,
      body: body,
      imageUrl: imageUrl,
      timestamp: timestamp,
    );
  }

  FFNotification fromJson(Map<String, Object> json) {
    return FFNotification.fromJson(json);
  }
}

/// @nodoc
const $FFNotification = _$FFNotificationTearOff();

/// @nodoc
mixin _$FFNotification {
  String? get title => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String get timestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FFNotificationCopyWith<FFNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FFNotificationCopyWith<$Res> {
  factory $FFNotificationCopyWith(
          FFNotification value, $Res Function(FFNotification) then) =
      _$FFNotificationCopyWithImpl<$Res>;
  $Res call({String? title, String? body, String? imageUrl, String timestamp});
}

/// @nodoc
class _$FFNotificationCopyWithImpl<$Res>
    implements $FFNotificationCopyWith<$Res> {
  _$FFNotificationCopyWithImpl(this._value, this._then);

  final FFNotification _value;
  // ignore: unused_field
  final $Res Function(FFNotification) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? body = freezed,
    Object? imageUrl = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$FFNotificationCopyWith<$Res>
    implements $FFNotificationCopyWith<$Res> {
  factory _$FFNotificationCopyWith(
          _FFNotification value, $Res Function(_FFNotification) then) =
      __$FFNotificationCopyWithImpl<$Res>;
  @override
  $Res call({String? title, String? body, String? imageUrl, String timestamp});
}

/// @nodoc
class __$FFNotificationCopyWithImpl<$Res>
    extends _$FFNotificationCopyWithImpl<$Res>
    implements _$FFNotificationCopyWith<$Res> {
  __$FFNotificationCopyWithImpl(
      _FFNotification _value, $Res Function(_FFNotification) _then)
      : super(_value, (v) => _then(v as _FFNotification));

  @override
  _FFNotification get _value => super._value as _FFNotification;

  @override
  $Res call({
    Object? title = freezed,
    Object? body = freezed,
    Object? imageUrl = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_FFNotification(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_FFNotification implements _FFNotification {
  _$_FFNotification(
      {this.title, this.body, this.imageUrl, required this.timestamp});

  factory _$_FFNotification.fromJson(Map<String, dynamic> json) =>
      _$_$_FFNotificationFromJson(json);

  @override
  final String? title;
  @override
  final String? body;
  @override
  final String? imageUrl;
  @override
  final String timestamp;

  @override
  String toString() {
    return 'FFNotification(title: $title, body: $body, imageUrl: $imageUrl, timestamp: $timestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FFNotification &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality()
                    .equals(other.timestamp, timestamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(timestamp);

  @JsonKey(ignore: true)
  @override
  _$FFNotificationCopyWith<_FFNotification> get copyWith =>
      __$FFNotificationCopyWithImpl<_FFNotification>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FFNotificationToJson(this);
  }
}

abstract class _FFNotification implements FFNotification {
  factory _FFNotification(
      {String? title,
      String? body,
      String? imageUrl,
      required String timestamp}) = _$_FFNotification;

  factory _FFNotification.fromJson(Map<String, dynamic> json) =
      _$_FFNotification.fromJson;

  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  String? get body => throw _privateConstructorUsedError;
  @override
  String? get imageUrl => throw _privateConstructorUsedError;
  @override
  String get timestamp => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FFNotificationCopyWith<_FFNotification> get copyWith =>
      throw _privateConstructorUsedError;
}
