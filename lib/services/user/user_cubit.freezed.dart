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

  _Unauthenticated unauthenticated() {
    return const _Unauthenticated();
  }

  _Authenticating authenticating() {
    return const _Authenticating();
  }

  _Authenticated authenticated({required FFStudent user}) {
    return _Authenticated(
      user: user,
    );
  }

  _AuthenticationFailure authenticationFailed(dynamic errorMessage) {
    return _AuthenticationFailure(
      errorMessage,
    );
  }
}

/// @nodoc
const $UserState = _$UserStateTearOff();

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function() authenticating,
    required TResult Function(FFStudent user) authenticated,
    required TResult Function(dynamic errorMessage) authenticationFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? authenticating,
    TResult Function(FFStudent user)? authenticated,
    TResult Function(dynamic errorMessage)? authenticationFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Authenticating value) authenticating,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_AuthenticationFailure value)
        authenticationFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Authenticating value)? authenticating,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_AuthenticationFailure value)? authenticationFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res> implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  final UserState _value;
  // ignore: unused_field
  final $Res Function(UserState) _then;
}

/// @nodoc
abstract class _$UnauthenticatedCopyWith<$Res> {
  factory _$UnauthenticatedCopyWith(
          _Unauthenticated value, $Res Function(_Unauthenticated) then) =
      __$UnauthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnauthenticatedCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements _$UnauthenticatedCopyWith<$Res> {
  __$UnauthenticatedCopyWithImpl(
      _Unauthenticated _value, $Res Function(_Unauthenticated) _then)
      : super(_value, (v) => _then(v as _Unauthenticated));

  @override
  _Unauthenticated get _value => super._value as _Unauthenticated;
}

/// @nodoc
class _$_Unauthenticated implements _Unauthenticated {
  const _$_Unauthenticated();

  @override
  String toString() {
    return 'UserState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Unauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function() authenticating,
    required TResult Function(FFStudent user) authenticated,
    required TResult Function(dynamic errorMessage) authenticationFailed,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? authenticating,
    TResult Function(FFStudent user)? authenticated,
    TResult Function(dynamic errorMessage)? authenticationFailed,
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
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Authenticating value) authenticating,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_AuthenticationFailure value)
        authenticationFailed,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Authenticating value)? authenticating,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_AuthenticationFailure value)? authenticationFailed,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _Unauthenticated implements UserState {
  const factory _Unauthenticated() = _$_Unauthenticated;
}

/// @nodoc
abstract class _$AuthenticatingCopyWith<$Res> {
  factory _$AuthenticatingCopyWith(
          _Authenticating value, $Res Function(_Authenticating) then) =
      __$AuthenticatingCopyWithImpl<$Res>;
}

/// @nodoc
class __$AuthenticatingCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements _$AuthenticatingCopyWith<$Res> {
  __$AuthenticatingCopyWithImpl(
      _Authenticating _value, $Res Function(_Authenticating) _then)
      : super(_value, (v) => _then(v as _Authenticating));

  @override
  _Authenticating get _value => super._value as _Authenticating;
}

/// @nodoc
class _$_Authenticating implements _Authenticating {
  const _$_Authenticating();

  @override
  String toString() {
    return 'UserState.authenticating()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Authenticating);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function() authenticating,
    required TResult Function(FFStudent user) authenticated,
    required TResult Function(dynamic errorMessage) authenticationFailed,
  }) {
    return authenticating();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? authenticating,
    TResult Function(FFStudent user)? authenticated,
    TResult Function(dynamic errorMessage)? authenticationFailed,
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
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Authenticating value) authenticating,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_AuthenticationFailure value)
        authenticationFailed,
  }) {
    return authenticating(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Authenticating value)? authenticating,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_AuthenticationFailure value)? authenticationFailed,
    required TResult orElse(),
  }) {
    if (authenticating != null) {
      return authenticating(this);
    }
    return orElse();
  }
}

abstract class _Authenticating implements UserState {
  const factory _Authenticating() = _$_Authenticating;
}

