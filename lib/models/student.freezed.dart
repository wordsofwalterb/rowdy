// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'student.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FFStudent _$FFStudentFromJson(Map<String, dynamic> json) {
  return _Student.fromJson(json);
}

/// @nodoc
class _$FFStudentTearOff {
  const _$FFStudentTearOff();

  _Student call(
      {required String id,
      required String fullName,
      required String firstName,
      required String lastName,
      List<String> channels = const [],
      bool notificationsEnabled = false,
      int reportCount = 0,
      bool isTester = false,
      String? bio,
      String? coverPhotoUrl,
      String? email,
      String? avatarUrl}) {
    return _Student(
      id: id,
      fullName: fullName,
      firstName: firstName,
      lastName: lastName,
      channels: channels,
      notificationsEnabled: notificationsEnabled,
      reportCount: reportCount,
      isTester: isTester,
      bio: bio,
      coverPhotoUrl: coverPhotoUrl,
      email: email,
      avatarUrl: avatarUrl,
    );
  }

  FFStudent fromJson(Map<String, Object> json) {
    return FFStudent.fromJson(json);
  }
}

/// @nodoc
const $FFStudent = _$FFStudentTearOff();

/// @nodoc
mixin _$FFStudent {
  String get id => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  List<String> get channels => throw _privateConstructorUsedError;
  bool get notificationsEnabled => throw _privateConstructorUsedError;
  int get reportCount => throw _privateConstructorUsedError;
  bool get isTester => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  String? get coverPhotoUrl => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FFStudentCopyWith<FFStudent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FFStudentCopyWith<$Res> {
  factory $FFStudentCopyWith(FFStudent value, $Res Function(FFStudent) then) =
      _$FFStudentCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String fullName,
      String firstName,
      String lastName,
      List<String> channels,
      bool notificationsEnabled,
      int reportCount,
      bool isTester,
      String? bio,
      String? coverPhotoUrl,
      String? email,
      String? avatarUrl});
}

/// @nodoc
class _$FFStudentCopyWithImpl<$Res> implements $FFStudentCopyWith<$Res> {
  _$FFStudentCopyWithImpl(this._value, this._then);

  final FFStudent _value;
  // ignore: unused_field
  final $Res Function(FFStudent) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? fullName = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? channels = freezed,
    Object? notificationsEnabled = freezed,
    Object? reportCount = freezed,
    Object? isTester = freezed,
    Object? bio = freezed,
    Object? coverPhotoUrl = freezed,
    Object? email = freezed,
    Object? avatarUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      channels: channels == freezed
          ? _value.channels
          : channels // ignore: cast_nullable_to_non_nullable
              as List<String>,
      notificationsEnabled: notificationsEnabled == freezed
          ? _value.notificationsEnabled
          : notificationsEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      reportCount: reportCount == freezed
          ? _value.reportCount
          : reportCount // ignore: cast_nullable_to_non_nullable
              as int,
      isTester: isTester == freezed
          ? _value.isTester
          : isTester // ignore: cast_nullable_to_non_nullable
              as bool,
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      coverPhotoUrl: coverPhotoUrl == freezed
          ? _value.coverPhotoUrl
          : coverPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: avatarUrl == freezed
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$StudentCopyWith<$Res> implements $FFStudentCopyWith<$Res> {
  factory _$StudentCopyWith(_Student value, $Res Function(_Student) then) =
      __$StudentCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String fullName,
      String firstName,
      String lastName,
      List<String> channels,
      bool notificationsEnabled,
      int reportCount,
      bool isTester,
      String? bio,
      String? coverPhotoUrl,
      String? email,
      String? avatarUrl});
}

