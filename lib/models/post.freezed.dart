// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FFPost _$FFPostFromJson(Map<String, dynamic> json) {
  return _FFPost.fromJson(json);
}

/// @nodoc
class _$FFPostTearOff {
  const _$FFPostTearOff();

  _FFPost call(
      {required String id,
      required String authorId,
      required DateTime postTime,
      List<String> imageUrls = const [],
      List<String> unlikedBy = const [],
      List<String> likedBy = const [],
      String? body,
      int commentCount = 0,
      int likeCount = 0}) {
    return _FFPost(
      id: id,
      authorId: authorId,
      postTime: postTime,
      imageUrls: imageUrls,
      unlikedBy: unlikedBy,
      likedBy: likedBy,
      body: body,
      commentCount: commentCount,
      likeCount: likeCount,
    );
  }

  FFPost fromJson(Map<String, Object> json) {
    return FFPost.fromJson(json);
  }
}

/// @nodoc
const $FFPost = _$FFPostTearOff();

/// @nodoc
mixin _$FFPost {
  /// ID is generated from Firebase UID
  String get id => throw _privateConstructorUsedError;

  /// The Id of whoever made the post
  String get authorId =>
      throw _privateConstructorUsedError; // /// The full name of whoever made the post
// required String authorName,
  /// The time that the post was made
  DateTime get postTime => throw _privateConstructorUsedError;

  /// Url to an image, if the post has an image.
  List<String> get imageUrls => throw _privateConstructorUsedError;

  /// ID's of those who have liked the post then disliked.
  /// Once added an ID isn't removed.
  /// It is here so double likes don't send two notications.
  List<String> get unlikedBy =>
      throw _privateConstructorUsedError; // required String authorAvatarUrl,
  /// Id's of those who liked post
  List<String> get likedBy => throw _privateConstructorUsedError;

  /// The main text of the post, if it is included.
  String? get body => throw _privateConstructorUsedError;

  /// Used to track number of comments made
  int get commentCount => throw _privateConstructorUsedError;

  /// Used to track number of likes
  int get likeCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FFPostCopyWith<FFPost> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FFPostCopyWith<$Res> {
  factory $FFPostCopyWith(FFPost value, $Res Function(FFPost) then) =
      _$FFPostCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String authorId,
      DateTime postTime,
      List<String> imageUrls,
      List<String> unlikedBy,
      List<String> likedBy,
      String? body,
      int commentCount,
      int likeCount});
}

/// @nodoc
class _$FFPostCopyWithImpl<$Res> implements $FFPostCopyWith<$Res> {
  _$FFPostCopyWithImpl(this._value, this._then);

  final FFPost _value;
  // ignore: unused_field
  final $Res Function(FFPost) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? authorId = freezed,
    Object? postTime = freezed,
    Object? imageUrls = freezed,
    Object? unlikedBy = freezed,
    Object? likedBy = freezed,
    Object? body = freezed,
    Object? commentCount = freezed,
    Object? likeCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      authorId: authorId == freezed
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      postTime: postTime == freezed
          ? _value.postTime
          : postTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      imageUrls: imageUrls == freezed
          ? _value.imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      unlikedBy: unlikedBy == freezed
          ? _value.unlikedBy
          : unlikedBy // ignore: cast_nullable_to_non_nullable
              as List<String>,
      likedBy: likedBy == freezed
          ? _value.likedBy
          : likedBy // ignore: cast_nullable_to_non_nullable
              as List<String>,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      commentCount: commentCount == freezed
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int,
      likeCount: likeCount == freezed
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$FFPostCopyWith<$Res> implements $FFPostCopyWith<$Res> {
  factory _$FFPostCopyWith(_FFPost value, $Res Function(_FFPost) then) =
      __$FFPostCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String authorId,
      DateTime postTime,
      List<String> imageUrls,
      List<String> unlikedBy,
      List<String> likedBy,
      String? body,
      int commentCount,
      int likeCount});
}

