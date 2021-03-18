// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'register_form_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RegisterFormStateTearOff {
  const _$RegisterFormStateTearOff();

  _Initial initial({required bool isPasswordHidden}) {
    return _Initial(
      isPasswordHidden: isPasswordHidden,
    );
  }

  _Processing processing({required bool isPasswordHidden}) {
    return _Processing(
      isPasswordHidden: isPasswordHidden,
    );
  }

  _Success success({required bool isPasswordHidden}) {
    return _Success(
      isPasswordHidden: isPasswordHidden,
    );
  }

  _Failure failure(String error,
      {required bool isPasswordHidden,
      required bool isPasswordValid,
      required bool isEmailValid,
      required bool isFirstNameValid,
      required bool isLastNameValid}) {
    return _Failure(
      error,
      isPasswordHidden: isPasswordHidden,
      isPasswordValid: isPasswordValid,
      isEmailValid: isEmailValid,
      isFirstNameValid: isFirstNameValid,
      isLastNameValid: isLastNameValid,
    );
  }
}

/// @nodoc
const $RegisterFormState = _$RegisterFormStateTearOff();

/// @nodoc
mixin _$RegisterFormState {
  bool get isPasswordHidden => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isPasswordHidden) initial,
    required TResult Function(bool isPasswordHidden) processing,
    required TResult Function(bool isPasswordHidden) success,
    required TResult Function(
            String error,
            bool isPasswordHidden,
            bool isPasswordValid,
            bool isEmailValid,
            bool isFirstNameValid,
            bool isLastNameValid)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isPasswordHidden)? initial,
    TResult Function(bool isPasswordHidden)? processing,
    TResult Function(bool isPasswordHidden)? success,
    TResult Function(String error, bool isPasswordHidden, bool isPasswordValid,
            bool isEmailValid, bool isFirstNameValid, bool isLastNameValid)?
        failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Processing value) processing,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Processing value)? processing,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterFormStateCopyWith<RegisterFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterFormStateCopyWith<$Res> {
  factory $RegisterFormStateCopyWith(
          RegisterFormState value, $Res Function(RegisterFormState) then) =
      _$RegisterFormStateCopyWithImpl<$Res>;
  $Res call({bool isPasswordHidden});
}

/// @nodoc
class _$RegisterFormStateCopyWithImpl<$Res>
    implements $RegisterFormStateCopyWith<$Res> {
  _$RegisterFormStateCopyWithImpl(this._value, this._then);

  final RegisterFormState _value;
  // ignore: unused_field
  final $Res Function(RegisterFormState) _then;

  @override
  $Res call({
    Object? isPasswordHidden = freezed,
  }) {
    return _then(_value.copyWith(
      isPasswordHidden: isPasswordHidden == freezed
          ? _value.isPasswordHidden
          : isPasswordHidden // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res>
    implements $RegisterFormStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call({bool isPasswordHidden});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$RegisterFormStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? isPasswordHidden = freezed,
  }) {
    return _then(_Initial(
      isPasswordHidden: isPasswordHidden == freezed
          ? _value.isPasswordHidden
          : isPasswordHidden // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial({required this.isPasswordHidden});

  @override
  final bool isPasswordHidden;

  @override
  String toString() {
    return 'RegisterFormState.initial(isPasswordHidden: $isPasswordHidden)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initial &&
            (identical(other.isPasswordHidden, isPasswordHidden) ||
                const DeepCollectionEquality()
                    .equals(other.isPasswordHidden, isPasswordHidden)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isPasswordHidden);

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isPasswordHidden) initial,
    required TResult Function(bool isPasswordHidden) processing,
    required TResult Function(bool isPasswordHidden) success,
    required TResult Function(
            String error,
            bool isPasswordHidden,
            bool isPasswordValid,
            bool isEmailValid,
            bool isFirstNameValid,
            bool isLastNameValid)
        failure,
  }) {
    return initial(isPasswordHidden);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isPasswordHidden)? initial,
    TResult Function(bool isPasswordHidden)? processing,
    TResult Function(bool isPasswordHidden)? success,
    TResult Function(String error, bool isPasswordHidden, bool isPasswordValid,
            bool isEmailValid, bool isFirstNameValid, bool isLastNameValid)?
        failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(isPasswordHidden);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Processing value) processing,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Processing value)? processing,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RegisterFormState {
  const factory _Initial({required bool isPasswordHidden}) = _$_Initial;

  @override
  bool get isPasswordHidden => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ProcessingCopyWith<$Res>
    implements $RegisterFormStateCopyWith<$Res> {
  factory _$ProcessingCopyWith(
          _Processing value, $Res Function(_Processing) then) =
      __$ProcessingCopyWithImpl<$Res>;
  @override
  $Res call({bool isPasswordHidden});
}

/// @nodoc
class __$ProcessingCopyWithImpl<$Res>
    extends _$RegisterFormStateCopyWithImpl<$Res>
    implements _$ProcessingCopyWith<$Res> {
  __$ProcessingCopyWithImpl(
      _Processing _value, $Res Function(_Processing) _then)
      : super(_value, (v) => _then(v as _Processing));

  @override
  _Processing get _value => super._value as _Processing;

  @override
  $Res call({
    Object? isPasswordHidden = freezed,
  }) {
    return _then(_Processing(
      isPasswordHidden: isPasswordHidden == freezed
          ? _value.isPasswordHidden
          : isPasswordHidden // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$_Processing implements _Processing {
  const _$_Processing({required this.isPasswordHidden});

  @override
  final bool isPasswordHidden;

  @override
  String toString() {
    return 'RegisterFormState.processing(isPasswordHidden: $isPasswordHidden)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Processing &&
            (identical(other.isPasswordHidden, isPasswordHidden) ||
                const DeepCollectionEquality()
                    .equals(other.isPasswordHidden, isPasswordHidden)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isPasswordHidden);

  @JsonKey(ignore: true)
  @override
  _$ProcessingCopyWith<_Processing> get copyWith =>
      __$ProcessingCopyWithImpl<_Processing>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isPasswordHidden) initial,
    required TResult Function(bool isPasswordHidden) processing,
    required TResult Function(bool isPasswordHidden) success,
    required TResult Function(
            String error,
            bool isPasswordHidden,
            bool isPasswordValid,
            bool isEmailValid,
            bool isFirstNameValid,
            bool isLastNameValid)
        failure,
  }) {
    return processing(isPasswordHidden);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isPasswordHidden)? initial,
    TResult Function(bool isPasswordHidden)? processing,
    TResult Function(bool isPasswordHidden)? success,
    TResult Function(String error, bool isPasswordHidden, bool isPasswordValid,
            bool isEmailValid, bool isFirstNameValid, bool isLastNameValid)?
        failure,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(isPasswordHidden);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Processing value) processing,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return processing(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Processing value)? processing,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(this);
    }
    return orElse();
  }
}