/// @nodoc
class __$StudentCopyWithImpl<$Res> extends _$FFStudentCopyWithImpl<$Res>
    implements _$StudentCopyWith<$Res> {
  __$StudentCopyWithImpl(_Student _value, $Res Function(_Student) _then)
      : super(_value, (v) => _then(v as _Student));

  @override
  _Student get _value => super._value as _Student;

  @override
  $Res call({
    Object? id = freezed,
    Object? fullName = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? channels = freezed,
    Object? notificationsEnabled = freezed,
    Object? reportCount = freezed,
    Object? isTester = freezed,
    Object? bio = freezed,
    Object? coverPhotoUrl = freezed,
    Object? email = freezed,
    Object? avatarUrl = freezed,
  }) {
    return _then(_Student(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      channels: channels == freezed
          ? _value.channels
          : channels // ignore: cast_nullable_to_non_nullable
              as List<String>,
      notificationsEnabled: notificationsEnabled == freezed
          ? _value.notificationsEnabled
          : notificationsEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      reportCount: reportCount == freezed
          ? _value.reportCount
          : reportCount // ignore: cast_nullable_to_non_nullable
              as int,
      isTester: isTester == freezed
          ? _value.isTester
          : isTester // ignore: cast_nullable_to_non_nullable
              as bool,
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      coverPhotoUrl: coverPhotoUrl == freezed
          ? _value.coverPhotoUrl
          : coverPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: avatarUrl == freezed
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

@JsonSerializable()
@Implements(AvatarUser)

/// @nodoc
class _$_Student with DiagnosticableTreeMixin implements _Student {
  const _$_Student(
      {required this.id,
      required this.fullName,
      required this.firstName,
      required this.lastName,
      this.channels = const [],
      this.notificationsEnabled = false,
      this.reportCount = 0,
      this.isTester = false,
      this.bio,
      this.coverPhotoUrl,
      this.email,
      this.avatarUrl});

  factory _$_Student.fromJson(Map<String, dynamic> json) =>
      _$_$_StudentFromJson(json);

  @override
  final String id;
  @override
  final String fullName;
  @override
  final String firstName;
  @override
  final String lastName;
  @JsonKey(defaultValue: const [])
  @override
  final List<String> channels;
  @JsonKey(defaultValue: false)
  @override
  final bool notificationsEnabled;
  @JsonKey(defaultValue: 0)
  @override
  final int reportCount;
  @JsonKey(defaultValue: false)
  @override
  final bool isTester;
  @override
  final String? bio;
  @override
  final String? coverPhotoUrl;
  @override
  final String? email;
  @override
  final String? avatarUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FFStudent(id: $id, fullName: $fullName, firstName: $firstName, lastName: $lastName, channels: $channels, notificationsEnabled: $notificationsEnabled, reportCount: $reportCount, isTester: $isTester, bio: $bio, coverPhotoUrl: $coverPhotoUrl, email: $email, avatarUrl: $avatarUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FFStudent'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('fullName', fullName))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('lastName', lastName))
      ..add(DiagnosticsProperty('channels', channels))
      ..add(DiagnosticsProperty('notificationsEnabled', notificationsEnabled))
      ..add(DiagnosticsProperty('reportCount', reportCount))
      ..add(DiagnosticsProperty('isTester', isTester))
      ..add(DiagnosticsProperty('bio', bio))
      ..add(DiagnosticsProperty('coverPhotoUrl', coverPhotoUrl))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('avatarUrl', avatarUrl));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Student &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.channels, channels) ||
                const DeepCollectionEquality()
                    .equals(other.channels, channels)) &&
            (identical(other.notificationsEnabled, notificationsEnabled) ||
                const DeepCollectionEquality().equals(
                    other.notificationsEnabled, notificationsEnabled)) &&
            (identical(other.reportCount, reportCount) ||
                const DeepCollectionEquality()
                    .equals(other.reportCount, reportCount)) &&
            (identical(other.isTester, isTester) ||
                const DeepCollectionEquality()
                    .equals(other.isTester, isTester)) &&
            (identical(other.bio, bio) ||
                const DeepCollectionEquality().equals(other.bio, bio)) &&
            (identical(other.coverPhotoUrl, coverPhotoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.coverPhotoUrl, coverPhotoUrl)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.avatarUrl, avatarUrl) ||
                const DeepCollectionEquality()
                    .equals(other.avatarUrl, avatarUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(fullName) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(channels) ^
      const DeepCollectionEquality().hash(notificationsEnabled) ^
      const DeepCollectionEquality().hash(reportCount) ^
      const DeepCollectionEquality().hash(isTester) ^
      const DeepCollectionEquality().hash(bio) ^
      const DeepCollectionEquality().hash(coverPhotoUrl) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(avatarUrl);

  @JsonKey(ignore: true)
  @override
  _$StudentCopyWith<_Student> get copyWith =>
      __$StudentCopyWithImpl<_Student>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_StudentToJson(this);
  }
}

abstract class _Student implements FFStudent, AvatarUser {
  const factory _Student(
      {required String id,
      required String fullName,
      required String firstName,
      required String lastName,
      List<String> channels,
      bool notificationsEnabled,
      int reportCount,
      bool isTester,
      String? bio,
      String? coverPhotoUrl,
      String? email,
      String? avatarUrl}) = _$_Student;

  factory _Student.fromJson(Map<String, dynamic> json) = _$_Student.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get fullName => throw _privateConstructorUsedError;
  @override
  String get firstName => throw _privateConstructorUsedError;
  @override
  String get lastName => throw _privateConstructorUsedError;
  @override
  List<String> get channels => throw _privateConstructorUsedError;
  @override
  bool get notificationsEnabled => throw _privateConstructorUsedError;
  @override
  int get reportCount => throw _privateConstructorUsedError;
  @override
  bool get isTester => throw _privateConstructorUsedError;
  @override
  String? get bio => throw _privateConstructorUsedError;
  @override
  String? get coverPhotoUrl => throw _privateConstructorUsedError;
  @override
  String? get email => throw _privateConstructorUsedError;
  @override
  String? get avatarUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StudentCopyWith<_Student> get copyWith =>
      throw _privateConstructorUsedError;
}
