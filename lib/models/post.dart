import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter/foundation.dart';

part 'post.freezed.dart';
part 'post.g.dart';

@freezed
class FFPost with _$FFPost {
  const factory FFPost({
    /// ID is generated from Firebase UID
    required String id,

    /// The Id of whoever made the post
    required String authorId,

    /// The full name of whoever made the post
    required String authorName,

    /// The time that the post was made
    required DateTime postTime,

    /// Url to an image, if the post has an image.
    @Default([]) List<String> imageUrls,

    /// ID's of those who have liked the post then disliked.
    /// Once added an ID isn't removed.
    /// It is here so double likes don't send two notications.
    @Default([]) List<String> unlikedBy,
    required String authorAvatarUrl,

    /// Id's of those who liked post
    @Default([]) List<String> likedBy,

    /// The main text of the post, if it is included.
    String? body,

    /// Used to track number of comments made
    @Default(0) int commentCount,

    /// Used to track number of likes
    @Default(0) int likeCount,
  }) = _FFPost;

  /// Converts a map of items with same variable name (key) and type for value
  factory FFPost.fromJson(Map<String, dynamic> json) => _$FFPostFromJson(json);
}
