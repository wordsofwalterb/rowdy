import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'student.freezed.dart';
part 'student.g.dart';

@freezed
class Student with _$Student {
  /// Creates an object representing public information about
  /// a student user.
  ///
  /// Although this information may be obscured to other users,
  /// it will be available if app is compromised hence public.
  ///
  /// [fullName] and [id] are required and must not be null
  const factory Student({
    required String id,
    required String fullName,
    required String firstName,
    required String lastName,
    @Default([]) List<String> channels,
    @Default(false) bool notificationsEnabled,
    @Default(0) int reportCount,
    @Default(false) bool isTester,
    String? bio,
    String? coverPhotoUrl,
    String? email,
    String? avatarUrl,
  }) = _Student;

  /// Converts a map of items with same variable name (key) and type for value
  factory Student.fromJson(Map<String, dynamic> json) =>
      _$StudentFromJson(json);
}
