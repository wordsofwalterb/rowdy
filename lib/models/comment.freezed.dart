// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'comment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FFComment _$FFCommentFromJson(Map<String, dynamic> json) {
  return _FFComment.fromJson(json);
}

/// @nodoc
class _$FFCommentTearOff {
  const _$FFCommentTearOff();

  _FFComment call(
      {required String id,
      required String postId,
      required String authorId,
      required String authorName,
      required String authorAvatarUrl,
      required DateTime timestamp,
      int likeCount = 0,
      List<String> likedBy = const [],
      List<String> unlikedBy = const [],
      List<String> imageUrls = const [],
      String? body,
      int reportCount = 0,
      List<String> reportedBy = const []}) {
    return _FFComment(
      id: id,
      postId: postId,
      authorId: authorId,
      authorName: authorName,
      authorAvatarUrl: authorAvatarUrl,
      timestamp: timestamp,
      likeCount: likeCount,
      likedBy: likedBy,
      unlikedBy: unlikedBy,
      imageUrls: imageUrls,
      body: body,
      reportCount: reportCount,
      reportedBy: reportedBy,
    );
  }

  FFComment fromJson(Map<String, Object> json) {
    return FFComment.fromJson(json);
  }
}

/// @nodoc
const $FFComment = _$FFCommentTearOff();

/// @nodoc
mixin _$FFComment {
  String get id => throw _privateConstructorUsedError;
  String get postId => throw _privateConstructorUsedError;
  String get authorId => throw _privateConstructorUsedError;
  String get authorName => throw _privateConstructorUsedError;
  String get authorAvatarUrl => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  int get likeCount => throw _privateConstructorUsedError;
  List<String> get likedBy => throw _privateConstructorUsedError;
  List<String> get unlikedBy => throw _privateConstructorUsedError;
  List<String> get imageUrls => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;
  int get reportCount => throw _privateConstructorUsedError;
  List<String> get reportedBy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FFCommentCopyWith<FFComment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FFCommentCopyWith<$Res> {
  factory $FFCommentCopyWith(FFComment value, $Res Function(FFComment) then) =
      _$FFCommentCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String postId,
      String authorId,
      String authorName,
      String authorAvatarUrl,
      DateTime timestamp,
      int likeCount,
      List<String> likedBy,
      List<String> unlikedBy,
      List<String> imageUrls,
      String? body,
      int reportCount,
      List<String> reportedBy});
}

/// @nodoc
class _$FFCommentCopyWithImpl<$Res> implements $FFCommentCopyWith<$Res> {
  _$FFCommentCopyWithImpl(this._value, this._then);

  final FFComment _value;
  // ignore: unused_field
  final $Res Function(FFComment) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? postId = freezed,
    Object? authorId = freezed,
    Object? authorName = freezed,
    Object? authorAvatarUrl = freezed,
    Object? timestamp = freezed,
    Object? likeCount = freezed,
    Object? likedBy = freezed,
    Object? unlikedBy = freezed,
    Object? imageUrls = freezed,
    Object? body = freezed,
    Object? reportCount = freezed,
    Object? reportedBy = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      postId: postId == freezed
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      authorId: authorId == freezed
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      authorName: authorName == freezed
          ? _value.authorName
          : authorName // ignore: cast_nullable_to_non_nullable
              as String,
      authorAvatarUrl: authorAvatarUrl == freezed
          ? _value.authorAvatarUrl
          : authorAvatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      likeCount: likeCount == freezed
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      likedBy: likedBy == freezed
          ? _value.likedBy
          : likedBy // ignore: cast_nullable_to_non_nullable
              as List<String>,
      unlikedBy: unlikedBy == freezed
          ? _value.unlikedBy
          : unlikedBy // ignore: cast_nullable_to_non_nullable
              as List<String>,
      imageUrls: imageUrls == freezed
          ? _value.imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      reportCount: reportCount == freezed
          ? _value.reportCount
          : reportCount // ignore: cast_nullable_to_non_nullable
              as int,
      reportedBy: reportedBy == freezed
          ? _value.reportedBy
          : reportedBy // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$FFCommentCopyWith<$Res> implements $FFCommentCopyWith<$Res> {
  factory _$FFCommentCopyWith(
          _FFComment value, $Res Function(_FFComment) then) =
      __$FFCommentCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String postId,
      String authorId,
      String authorName,
      String authorAvatarUrl,
      DateTime timestamp,
      int likeCount,
      List<String> likedBy,
      List<String> unlikedBy,
      List<String> imageUrls,
      String? body,
      int reportCount,
      List<String> reportedBy});
}

