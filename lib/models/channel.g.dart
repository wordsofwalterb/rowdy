// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FFChannel _$_$_FFChannelFromJson(Map<String, dynamic> json) {
  return _$_FFChannel(
    id: json['id'] as String,
    isPrivate: json['isPrivate'] as bool,
    isDM: json['isDM'] as bool,
    channelName: json['channelName'] as String,
    channelImageUrl: json['channelImageUrl'] as String,
    lastMessageAuthorName: json['lastMessageAuthorName'] as String?,
    lastMessageTimestamp: json['lastMessageTimestamp'] == null
        ? null
        : DateTime.parse(json['lastMessageTimestamp'] as String),
    channelSnippet: json['channelSnippet'] as String,
    participantIds: (json['participantIds'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
  );
}

Map<String, dynamic> _$_$_FFChannelToJson(_$_FFChannel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isPrivate': instance.isPrivate,
      'isDM': instance.isDM,
      'channelName': instance.channelName,
      'channelImageUrl': instance.channelImageUrl,
      'lastMessageAuthorName': instance.lastMessageAuthorName,
      'lastMessageTimestamp': instance.lastMessageTimestamp?.toIso8601String(),
      'channelSnippet': instance.channelSnippet,
      'participantIds': instance.participantIds,
    };