abstract class _Processing implements RegisterFormState {
  const factory _Processing({required bool isPasswordHidden}) = _$_Processing;

  @override
  bool get isPasswordHidden => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProcessingCopyWith<_Processing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SuccessCopyWith<$Res>
    implements $RegisterFormStateCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
  @override
  $Res call({bool isPasswordHidden});
}

/// @nodoc
class __$SuccessCopyWithImpl<$Res> extends _$RegisterFormStateCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(_Success _value, $Res Function(_Success) _then)
      : super(_value, (v) => _then(v as _Success));

  @override
  _Success get _value => super._value as _Success;

  @override
  $Res call({
    Object? isPasswordHidden = freezed,
  }) {
    return _then(_Success(
      isPasswordHidden: isPasswordHidden == freezed
          ? _value.isPasswordHidden
          : isPasswordHidden // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$_Success implements _Success {
  const _$_Success({required this.isPasswordHidden});

  @override
  final bool isPasswordHidden;

  @override
  String toString() {
    return 'RegisterFormState.success(isPasswordHidden: $isPasswordHidden)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Success &&
            (identical(other.isPasswordHidden, isPasswordHidden) ||
                const DeepCollectionEquality()
                    .equals(other.isPasswordHidden, isPasswordHidden)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isPasswordHidden);

  @JsonKey(ignore: true)
  @override
  _$SuccessCopyWith<_Success> get copyWith =>
      __$SuccessCopyWithImpl<_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isPasswordHidden) initial,
    required TResult Function(bool isPasswordHidden) processing,
    required TResult Function(bool isPasswordHidden) success,
    required TResult Function(
            String error,
            bool isPasswordHidden,
            bool isPasswordValid,
            bool isEmailValid,
            bool isFirstNameValid,
            bool isLastNameValid)
        failure,
  }) {
    return success(isPasswordHidden);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isPasswordHidden)? initial,
    TResult Function(bool isPasswordHidden)? processing,
    TResult Function(bool isPasswordHidden)? success,
    TResult Function(String error, bool isPasswordHidden, bool isPasswordValid,
            bool isEmailValid, bool isFirstNameValid, bool isLastNameValid)?
        failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(isPasswordHidden);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Processing value) processing,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Processing value)? processing,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements RegisterFormState {
  const factory _Success({required bool isPasswordHidden}) = _$_Success;

  @override
  bool get isPasswordHidden => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SuccessCopyWith<_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res>
    implements $RegisterFormStateCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
  @override
  $Res call(
      {String error,
      bool isPasswordHidden,
      bool isPasswordValid,
      bool isEmailValid,
      bool isFirstNameValid,
      bool isLastNameValid});
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> extends _$RegisterFormStateCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;

  @override
  $Res call({
    Object? error = freezed,
    Object? isPasswordHidden = freezed,
    Object? isPasswordValid = freezed,
    Object? isEmailValid = freezed,
    Object? isFirstNameValid = freezed,
    Object? isLastNameValid = freezed,
  }) {
    return _then(_Failure(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      isPasswordHidden: isPasswordHidden == freezed
          ? _value.isPasswordHidden
          : isPasswordHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordValid: isPasswordValid == freezed
          ? _value.isPasswordValid
          : isPasswordValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isEmailValid: isEmailValid == freezed
          ? _value.isEmailValid
          : isEmailValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isFirstNameValid: isFirstNameValid == freezed
          ? _value.isFirstNameValid
          : isFirstNameValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isLastNameValid: isLastNameValid == freezed
          ? _value.isLastNameValid
          : isLastNameValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$_Failure implements _Failure {
  const _$_Failure(this.error,
      {required this.isPasswordHidden,
      required this.isPasswordValid,
      required this.isEmailValid,
      required this.isFirstNameValid,
      required this.isLastNameValid});

  @override
  final String error;
  @override
  final bool isPasswordHidden;
  @override
  final bool isPasswordValid;
  @override
  final bool isEmailValid;
  @override
  final bool isFirstNameValid;
  @override
  final bool isLastNameValid;

  @override
  String toString() {
    return 'RegisterFormState.failure(error: $error, isPasswordHidden: $isPasswordHidden, isPasswordValid: $isPasswordValid, isEmailValid: $isEmailValid, isFirstNameValid: $isFirstNameValid, isLastNameValid: $isLastNameValid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Failure &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.isPasswordHidden, isPasswordHidden) ||
                const DeepCollectionEquality()
                    .equals(other.isPasswordHidden, isPasswordHidden)) &&
            (identical(other.isPasswordValid, isPasswordValid) ||
                const DeepCollectionEquality()
                    .equals(other.isPasswordValid, isPasswordValid)) &&
            (identical(other.isEmailValid, isEmailValid) ||
                const DeepCollectionEquality()
                    .equals(other.isEmailValid, isEmailValid)) &&
            (identical(other.isFirstNameValid, isFirstNameValid) ||
                const DeepCollectionEquality()
                    .equals(other.isFirstNameValid, isFirstNameValid)) &&
            (identical(other.isLastNameValid, isLastNameValid) ||
                const DeepCollectionEquality()
                    .equals(other.isLastNameValid, isLastNameValid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(isPasswordHidden) ^
      const DeepCollectionEquality().hash(isPasswordValid) ^
      const DeepCollectionEquality().hash(isEmailValid) ^
      const DeepCollectionEquality().hash(isFirstNameValid) ^
      const DeepCollectionEquality().hash(isLastNameValid);

  @JsonKey(ignore: true)
  @override
  _$FailureCopyWith<_Failure> get copyWith =>
      __$FailureCopyWithImpl<_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isPasswordHidden) initial,
    required TResult Function(bool isPasswordHidden) processing,
    required TResult Function(bool isPasswordHidden) success,
    required TResult Function(
            String error,
            bool isPasswordHidden,
            bool isPasswordValid,
            bool isEmailValid,
            bool isFirstNameValid,
            bool isLastNameValid)
        failure,
  }) {
    return failure(error, isPasswordHidden, isPasswordValid, isEmailValid,
        isFirstNameValid, isLastNameValid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isPasswordHidden)? initial,
    TResult Function(bool isPasswordHidden)? processing,
    TResult Function(bool isPasswordHidden)? success,
    TResult Function(String error, bool isPasswordHidden, bool isPasswordValid,
            bool isEmailValid, bool isFirstNameValid, bool isLastNameValid)?
        failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error, isPasswordHidden, isPasswordValid, isEmailValid,
          isFirstNameValid, isLastNameValid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Processing value) processing,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Processing value)? processing,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements RegisterFormState {
  const factory _Failure(String error,
      {required bool isPasswordHidden,
      required bool isPasswordValid,
      required bool isEmailValid,
      required bool isFirstNameValid,
      required bool isLastNameValid}) = _$_Failure;

  String get error => throw _privateConstructorUsedError;
  @override
  bool get isPasswordHidden => throw _privateConstructorUsedError;
  bool get isPasswordValid => throw _privateConstructorUsedError;
  bool get isEmailValid => throw _privateConstructorUsedError;
  bool get isFirstNameValid => throw _privateConstructorUsedError;
  bool get isLastNameValid => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FailureCopyWith<_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
