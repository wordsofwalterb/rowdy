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

  _Unauthenticated<T> unauthenticated<T>() {
    return _Unauthenticated<T>();
  }

  _Authenticating<T> authenticating<T>() {
    return _Authenticating<T>();
  }

  _Authenticated<T> authenticated<T>({required T user}) {
    return _Authenticated<T>(
      user: user,
    );
  }

  _AuthenticationFailure<T> authenticationFailed<T>(dynamic errorMessage) {
    return _AuthenticationFailure<T>(
      errorMessage,
    );
  }
}

/// @nodoc
const $UserState = _$UserStateTearOff();

/// @nodoc
mixin _$UserState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function() authenticating,
    required TResult Function(T user) authenticated,
    required TResult Function(dynamic errorMessage) authenticationFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? authenticating,
    TResult Function(T user)? authenticated,
    TResult Function(dynamic errorMessage)? authenticationFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unauthenticated<T> value) unauthenticated,
    required TResult Function(_Authenticating<T> value) authenticating,
    required TResult Function(_Authenticated<T> value) authenticated,
    required TResult Function(_AuthenticationFailure<T> value)
        authenticationFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unauthenticated<T> value)? unauthenticated,
    TResult Function(_Authenticating<T> value)? authenticating,
    TResult Function(_Authenticated<T> value)? authenticated,
    TResult Function(_AuthenticationFailure<T> value)? authenticationFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<T, $Res> {
  factory $UserStateCopyWith(
          UserState<T> value, $Res Function(UserState<T>) then) =
      _$UserStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$UserStateCopyWithImpl<T, $Res> implements $UserStateCopyWith<T, $Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  final UserState<T> _value;
  // ignore: unused_field
  final $Res Function(UserState<T>) _then;
}

/// @nodoc
abstract class _$UnauthenticatedCopyWith<T, $Res> {
  factory _$UnauthenticatedCopyWith(
          _Unauthenticated<T> value, $Res Function(_Unauthenticated<T>) then) =
      __$UnauthenticatedCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$UnauthenticatedCopyWithImpl<T, $Res>
    extends _$UserStateCopyWithImpl<T, $Res>
    implements _$UnauthenticatedCopyWith<T, $Res> {
  __$UnauthenticatedCopyWithImpl(
      _Unauthenticated<T> _value, $Res Function(_Unauthenticated<T>) _then)
      : super(_value, (v) => _then(v as _Unauthenticated<T>));

  @override
  _Unauthenticated<T> get _value => super._value as _Unauthenticated<T>;
}

/// @nodoc
class _$_Unauthenticated<T> implements _Unauthenticated<T> {
  const _$_Unauthenticated();

  @override
  String toString() {
    return 'UserState<$T>.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Unauthenticated<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function() authenticating,
    required TResult Function(T user) authenticated,
    required TResult Function(dynamic errorMessage) authenticationFailed,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? authenticating,
    TResult Function(T user)? authenticated,
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
    required TResult Function(_Unauthenticated<T> value) unauthenticated,
    required TResult Function(_Authenticating<T> value) authenticating,
    required TResult Function(_Authenticated<T> value) authenticated,
    required TResult Function(_AuthenticationFailure<T> value)
        authenticationFailed,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unauthenticated<T> value)? unauthenticated,
    TResult Function(_Authenticating<T> value)? authenticating,
    TResult Function(_Authenticated<T> value)? authenticated,
    TResult Function(_AuthenticationFailure<T> value)? authenticationFailed,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _Unauthenticated<T> implements UserState<T> {
  const factory _Unauthenticated() = _$_Unauthenticated<T>;
}

/// @nodoc
abstract class _$AuthenticatingCopyWith<T, $Res> {
  factory _$AuthenticatingCopyWith(
          _Authenticating<T> value, $Res Function(_Authenticating<T>) then) =
      __$AuthenticatingCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$AuthenticatingCopyWithImpl<T, $Res>
    extends _$UserStateCopyWithImpl<T, $Res>
    implements _$AuthenticatingCopyWith<T, $Res> {
  __$AuthenticatingCopyWithImpl(
      _Authenticating<T> _value, $Res Function(_Authenticating<T>) _then)
      : super(_value, (v) => _then(v as _Authenticating<T>));

  @override
  _Authenticating<T> get _value => super._value as _Authenticating<T>;
}

/// @nodoc
class _$_Authenticating<T> implements _Authenticating<T> {
  const _$_Authenticating();

  @override
  String toString() {
    return 'UserState<$T>.authenticating()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Authenticating<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function() authenticating,
    required TResult Function(T user) authenticated,
    required TResult Function(dynamic errorMessage) authenticationFailed,
  }) {
    return authenticating();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? authenticating,
    TResult Function(T user)? authenticated,
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
    required TResult Function(_Unauthenticated<T> value) unauthenticated,
    required TResult Function(_Authenticating<T> value) authenticating,
    required TResult Function(_Authenticated<T> value) authenticated,
    required TResult Function(_AuthenticationFailure<T> value)
        authenticationFailed,
  }) {
    return authenticating(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unauthenticated<T> value)? unauthenticated,
    TResult Function(_Authenticating<T> value)? authenticating,
    TResult Function(_Authenticated<T> value)? authenticated,
    TResult Function(_AuthenticationFailure<T> value)? authenticationFailed,
    required TResult orElse(),
  }) {
    if (authenticating != null) {
      return authenticating(this);
    }
    return orElse();
  }
}