/// @nodoc
abstract class _$AuthenticatedCopyWith<$Res> {
  factory _$AuthenticatedCopyWith(
          _Authenticated value, $Res Function(_Authenticated) then) =
      __$AuthenticatedCopyWithImpl<$Res>;
  $Res call({FFStudent user});

  $FFStudentCopyWith<$Res> get user;
}

/// @nodoc
class __$AuthenticatedCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements _$AuthenticatedCopyWith<$Res> {
  __$AuthenticatedCopyWithImpl(
      _Authenticated _value, $Res Function(_Authenticated) _then)
      : super(_value, (v) => _then(v as _Authenticated));

  @override
  _Authenticated get _value => super._value as _Authenticated;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_Authenticated(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as FFStudent,
    ));
  }

  @override
  $FFStudentCopyWith<$Res> get user {
    return $FFStudentCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
class _$_Authenticated implements _Authenticated {
  const _$_Authenticated({required this.user});

  @override
  final FFStudent user;

  @override
  String toString() {
    return 'UserState.authenticated(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Authenticated &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$AuthenticatedCopyWith<_Authenticated> get copyWith =>
      __$AuthenticatedCopyWithImpl<_Authenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function() authenticating,
    required TResult Function(FFStudent user) authenticated,
    required TResult Function(dynamic errorMessage) authenticationFailed,
  }) {
    return authenticated(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? authenticating,
    TResult Function(FFStudent user)? authenticated,
    TResult Function(dynamic errorMessage)? authenticationFailed,
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
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Authenticating value) authenticating,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_AuthenticationFailure value)
        authenticationFailed,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Authenticating value)? authenticating,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_AuthenticationFailure value)? authenticationFailed,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated implements UserState {
  const factory _Authenticated({required FFStudent user}) = _$_Authenticated;

  FFStudent get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AuthenticatedCopyWith<_Authenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AuthenticationFailureCopyWith<$Res> {
  factory _$AuthenticationFailureCopyWith(_AuthenticationFailure value,
          $Res Function(_AuthenticationFailure) then) =
      __$AuthenticationFailureCopyWithImpl<$Res>;
  $Res call({dynamic errorMessage});
}

/// @nodoc
class __$AuthenticationFailureCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res>
    implements _$AuthenticationFailureCopyWith<$Res> {
  __$AuthenticationFailureCopyWithImpl(_AuthenticationFailure _value,
      $Res Function(_AuthenticationFailure) _then)
      : super(_value, (v) => _then(v as _AuthenticationFailure));

  @override
  _AuthenticationFailure get _value => super._value as _AuthenticationFailure;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_AuthenticationFailure(
      errorMessage == freezed ? _value.errorMessage : errorMessage,
    ));
  }
}

/// @nodoc
class _$_AuthenticationFailure implements _AuthenticationFailure {
  const _$_AuthenticationFailure(this.errorMessage);

  @override
  final dynamic errorMessage;

  @override
  String toString() {
    return 'UserState.authenticationFailed(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthenticationFailure &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorMessage);

  @JsonKey(ignore: true)
  @override
  _$AuthenticationFailureCopyWith<_AuthenticationFailure> get copyWith =>
      __$AuthenticationFailureCopyWithImpl<_AuthenticationFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function() authenticating,
    required TResult Function(FFStudent user) authenticated,
    required TResult Function(dynamic errorMessage) authenticationFailed,
  }) {
    return authenticationFailed(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? authenticating,
    TResult Function(FFStudent user)? authenticated,
    TResult Function(dynamic errorMessage)? authenticationFailed,
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
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Authenticating value) authenticating,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_AuthenticationFailure value)
        authenticationFailed,
  }) {
    return authenticationFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Authenticating value)? authenticating,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_AuthenticationFailure value)? authenticationFailed,
    required TResult orElse(),
  }) {
    if (authenticationFailed != null) {
      return authenticationFailed(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationFailure implements UserState {
  const factory _AuthenticationFailure(dynamic errorMessage) =
      _$_AuthenticationFailure;

  dynamic get errorMessage => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AuthenticationFailureCopyWith<_AuthenticationFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
