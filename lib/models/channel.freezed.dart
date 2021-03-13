// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'channel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FFChannel _$FFChannelFromJson(Map<String, dynamic> json) {
  return _FFChannel.fromJson(json);
}

/// @nodoc
class _$FFChannelTearOff {
  const _$FFChannelTearOff();

  _FFChannel call(
      {required String id,
      required bool isPrivate,
      required bool isDM,
      required String channelName,
      required String channelImageUrl,
      String? lastMessageAuthorName,
      DateTime? lastMessageTimestamp,
      required String channelSnippet,
      required List<String> participantIds}) {
    return _FFChannel(
      id: id,
      isPrivate: isPrivate,
      isDM: isDM,
      channelName: channelName,
      channelImageUrl: channelImageUrl,
      lastMessageAuthorName: lastMessageAuthorName,
      lastMessageTimestamp: lastMessageTimestamp,
      channelSnippet: channelSnippet,
      participantIds: participantIds,
    );
  }

  FFChannel fromJson(Map<String, Object> json) {
    return FFChannel.fromJson(json);
  }
}

/// @nodoc
const $FFChannel = _$FFChannelTearOff();

/// @nodoc
mixin _$FFChannel {
  String get id => throw _privateConstructorUsedError;
  bool get isPrivate => throw _privateConstructorUsedError;
  bool get isDM => throw _privateConstructorUsedError;
  String get channelName => throw _privateConstructorUsedError;
  String get channelImageUrl => throw _privateConstructorUsedError;
  String? get lastMessageAuthorName => throw _privateConstructorUsedError;
  DateTime? get lastMessageTimestamp => throw _privateConstructorUsedError;
  String get channelSnippet => throw _privateConstructorUsedError;
  List<String> get participantIds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FFChannelCopyWith<FFChannel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FFChannelCopyWith<$Res> {
  factory $FFChannelCopyWith(FFChannel value, $Res Function(FFChannel) then) =
      _$FFChannelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      bool isPrivate,
      bool isDM,
      String channelName,
      String channelImageUrl,
      String? lastMessageAuthorName,
      DateTime? lastMessageTimestamp,
      String channelSnippet,
      List<String> participantIds});
}

/// @nodoc
class _$FFChannelCopyWithImpl<$Res> implements $FFChannelCopyWith<$Res> {
  _$FFChannelCopyWithImpl(this._value, this._then);

  final FFChannel _value;
  // ignore: unused_field
  final $Res Function(FFChannel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? isPrivate = freezed,
    Object? isDM = freezed,
    Object? channelName = freezed,
    Object? channelImageUrl = freezed,
    Object? lastMessageAuthorName = freezed,
    Object? lastMessageTimestamp = freezed,
    Object? channelSnippet = freezed,
    Object? participantIds = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isPrivate: isPrivate == freezed
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool,
      isDM: isDM == freezed
          ? _value.isDM
          : isDM // ignore: cast_nullable_to_non_nullable
              as bool,
      channelName: channelName == freezed
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String,
      channelImageUrl: channelImageUrl == freezed
          ? _value.channelImageUrl
          : channelImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      lastMessageAuthorName: lastMessageAuthorName == freezed
          ? _value.lastMessageAuthorName
          : lastMessageAuthorName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastMessageTimestamp: lastMessageTimestamp == freezed
          ? _value.lastMessageTimestamp
          : lastMessageTimestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      channelSnippet: channelSnippet == freezed
          ? _value.channelSnippet
          : channelSnippet // ignore: cast_nullable_to_non_nullable
              as String,
      participantIds: participantIds == freezed
          ? _value.participantIds
          : participantIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$FFChannelCopyWith<$Res> implements $FFChannelCopyWith<$Res> {
  factory _$FFChannelCopyWith(
          _FFChannel value, $Res Function(_FFChannel) then) =
      __$FFChannelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      bool isPrivate,
      bool isDM,
      String channelName,
      String channelImageUrl,
      String? lastMessageAuthorName,
      DateTime? lastMessageTimestamp,
      String channelSnippet,
      List<String> participantIds});
}

