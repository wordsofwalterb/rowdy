import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment.freezed.dart';
part 'comment.g.dart';

@freezed
class FFComment with _$FFComment {
  const factory FFComment({
    required String id,
    required String postId,
    required String authorId,
    required String authorName,
    required String authorAvatarUrl,
    required DateTime timestamp,
    @Default(0) int likeCount,
    @Default([]) List<String> likedBy,
    @Default([]) List<String> unlikedBy,
    @Default([]) List<String> imageUrls,
    String? body,
    @Default(0) int reportCount,
    @Default([]) List<String> reportedBy,
  }) = _FFComment;

  factory FFComment.fromJson(Map<String, dynamic> json) =>
      _$FFCommentFromJson(json);
}
