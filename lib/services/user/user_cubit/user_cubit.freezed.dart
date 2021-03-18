// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserStateTearOff {
  const _$UserStateTearOff();

  _Unauthenticated<FFStudent> unauthenticated<FFStudent>() {
    return _Unauthenticated<FFStudent>();
  }

  _Authenticating<FFStudent> authenticating<FFStudent>() {
    return _Authenticating<FFStudent>();
  }

  _Authenticated<FFStudent> authenticated<FFStudent>(
      {required FFStudent user}) {
    return _Authenticated<FFStudent>(
      user: user,
    );
  }

  _AuthenticationFailure<FFStudent> authenticationFailed<FFStudent>(
      String errorMessage) {
    return _AuthenticationFailure<FFStudent>(
      errorMessage,
    );
  }
}

/// @nodoc
const $UserState = _$UserStateTearOff();

/// @nodoc
mixin _$UserState<FFStudent> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function() authenticating,
    required TResult Function(FFStudent user) authenticated,
    required TResult Function(String errorMessage) authenticationFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? authenticating,
    TResult Function(FFStudent user)? authenticated,
    TResult Function(String errorMessage)? authenticationFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unauthenticated<FFStudent> value)
        unauthenticated,
    required TResult Function(_Authenticating<FFStudent> value) authenticating,
    required TResult Function(_Authenticated<FFStudent> value) authenticated,
    required TResult Function(_AuthenticationFailure<FFStudent> value)
        authenticationFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unauthenticated<FFStudent> value)? unauthenticated,
    TResult Function(_Authenticating<FFStudent> value)? authenticating,
    TResult Function(_Authenticated<FFStudent> value)? authenticated,
    TResult Function(_AuthenticationFailure<FFStudent> value)?
        authenticationFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<FFStudent, $Res> {
  factory $UserStateCopyWith(UserState<FFStudent> value,
          $Res Function(UserState<FFStudent>) then) =
      _$UserStateCopyWithImpl<FFStudent, $Res>;
}

/// @nodoc
class _$UserStateCopyWithImpl<FFStudent, $Res>
    implements $UserStateCopyWith<FFStudent, $Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  final UserState<FFStudent> _value;
  // ignore: unused_field
  final $Res Function(UserState<FFStudent>) _then;
}

/// @nodoc
abstract class _$UnauthenticatedCopyWith<FFStudent, $Res> {
  factory _$UnauthenticatedCopyWith(_Unauthenticated<FFStudent> value,
          $Res Function(_Unauthenticated<FFStudent>) then) =
      __$UnauthenticatedCopyWithImpl<FFStudent, $Res>;
}

/// @nodoc
class __$UnauthenticatedCopyWithImpl<FFStudent, $Res>
    extends _$UserStateCopyWithImpl<FFStudent, $Res>
    implements _$UnauthenticatedCopyWith<FFStudent, $Res> {
  __$UnauthenticatedCopyWithImpl(_Unauthenticated<FFStudent> _value,
      $Res Function(_Unauthenticated<FFStudent>) _then)
      : super(_value, (v) => _then(v as _Unauthenticated<FFStudent>));

  @override
  _Unauthenticated<FFStudent> get _value =>
      super._value as _Unauthenticated<FFStudent>;
}

/// @nodoc
class _$_Unauthenticated<FFStudent> implements _Unauthenticated<FFStudent> {
  const _$_Unauthenticated();

  @override
  String toString() {
    return 'UserState<$FFStudent>.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Unauthenticated<FFStudent>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function() authenticating,
    required TResult Function(FFStudent user) authenticated,
    required TResult Function(String errorMessage) authenticationFailed,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? authenticating,
    TResult Function(FFStudent user)? authenticated,
    TResult Function(String errorMessage)? authenticationFailed,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unauthenticated<FFStudent> value)
        unauthenticated,
    required TResult Function(_Authenticating<FFStudent> value) authenticating,
    required TResult Function(_Authenticated<FFStudent> value) authenticated,
    required TResult Function(_AuthenticationFailure<FFStudent> value)
        authenticationFailed,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unauthenticated<FFStudent> value)? unauthenticated,
    TResult Function(_Authenticating<FFStudent> value)? authenticating,
    TResult Function(_Authenticated<FFStudent> value)? authenticated,
    TResult Function(_AuthenticationFailure<FFStudent> value)?
        authenticationFailed,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _Unauthenticated<FFStudent> implements UserState<FFStudent> {
  const factory _Unauthenticated() = _$_Unauthenticated<FFStudent>;
}

