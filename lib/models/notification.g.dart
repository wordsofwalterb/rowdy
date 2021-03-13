// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FFNotification _$_$_FFNotificationFromJson(Map<String, dynamic> json) {
  return _$_FFNotification(
    title: json['title'] as String?,
    body: json['body'] as String?,
    imageUrl: json['imageUrl'] as String?,
    timestamp: json['timestamp'] as String,
  );
}

Map<String, dynamic> _$_$_FFNotificationToJson(_$_FFNotification instance) =>
    <String, dynamic>{
      'title': instance.title,
      'body': instance.body,
      'imageUrl': instance.imageUrl,
      'timestamp': instance.timestamp,
    };
