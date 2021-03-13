import 'package:freezed_annotation/freezed_annotation.dart';

part 'channel.freezed.dart';
part 'channel.g.dart';

@freezed
abstract class FFChannel with _$FFChannel {
  factory FFChannel({
    required String id,
    required bool isPrivate,
    required bool isDM,
    required String channelName,
    required String channelImageUrl,
    String? lastMessageAuthorName,
    DateTime? lastMessageTimestamp,
    required String channelSnippet,
    required List<String> participantIds,
  }) = _FFChannel;

  factory FFChannel.fromJson(Map<String, dynamic> json) =>
      _$FFChannelFromJson(json);
}