/// @nodoc
class __$FFCommentCopyWithImpl<$Res> extends _$FFCommentCopyWithImpl<$Res>
    implements _$FFCommentCopyWith<$Res> {
  __$FFCommentCopyWithImpl(_FFComment _value, $Res Function(_FFComment) _then)
      : super(_value, (v) => _then(v as _FFComment));

  @override
  _FFComment get _value => super._value as _FFComment;

  @override
  $Res call({
    Object? id = freezed,
    Object? postId = freezed,
    Object? authorId = freezed,
    Object? authorName = freezed,
    Object? authorAvatarUrl = freezed,
    Object? timestamp = freezed,
    Object? likeCount = freezed,
    Object? likedBy = freezed,
    Object? unlikedBy = freezed,
    Object? imageUrls = freezed,
    Object? body = freezed,
    Object? reportCount = freezed,
    Object? reportedBy = freezed,
  }) {
    return _then(_FFComment(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      postId: postId == freezed
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      authorId: authorId == freezed
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      authorName: authorName == freezed
          ? _value.authorName
          : authorName // ignore: cast_nullable_to_non_nullable
              as String,
      authorAvatarUrl: authorAvatarUrl == freezed
          ? _value.authorAvatarUrl
          : authorAvatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      likeCount: likeCount == freezed
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      likedBy: likedBy == freezed
          ? _value.likedBy
          : likedBy // ignore: cast_nullable_to_non_nullable
              as List<String>,
      unlikedBy: unlikedBy == freezed
          ? _value.unlikedBy
          : unlikedBy // ignore: cast_nullable_to_non_nullable
              as List<String>,
      imageUrls: imageUrls == freezed
          ? _value.imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      reportCount: reportCount == freezed
          ? _value.reportCount
          : reportCount // ignore: cast_nullable_to_non_nullable
              as int,
      reportedBy: reportedBy == freezed
          ? _value.reportedBy
          : reportedBy // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_FFComment with DiagnosticableTreeMixin implements _FFComment {
  const _$_FFComment(
      {required this.id,
      required this.postId,
      required this.authorId,
      required this.authorName,
      required this.authorAvatarUrl,
      required this.timestamp,
      this.likeCount = 0,
      this.likedBy = const [],
      this.unlikedBy = const [],
      this.imageUrls = const [],
      this.body,
      this.reportCount = 0,
      this.reportedBy = const []});

  factory _$_FFComment.fromJson(Map<String, dynamic> json) =>
      _$_$_FFCommentFromJson(json);

  @override
  final String id;
  @override
  final String postId;
  @override
  final String authorId;
  @override
  final String authorName;
  @override
  final String authorAvatarUrl;
  @override
  final DateTime timestamp;
  @JsonKey(defaultValue: 0)
  @override
  final int likeCount;
  @JsonKey(defaultValue: const [])
  @override
  final List<String> likedBy;
  @JsonKey(defaultValue: const [])
  @override
  final List<String> unlikedBy;
  @JsonKey(defaultValue: const [])
  @override
  final List<String> imageUrls;
  @override
  final String? body;
  @JsonKey(defaultValue: 0)
  @override
  final int reportCount;
  @JsonKey(defaultValue: const [])
  @override
  final List<String> reportedBy;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FFComment(id: $id, postId: $postId, authorId: $authorId, authorName: $authorName, authorAvatarUrl: $authorAvatarUrl, timestamp: $timestamp, likeCount: $likeCount, likedBy: $likedBy, unlikedBy: $unlikedBy, imageUrls: $imageUrls, body: $body, reportCount: $reportCount, reportedBy: $reportedBy)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FFComment'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('postId', postId))
      ..add(DiagnosticsProperty('authorId', authorId))
      ..add(DiagnosticsProperty('authorName', authorName))
      ..add(DiagnosticsProperty('authorAvatarUrl', authorAvatarUrl))
      ..add(DiagnosticsProperty('timestamp', timestamp))
      ..add(DiagnosticsProperty('likeCount', likeCount))
      ..add(DiagnosticsProperty('likedBy', likedBy))
      ..add(DiagnosticsProperty('unlikedBy', unlikedBy))
      ..add(DiagnosticsProperty('imageUrls', imageUrls))
      ..add(DiagnosticsProperty('body', body))
      ..add(DiagnosticsProperty('reportCount', reportCount))
      ..add(DiagnosticsProperty('reportedBy', reportedBy));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FFComment &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.postId, postId) ||
                const DeepCollectionEquality().equals(other.postId, postId)) &&
            (identical(other.authorId, authorId) ||
                const DeepCollectionEquality()
                    .equals(other.authorId, authorId)) &&
            (identical(other.authorName, authorName) ||
                const DeepCollectionEquality()
                    .equals(other.authorName, authorName)) &&
            (identical(other.authorAvatarUrl, authorAvatarUrl) ||
                const DeepCollectionEquality()
                    .equals(other.authorAvatarUrl, authorAvatarUrl)) &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality()
                    .equals(other.timestamp, timestamp)) &&
            (identical(other.likeCount, likeCount) ||
                const DeepCollectionEquality()
                    .equals(other.likeCount, likeCount)) &&
            (identical(other.likedBy, likedBy) ||
                const DeepCollectionEquality()
                    .equals(other.likedBy, likedBy)) &&
            (identical(other.unlikedBy, unlikedBy) ||
                const DeepCollectionEquality()
                    .equals(other.unlikedBy, unlikedBy)) &&
            (identical(other.imageUrls, imageUrls) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrls, imageUrls)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.reportCount, reportCount) ||
                const DeepCollectionEquality()
                    .equals(other.reportCount, reportCount)) &&
            (identical(other.reportedBy, reportedBy) ||
                const DeepCollectionEquality()
                    .equals(other.reportedBy, reportedBy)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(postId) ^
      const DeepCollectionEquality().hash(authorId) ^
      const DeepCollectionEquality().hash(authorName) ^
      const DeepCollectionEquality().hash(authorAvatarUrl) ^
      const DeepCollectionEquality().hash(timestamp) ^
      const DeepCollectionEquality().hash(likeCount) ^
      const DeepCollectionEquality().hash(likedBy) ^
      const DeepCollectionEquality().hash(unlikedBy) ^
      const DeepCollectionEquality().hash(imageUrls) ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(reportCount) ^
      const DeepCollectionEquality().hash(reportedBy);

  @JsonKey(ignore: true)
  @override
  _$FFCommentCopyWith<_FFComment> get copyWith =>
      __$FFCommentCopyWithImpl<_FFComment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FFCommentToJson(this);
  }
}