/// @nodoc
abstract class _$AuthenticatingCopyWith<FFStudent, $Res> {
  factory _$AuthenticatingCopyWith(_Authenticating<FFStudent> value,
          $Res Function(_Authenticating<FFStudent>) then) =
      __$AuthenticatingCopyWithImpl<FFStudent, $Res>;
}

/// @nodoc
class __$AuthenticatingCopyWithImpl<FFStudent, $Res>
    extends _$UserStateCopyWithImpl<FFStudent, $Res>
    implements _$AuthenticatingCopyWith<FFStudent, $Res> {
  __$AuthenticatingCopyWithImpl(_Authenticating<FFStudent> _value,
      $Res Function(_Authenticating<FFStudent>) _then)
      : super(_value, (v) => _then(v as _Authenticating<FFStudent>));

  @override
  _Authenticating<FFStudent> get _value =>
      super._value as _Authenticating<FFStudent>;
}

/// @nodoc
class _$_Authenticating<FFStudent> implements _Authenticating<FFStudent> {
  const _$_Authenticating();

  @override
  String toString() {
    return 'UserState<$FFStudent>.authenticating()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Authenticating<FFStudent>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function() authenticating,
    required TResult Function(FFStudent user) authenticated,
    required TResult Function(String errorMessage) authenticationFailed,
  }) {
    return authenticating();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? authenticating,
    TResult Function(FFStudent user)? authenticated,
    TResult Function(String errorMessage)? authenticationFailed,
    required TResult orElse(),
  }) {
    if (authenticating != null) {
      return authenticating();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unauthenticated<FFStudent> value)
        unauthenticated,
    required TResult Function(_Authenticating<FFStudent> value) authenticating,
    required TResult Function(_Authenticated<FFStudent> value) authenticated,
    required TResult Function(_AuthenticationFailure<FFStudent> value)
        authenticationFailed,
  }) {
    return authenticating(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unauthenticated<FFStudent> value)? unauthenticated,
    TResult Function(_Authenticating<FFStudent> value)? authenticating,
    TResult Function(_Authenticated<FFStudent> value)? authenticated,
    TResult Function(_AuthenticationFailure<FFStudent> value)?
        authenticationFailed,
    required TResult orElse(),
  }) {
    if (authenticating != null) {
      return authenticating(this);
    }
    return orElse();
  }
}

abstract class _Authenticating<FFStudent> implements UserState<FFStudent> {
  const factory _Authenticating() = _$_Authenticating<FFStudent>;
}

/// @nodoc
abstract class _$AuthenticatedCopyWith<FFStudent, $Res> {
  factory _$AuthenticatedCopyWith(_Authenticated<FFStudent> value,
          $Res Function(_Authenticated<FFStudent>) then) =
      __$AuthenticatedCopyWithImpl<FFStudent, $Res>;
  $Res call({FFStudent user});
}

/// @nodoc
class __$AuthenticatedCopyWithImpl<FFStudent, $Res>
    extends _$UserStateCopyWithImpl<FFStudent, $Res>
    implements _$AuthenticatedCopyWith<FFStudent, $Res> {
  __$AuthenticatedCopyWithImpl(_Authenticated<FFStudent> _value,
      $Res Function(_Authenticated<FFStudent>) _then)
      : super(_value, (v) => _then(v as _Authenticated<FFStudent>));

  @override
  _Authenticated<FFStudent> get _value =>
      super._value as _Authenticated<FFStudent>;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_Authenticated<FFStudent>(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as FFStudent,
    ));
  }
}

/// @nodoc
class _$_Authenticated<FFStudent> implements _Authenticated<FFStudent> {
  const _$_Authenticated({required this.user});

  @override
  final FFStudent user;

