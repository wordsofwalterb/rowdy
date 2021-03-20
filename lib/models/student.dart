import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rowdy/services/user/avatar_user_model.dart';
import 'package:rowdy/util/functions.dart';

part 'student.freezed.dart';
part 'student.g.dart';

@freezed
class FFStudent with _$FFStudent implements AvatarUser {
  /// Creates an object representing public information about
  /// a student user.
  ///
  /// Although this information may be obscured to other users,
  /// it will be available if app is compromised hence public.
  ///
  /// [fullName] and [id] are required and must not be null
  @Implements(AvatarUser)
  const factory FFStudent({
    required String id,
    required String fullName,
    required String firstName,
    required String lastName,
    @Default([]) List<String> channels,
    @Default(false) bool notificationsEnabled,
    @Default(0) int reportCount,
    @Default(false) bool isTester,
    @Default([]) List<String> likedPosts,
    String? bio,
    String? coverPhotoUrl,
    String? email,
    String? avatarUrl,
    String? authType,

    /// When the account was created. Created from firestore [Timestamp].

    @JsonKey(fromJson: FFFunctions.dateTimeFromTimestamp, toJson: FFFunctions.dateTimeAsIs)
        required DateTime creationDate,

    /// The last time the user opened the app. Created from firestore [Timestamp].

    @JsonKey(fromJson: FFFunctions.dateTimeFromTimestamp, toJson: FFFunctions.dateTimeAsIs)
        required DateTime lastOpenDate,
  }) = _Student;

  /// Converts a map of items with same variable name (key) and type for value
  factory FFStudent.fromJson(Map<String, dynamic> json) =>
      _$FFStudentFromJson(json);
}
