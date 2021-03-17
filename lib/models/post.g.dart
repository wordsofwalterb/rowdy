// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FFPost _$_$_FFPostFromJson(Map<String, dynamic> json) {
  return _$_FFPost(
    id: json['id'] as String,
    authorId: json['authorId'] as String,
    postTime: DateTime.parse(json['postTime'] as String),
    imageUrls: (json['imageUrls'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toList() ??
        [],
    unlikedBy: (json['unlikedBy'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toList() ??
        [],
    likedBy:
        (json['likedBy'] as List<dynamic>?)?.map((e) => e as String).toList() ??
            [],
    body: json['body'] as String?,
    commentCount: json['commentCount'] as int? ?? 0,
    likeCount: json['likeCount'] as int? ?? 0,
  );
}

Map<String, dynamic> _$_$_FFPostToJson(_$_FFPost instance) => <String, dynamic>{
      'id': instance.id,
      'authorId': instance.authorId,
      'postTime': instance.postTime.toIso8601String(),
      'imageUrls': instance.imageUrls,
      'unlikedBy': instance.unlikedBy,
      'likedBy': instance.likedBy,
      'body': instance.body,
      'commentCount': instance.commentCount,
      'likeCount': instance.likeCount,
    };
