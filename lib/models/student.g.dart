// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Student _$_$_StudentFromJson(Map<String, dynamic> json) {
  return _$_Student(
    id: json['id'] as String,
    fullName: json['fullName'] as String,
    firstName: json['firstName'] as String,
    lastName: json['lastName'] as String,
    channels: (json['channels'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toList() ??
        [],
    notificationsEnabled: json['notificationsEnabled'] as bool? ?? false,
    reportCount: json['reportCount'] as int? ?? 0,
    isTester: json['isTester'] as bool? ?? false,
    likedPosts: (json['likedPosts'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toList() ??
        [],
    bio: json['bio'] as String?,
    coverPhotoUrl: json['coverPhotoUrl'] as String?,
    email: json['email'] as String?,
    avatarUrl: json['avatarUrl'] as String?,
    authType: json['authType'] as String?,
    creationDate:
        FFFunctions.dateTimeFromTimestamp(json['creationDate'] as Timestamp),
    lastOpenDate:
        FFFunctions.dateTimeFromTimestamp(json['lastOpenDate'] as Timestamp),
  );
}

Map<String, dynamic> _$_$_StudentToJson(_$_Student instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'channels': instance.channels,
      'notificationsEnabled': instance.notificationsEnabled,
      'reportCount': instance.reportCount,
      'isTester': instance.isTester,
      'likedPosts': instance.likedPosts,
      'bio': instance.bio,
      'coverPhotoUrl': instance.coverPhotoUrl,
      'email': instance.email,
      'avatarUrl': instance.avatarUrl,
      'authType': instance.authType,
      'creationDate': FFFunctions.dateTimeAsIs(instance.creationDate),
      'lastOpenDate': FFFunctions.dateTimeAsIs(instance.lastOpenDate),
    };
