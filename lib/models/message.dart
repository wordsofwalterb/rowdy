import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'message.freezed.dart';
part 'message.g.dart';

@freezed
class FFMessage with _$FFMessage {
  const factory FFMessage({
    required String id,
    required String channelId,
    required DateTime timestamp,
    @Default(0) reportCount,
    required String authorId,
    @Default(0) heartCount,
    String? body,
    @Default([]) List<String> imageUrls,
  }) = _FFMessage;

  factory FFMessage.fromJson(Map<String, dynamic> json) =>
      _$FFMessageFromJson(json);
}
