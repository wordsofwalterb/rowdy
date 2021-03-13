import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification.freezed.dart';
part 'notification.g.dart';

@freezed
class FFNotification with _$FFNotification {
  factory FFNotification({
    String? title,
    String? body,
    String? imageUrl,
    required String timestamp,
  }) = _FFNotification;

  factory FFNotification.fromJson(Map<String, dynamic> json) =>
      _$FFNotificationFromJson(json);
}