/// @nodoc
class __$FFPostCopyWithImpl<$Res> extends _$FFPostCopyWithImpl<$Res>
    implements _$FFPostCopyWith<$Res> {
  __$FFPostCopyWithImpl(_FFPost _value, $Res Function(_FFPost) _then)
      : super(_value, (v) => _then(v as _FFPost));

  @override
  _FFPost get _value => super._value as _FFPost;

  @override
  $Res call({
    Object? id = freezed,
    Object? authorId = freezed,
    Object? postTime = freezed,
    Object? imageUrls = freezed,
    Object? unlikedBy = freezed,
    Object? likedBy = freezed,
    Object? body = freezed,
    Object? commentCount = freezed,
    Object? likeCount = freezed,
  }) {
    return _then(_FFPost(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      authorId: authorId == freezed
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      postTime: postTime == freezed
          ? _value.postTime
          : postTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      imageUrls: imageUrls == freezed
          ? _value.imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      unlikedBy: unlikedBy == freezed
          ? _value.unlikedBy
          : unlikedBy // ignore: cast_nullable_to_non_nullable
              as List<String>,
      likedBy: likedBy == freezed
          ? _value.likedBy
          : likedBy // ignore: cast_nullable_to_non_nullable
              as List<String>,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      commentCount: commentCount == freezed
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int,
      likeCount: likeCount == freezed
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

@JsonSerializable()
@Implements(Likable)

/// @nodoc
class _$_FFPost with DiagnosticableTreeMixin implements _FFPost {
  const _$_FFPost(
      {required this.id,
      required this.authorId,
      required this.postTime,
      this.imageUrls = const [],
      this.unlikedBy = const [],
      this.likedBy = const [],
      this.body,
      this.commentCount = 0,
      this.likeCount = 0});

  factory _$_FFPost.fromJson(Map<String, dynamic> json) =>
      _$_$_FFPostFromJson(json);

  @override

  /// ID is generated from Firebase UID
  final String id;
  @override

  /// The Id of whoever made the post
  final String authorId;
  @override // /// The full name of whoever made the post
// required String authorName,
  /// The time that the post was made
  final DateTime postTime;
  @JsonKey(defaultValue: const [])
  @override

  /// Url to an image, if the post has an image.
  final List<String> imageUrls;
  @JsonKey(defaultValue: const [])
  @override

  /// ID's of those who have liked the post then disliked.
  /// Once added an ID isn't removed.
  /// It is here so double likes don't send two notications.
  final List<String> unlikedBy;
  @JsonKey(defaultValue: const [])
  @override // required String authorAvatarUrl,
  /// Id's of those who liked post
  final List<String> likedBy;
  @override

  /// The main text of the post, if it is included.
  final String? body;
  @JsonKey(defaultValue: 0)
  @override

  /// Used to track number of comments made
  final int commentCount;
  @JsonKey(defaultValue: 0)
  @override

  /// Used to track number of likes
  final int likeCount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FFPost(id: $id, authorId: $authorId, postTime: $postTime, imageUrls: $imageUrls, unlikedBy: $unlikedBy, likedBy: $likedBy, body: $body, commentCount: $commentCount, likeCount: $likeCount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FFPost'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('authorId', authorId))
      ..add(DiagnosticsProperty('postTime', postTime))
      ..add(DiagnosticsProperty('imageUrls', imageUrls))
      ..add(DiagnosticsProperty('unlikedBy', unlikedBy))
      ..add(DiagnosticsProperty('likedBy', likedBy))
      ..add(DiagnosticsProperty('body', body))
      ..add(DiagnosticsProperty('commentCount', commentCount))
      ..add(DiagnosticsProperty('likeCount', likeCount));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FFPost &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.authorId, authorId) ||
                const DeepCollectionEquality()
                    .equals(other.authorId, authorId)) &&
            (identical(other.postTime, postTime) ||
                const DeepCollectionEquality()
                    .equals(other.postTime, postTime)) &&
            (identical(other.imageUrls, imageUrls) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrls, imageUrls)) &&
            (identical(other.unlikedBy, unlikedBy) ||
                const DeepCollectionEquality()
                    .equals(other.unlikedBy, unlikedBy)) &&
            (identical(other.likedBy, likedBy) ||
                const DeepCollectionEquality()
                    .equals(other.likedBy, likedBy)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.commentCount, commentCount) ||
                const DeepCollectionEquality()
                    .equals(other.commentCount, commentCount)) &&
            (identical(other.likeCount, likeCount) ||
                const DeepCollectionEquality()
                    .equals(other.likeCount, likeCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(authorId) ^
      const DeepCollectionEquality().hash(postTime) ^
      const DeepCollectionEquality().hash(imageUrls) ^
      const DeepCollectionEquality().hash(unlikedBy) ^
      const DeepCollectionEquality().hash(likedBy) ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(commentCount) ^
      const DeepCollectionEquality().hash(likeCount);

  @JsonKey(ignore: true)
  @override
  _$FFPostCopyWith<_FFPost> get copyWith =>
      __$FFPostCopyWithImpl<_FFPost>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FFPostToJson(this);
  }
}

abstract class _FFPost implements FFPost, Likable {
  const factory _FFPost(
      {required String id,
      required String authorId,
      required DateTime postTime,
      List<String> imageUrls,
      List<String> unlikedBy,
      List<String> likedBy,
      String? body,
      int commentCount,
      int likeCount}) = _$_FFPost;

  factory _FFPost.fromJson(Map<String, dynamic> json) = _$_FFPost.fromJson;

  @override

  /// ID is generated from Firebase UID
  String get id => throw _privateConstructorUsedError;
  @override

  /// The Id of whoever made the post
  String get authorId => throw _privateConstructorUsedError;
  @override // /// The full name of whoever made the post
// required String authorName,
  /// The time that the post was made
  DateTime get postTime => throw _privateConstructorUsedError;
  @override

  /// Url to an image, if the post has an image.
  List<String> get imageUrls => throw _privateConstructorUsedError;
  @override

  /// ID's of those who have liked the post then disliked.
  /// Once added an ID isn't removed.
  /// It is here so double likes don't send two notications.
  List<String> get unlikedBy => throw _privateConstructorUsedError;
  @override // required String authorAvatarUrl,
  /// Id's of those who liked post
  List<String> get likedBy => throw _privateConstructorUsedError;
  @override

  /// The main text of the post, if it is included.
  String? get body => throw _privateConstructorUsedError;
  @override

  /// Used to track number of comments made
  int get commentCount => throw _privateConstructorUsedError;
  @override

  /// Used to track number of likes
  int get likeCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FFPostCopyWith<_FFPost> get copyWith => throw _privateConstructorUsedError;
}
