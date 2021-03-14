import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter/foundation.dart';

part 'test.freezed.dart';
part 'test.g.dart';

@freezed
class FFTest with _$FFTest {
  factory FFTest({required String id, required String body}) = _Test;

  factory FFTest.fromJson(Map<String, dynamic> json) => _$FFTestFromJson(json);
}
