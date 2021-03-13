import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:intl/intl.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FFFunctions {
  /// Takes a [DateTime] and returns the same [DateTime],
  /// required for JSON parsing
  /// when using @jsonkey for [Timestamp]s - it's used in the toJson parameter.
  static DateTime dateTimeAsIs(DateTime dateTime) => dateTime;

  /// Converts [Timestamp]s to [DateTimes].
  /// https://stackoverflow.com/questions/56627888/how-to-print-firestore-timestamp-as-formatted-date-and-time-in-flutter
  static DateTime dateTimeFromTimestamp(Timestamp timestamp) {
    return DateTime.parse(timestamp.toDate().toString());
  }

  static String convertTime(DateTime dateTime) {
    final time = DateTime.now().difference(dateTime).inHours;
    if (time > 24) {
      final formatter = DateFormat('MMM d, y');
      return formatter.format(dateTime);
    }
    return timeago.format(dateTime);
  }

  static String convertTimeToHourMinute(DateTime dateTime) {
    final formatter = DateFormat(DateFormat.HOUR_MINUTE);
    return formatter.format(dateTime);
  }

  static InputDecoration textFieldStyle(
      {String labelTextStr = '', String hintTextStr = ''}) {
    return InputDecoration(
      contentPadding: const EdgeInsets.all(12),
      labelText: labelTextStr,
      hintText: hintTextStr,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