  @override
  String toString() {
    return 'UserState<$FFStudent>.authenticated(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Authenticated<FFStudent> &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$AuthenticatedCopyWith<FFStudent, _Authenticated<FFStudent>> get copyWith =>
      __$AuthenticatedCopyWithImpl<FFStudent, _Authenticated<FFStudent>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function() authenticating,
    required TResult Function(FFStudent user) authenticated,
    required TResult Function(String errorMessage) authenticationFailed,
  }) {
    return authenticated(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? authenticating,
    TResult Function(FFStudent user)? authenticated,
    TResult Function(String errorMessage)? authenticationFailed,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unauthenticated<FFStudent> value)
        unauthenticated,
    required TResult Function(_Authenticating<FFStudent> value) authenticating,
    required TResult Function(_Authenticated<FFStudent> value) authenticated,
    required TResult Function(_AuthenticationFailure<FFStudent> value)
        authenticationFailed,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unauthenticated<FFStudent> value)? unauthenticated,
    TResult Function(_Authenticating<FFStudent> value)? authenticating,
    TResult Function(_Authenticated<FFStudent> value)? authenticated,
    TResult Function(_AuthenticationFailure<FFStudent> value)?
        authenticationFailed,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated<FFStudent> implements UserState<FFStudent> {
  const factory _Authenticated({required FFStudent user}) =
      _$_Authenticated<FFStudent>;

  FFStudent get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AuthenticatedCopyWith<FFStudent, _Authenticated<FFStudent>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AuthenticationFailureCopyWith<FFStudent, $Res> {
  factory _$AuthenticationFailureCopyWith(
          _AuthenticationFailure<FFStudent> value,
          $Res Function(_AuthenticationFailure<FFStudent>) then) =
      __$AuthenticationFailureCopyWithImpl<FFStudent, $Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class __$AuthenticationFailureCopyWithImpl<FFStudent, $Res>
    extends _$UserStateCopyWithImpl<FFStudent, $Res>
    implements _$AuthenticationFailureCopyWith<FFStudent, $Res> {
  __$AuthenticationFailureCopyWithImpl(_AuthenticationFailure<FFStudent> _value,
      $Res Function(_AuthenticationFailure<FFStudent>) _then)
      : super(_value, (v) => _then(v as _AuthenticationFailure<FFStudent>));

  @override
  _AuthenticationFailure<FFStudent> get _value =>
      super._value as _AuthenticationFailure<FFStudent>;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_AuthenticationFailure<FFStudent>(
      errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_AuthenticationFailure<FFStudent>
    implements _AuthenticationFailure<FFStudent> {
  const _$_AuthenticationFailure(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'UserState<$FFStudent>.authenticationFailed(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthenticationFailure<FFStudent> &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorMessage);

  @JsonKey(ignore: true)
  @override
  _$AuthenticationFailureCopyWith<FFStudent, _AuthenticationFailure<FFStudent>>
      get copyWith => __$AuthenticationFailureCopyWithImpl<FFStudent,
          _AuthenticationFailure<FFStudent>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function() authenticating,
    required TResult Function(FFStudent user) authenticated,
    required TResult Function(String errorMessage) authenticationFailed,
  }) {
    return authenticationFailed(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? authenticating,
    TResult Function(FFStudent user)? authenticated,
    TResult Function(String errorMessage)? authenticationFailed,
    required TResult orElse(),
  }) {
    if (authenticationFailed != null) {
      return authenticationFailed(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unauthenticated<FFStudent> value)
        unauthenticated,
    required TResult Function(_Authenticating<FFStudent> value) authenticating,
    required TResult Function(_Authenticated<FFStudent> value) authenticated,
    required TResult Function(_AuthenticationFailure<FFStudent> value)
        authenticationFailed,
  }) {
    return authenticationFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unauthenticated<FFStudent> value)? unauthenticated,
    TResult Function(_Authenticating<FFStudent> value)? authenticating,
    TResult Function(_Authenticated<FFStudent> value)? authenticated,
    TResult Function(_AuthenticationFailure<FFStudent> value)?
        authenticationFailed,
    required TResult orElse(),
  }) {
    if (authenticationFailed != null) {
      return authenticationFailed(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationFailure<FFStudent>
    implements UserState<FFStudent> {
  const factory _AuthenticationFailure(String errorMessage) =
      _$_AuthenticationFailure<FFStudent>;

  String get errorMessage => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AuthenticationFailureCopyWith<FFStudent, _AuthenticationFailure<FFStudent>>
      get copyWith => throw _privateConstructorUsedError;
}