abstract class _Authenticating<T> implements UserState<T> {
  const factory _Authenticating() = _$_Authenticating<T>;
}

/// @nodoc
abstract class _$AuthenticatedCopyWith<T, $Res> {
  factory _$AuthenticatedCopyWith(
          _Authenticated<T> value, $Res Function(_Authenticated<T>) then) =
      __$AuthenticatedCopyWithImpl<T, $Res>;
  $Res call({T user});
}

/// @nodoc
class __$AuthenticatedCopyWithImpl<T, $Res>
    extends _$UserStateCopyWithImpl<T, $Res>
    implements _$AuthenticatedCopyWith<T, $Res> {
  __$AuthenticatedCopyWithImpl(
      _Authenticated<T> _value, $Res Function(_Authenticated<T>) _then)
      : super(_value, (v) => _then(v as _Authenticated<T>));

  @override
  _Authenticated<T> get _value => super._value as _Authenticated<T>;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_Authenticated<T>(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
class _$_Authenticated<T> implements _Authenticated<T> {
  const _$_Authenticated({required this.user});

  @override
  final T user;

  @override
  String toString() {
    return 'UserState<$T>.authenticated(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Authenticated<T> &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$AuthenticatedCopyWith<T, _Authenticated<T>> get copyWith =>
      __$AuthenticatedCopyWithImpl<T, _Authenticated<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function() authenticating,
    required TResult Function(T user) authenticated,
    required TResult Function(dynamic errorMessage) authenticationFailed,
  }) {
    return authenticated(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? authenticating,
    TResult Function(T user)? authenticated,
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
    required TResult Function(_Unauthenticated<T> value) unauthenticated,
    required TResult Function(_Authenticating<T> value) authenticating,
    required TResult Function(_Authenticated<T> value) authenticated,
    required TResult Function(_AuthenticationFailure<T> value)
        authenticationFailed,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unauthenticated<T> value)? unauthenticated,
    TResult Function(_Authenticating<T> value)? authenticating,
    TResult Function(_Authenticated<T> value)? authenticated,
    TResult Function(_AuthenticationFailure<T> value)? authenticationFailed,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated<T> implements UserState<T> {
  const factory _Authenticated({required T user}) = _$_Authenticated<T>;

  T get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AuthenticatedCopyWith<T, _Authenticated<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AuthenticationFailureCopyWith<T, $Res> {
  factory _$AuthenticationFailureCopyWith(_AuthenticationFailure<T> value,
          $Res Function(_AuthenticationFailure<T>) then) =
      __$AuthenticationFailureCopyWithImpl<T, $Res>;
  $Res call({dynamic errorMessage});
}

/// @nodoc
class __$AuthenticationFailureCopyWithImpl<T, $Res>
    extends _$UserStateCopyWithImpl<T, $Res>
    implements _$AuthenticationFailureCopyWith<T, $Res> {
  __$AuthenticationFailureCopyWithImpl(_AuthenticationFailure<T> _value,
      $Res Function(_AuthenticationFailure<T>) _then)
      : super(_value, (v) => _then(v as _AuthenticationFailure<T>));

  @override
  _AuthenticationFailure<T> get _value =>
      super._value as _AuthenticationFailure<T>;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_AuthenticationFailure<T>(
      errorMessage == freezed ? _value.errorMessage : errorMessage,
    ));
  }
}

/// @nodoc
class _$_AuthenticationFailure<T> implements _AuthenticationFailure<T> {
  const _$_AuthenticationFailure(this.errorMessage);

  @override
  final dynamic errorMessage;

  @override
  String toString() {
    return 'UserState<$T>.authenticationFailed(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthenticationFailure<T> &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorMessage);

  @JsonKey(ignore: true)
  @override
  _$AuthenticationFailureCopyWith<T, _AuthenticationFailure<T>> get copyWith =>
      __$AuthenticationFailureCopyWithImpl<T, _AuthenticationFailure<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function() authenticating,
    required TResult Function(T user) authenticated,
    required TResult Function(dynamic errorMessage) authenticationFailed,
  }) {
    return authenticationFailed(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? authenticating,
    TResult Function(T user)? authenticated,
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
    required TResult Function(_Unauthenticated<T> value) unauthenticated,
    required TResult Function(_Authenticating<T> value) authenticating,
    required TResult Function(_Authenticated<T> value) authenticated,
    required TResult Function(_AuthenticationFailure<T> value)
        authenticationFailed,
  }) {
    return authenticationFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unauthenticated<T> value)? unauthenticated,
    TResult Function(_Authenticating<T> value)? authenticating,
    TResult Function(_Authenticated<T> value)? authenticated,
    TResult Function(_AuthenticationFailure<T> value)? authenticationFailed,
    required TResult orElse(),
  }) {
    if (authenticationFailed != null) {
      return authenticationFailed(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationFailure<T> implements UserState<T> {
  const factory _AuthenticationFailure(dynamic errorMessage) =
      _$_AuthenticationFailure<T>;

  dynamic get errorMessage => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AuthenticationFailureCopyWith<T, _AuthenticationFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