abstract class _FFComment implements FFComment {
  const factory _FFComment(
      {required String id,
      required String postId,
      required String authorId,
      required String authorName,
      required String authorAvatarUrl,
      required DateTime timestamp,
      int likeCount,
      List<String> likedBy,
      List<String> unlikedBy,
      List<String> imageUrls,
      String? body,
      int reportCount,
      List<String> reportedBy}) = _$_FFComment;

  factory _FFComment.fromJson(Map<String, dynamic> json) =
      _$_FFComment.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get postId => throw _privateConstructorUsedError;
  @override
  String get authorId => throw _privateConstructorUsedError;
  @override
  String get authorName => throw _privateConstructorUsedError;
  @override
  String get authorAvatarUrl => throw _privateConstructorUsedError;
  @override
  DateTime get timestamp => throw _privateConstructorUsedError;
  @override
  int get likeCount => throw _privateConstructorUsedError;
  @override
  List<String> get likedBy => throw _privateConstructorUsedError;
  @override
  List<String> get unlikedBy => throw _privateConstructorUsedError;
  @override
  List<String> get imageUrls => throw _privateConstructorUsedError;
  @override
  String? get body => throw _privateConstructorUsedError;
  @override
  int get reportCount => throw _privateConstructorUsedError;
  @override
  List<String> get reportedBy => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FFCommentCopyWith<_FFComment> get copyWith =>
      throw _privateConstructorUsedError;
}
