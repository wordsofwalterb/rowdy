// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FFMessage _$_$_FFMessageFromJson(Map<String, dynamic> json) {
  return _$_FFMessage(
    id: json['id'] as String,
    channelId: json['channelId'] as String,
    timestamp: DateTime.parse(json['timestamp'] as String),
    reportCount: json['reportCount'] ?? 0,
    authorId: json['authorId'] as String,
    heartCount: json['heartCount'] ?? 0,
    body: json['body'] as String?,
    imageUrls: (json['imageUrls'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_FFMessageToJson(_$_FFMessage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'channelId': instance.channelId,
      'timestamp': instance.timestamp.toIso8601String(),
      'reportCount': instance.reportCount,
      'authorId': instance.authorId,
      'heartCount': instance.heartCount,
      'body': instance.body,
      'imageUrls': instance.imageUrls,
    };