/// @nodoc
class __$FFChannelCopyWithImpl<$Res> extends _$FFChannelCopyWithImpl<$Res>
    implements _$FFChannelCopyWith<$Res> {
  __$FFChannelCopyWithImpl(_FFChannel _value, $Res Function(_FFChannel) _then)
      : super(_value, (v) => _then(v as _FFChannel));

  @override
  _FFChannel get _value => super._value as _FFChannel;

  @override
  $Res call({
    Object? id = freezed,
    Object? isPrivate = freezed,
    Object? isDM = freezed,
    Object? channelName = freezed,
    Object? channelImageUrl = freezed,
    Object? lastMessageAuthorName = freezed,
    Object? lastMessageTimestamp = freezed,
    Object? channelSnippet = freezed,
    Object? participantIds = freezed,
  }) {
    return _then(_FFChannel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isPrivate: isPrivate == freezed
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool,
      isDM: isDM == freezed
          ? _value.isDM
          : isDM // ignore: cast_nullable_to_non_nullable
              as bool,
      channelName: channelName == freezed
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String,
      channelImageUrl: channelImageUrl == freezed
          ? _value.channelImageUrl
          : channelImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      lastMessageAuthorName: lastMessageAuthorName == freezed
          ? _value.lastMessageAuthorName
          : lastMessageAuthorName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastMessageTimestamp: lastMessageTimestamp == freezed
          ? _value.lastMessageTimestamp
          : lastMessageTimestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      channelSnippet: channelSnippet == freezed
          ? _value.channelSnippet
          : channelSnippet // ignore: cast_nullable_to_non_nullable
              as String,
      participantIds: participantIds == freezed
          ? _value.participantIds
          : participantIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_FFChannel implements _FFChannel {
  _$_FFChannel(
      {required this.id,
      required this.isPrivate,
      required this.isDM,
      required this.channelName,
      required this.channelImageUrl,
      this.lastMessageAuthorName,
      this.lastMessageTimestamp,
      required this.channelSnippet,
      required this.participantIds});

  factory _$_FFChannel.fromJson(Map<String, dynamic> json) =>
      _$_$_FFChannelFromJson(json);

  @override
  final String id;
  @override
  final bool isPrivate;
  @override
  final bool isDM;
  @override
  final String channelName;
  @override
  final String channelImageUrl;
  @override
  final String? lastMessageAuthorName;
  @override
  final DateTime? lastMessageTimestamp;
  @override
  final String channelSnippet;
  @override
  final List<String> participantIds;

  @override
  String toString() {
    return 'FFChannel(id: $id, isPrivate: $isPrivate, isDM: $isDM, channelName: $channelName, channelImageUrl: $channelImageUrl, lastMessageAuthorName: $lastMessageAuthorName, lastMessageTimestamp: $lastMessageTimestamp, channelSnippet: $channelSnippet, participantIds: $participantIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FFChannel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.isPrivate, isPrivate) ||
                const DeepCollectionEquality()
                    .equals(other.isPrivate, isPrivate)) &&
            (identical(other.isDM, isDM) ||
                const DeepCollectionEquality().equals(other.isDM, isDM)) &&
            (identical(other.channelName, channelName) ||
                const DeepCollectionEquality()
                    .equals(other.channelName, channelName)) &&
            (identical(other.channelImageUrl, channelImageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.channelImageUrl, channelImageUrl)) &&
            (identical(other.lastMessageAuthorName, lastMessageAuthorName) ||
                const DeepCollectionEquality().equals(
                    other.lastMessageAuthorName, lastMessageAuthorName)) &&
            (identical(other.lastMessageTimestamp, lastMessageTimestamp) ||
                const DeepCollectionEquality().equals(
                    other.lastMessageTimestamp, lastMessageTimestamp)) &&
            (identical(other.channelSnippet, channelSnippet) ||
                const DeepCollectionEquality()
                    .equals(other.channelSnippet, channelSnippet)) &&
            (identical(other.participantIds, participantIds) ||
                const DeepCollectionEquality()
                    .equals(other.participantIds, participantIds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(isPrivate) ^
      const DeepCollectionEquality().hash(isDM) ^
      const DeepCollectionEquality().hash(channelName) ^
      const DeepCollectionEquality().hash(channelImageUrl) ^
      const DeepCollectionEquality().hash(lastMessageAuthorName) ^
      const DeepCollectionEquality().hash(lastMessageTimestamp) ^
      const DeepCollectionEquality().hash(channelSnippet) ^
      const DeepCollectionEquality().hash(participantIds);

  @JsonKey(ignore: true)
  @override
  _$FFChannelCopyWith<_FFChannel> get copyWith =>
      __$FFChannelCopyWithImpl<_FFChannel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FFChannelToJson(this);
  }
}

abstract class _FFChannel implements FFChannel {
  factory _FFChannel(
      {required String id,
      required bool isPrivate,
      required bool isDM,
      required String channelName,
      required String channelImageUrl,
      String? lastMessageAuthorName,
      DateTime? lastMessageTimestamp,
      required String channelSnippet,
      required List<String> participantIds}) = _$_FFChannel;

  factory _FFChannel.fromJson(Map<String, dynamic> json) =
      _$_FFChannel.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  bool get isPrivate => throw _privateConstructorUsedError;
  @override
  bool get isDM => throw _privateConstructorUsedError;
  @override
  String get channelName => throw _privateConstructorUsedError;
  @override
  String get channelImageUrl => throw _privateConstructorUsedError;
  @override
  String? get lastMessageAuthorName => throw _privateConstructorUsedError;
  @override
  DateTime? get lastMessageTimestamp => throw _privateConstructorUsedError;
  @override
  String get channelSnippet => throw _privateConstructorUsedError;
  @override
  List<String> get participantIds => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FFChannelCopyWith<_FFChannel> get copyWith =>
      throw _privateConstructorUsedError;
}
