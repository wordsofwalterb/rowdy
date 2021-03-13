// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FFComment _$_$_FFCommentFromJson(Map<String, dynamic> json) {
  return _$_FFComment(
    id: json['id'] as String,
    postId: json['postId'] as String,
    authorId: json['authorId'] as String,
    authorName: json['authorName'] as String,
    authorAvatarUrl: json['authorAvatarUrl'] as String,
    timestamp: DateTime.parse(json['timestamp'] as String),
    likeCount: json['likeCount'] as int? ?? 0,
    likedBy:
        (json['likedBy'] as List<dynamic>?)?.map((e) => e as String).toList() ??
            [],
    unlikedBy: (json['unlikedBy'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toList() ??
        [],
    imageUrls: (json['imageUrls'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toList() ??
        [],
    body: json['body'] as String?,
    reportCount: json['reportCount'] as int? ?? 0,
    reportedBy: (json['reportedBy'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_FFCommentToJson(_$_FFComment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'postId': instance.postId,
      'authorId': instance.authorId,
      'authorName': instance.authorName,
      'authorAvatarUrl': instance.authorAvatarUrl,
      'timestamp': instance.timestamp.toIso8601String(),
      'likeCount': instance.likeCount,
      'likedBy': instance.likedBy,
      'unlikedBy': instance.unlikedBy,
      'imageUrls': instance.imageUrls,
      'body': instance.body,
      'reportCount': instance.reportCount,
      'reportedBy': instance.reportedBy,
    };
