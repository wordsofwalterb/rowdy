// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'single_stream_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SingleStreamStateTearOff {
  const _$SingleStreamStateTearOff();

  _Initial<T> initial<T extends Model>() {
    return _Initial<T>();
  }

  _Loading<T> loading<T extends Model>() {
    return _Loading<T>();
  }

  _Loaded<T> loaded<T extends Model>(T item) {
    return _Loaded<T>(
      item,
    );
  }

  _Failure<T> failure<T extends Model>() {
    return _Failure<T>();
  }
}

/// @nodoc
const $SingleStreamState = _$SingleStreamStateTearOff();

/// @nodoc
mixin _$SingleStreamState<T extends Model> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T item) loaded,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T item)? loaded,
    TResult Function()? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Loaded<T> value) loaded,
    required TResult Function(_Failure<T> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Loaded<T> value)? loaded,
    TResult Function(_Failure<T> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleStreamStateCopyWith<T extends Model, $Res> {
  factory $SingleStreamStateCopyWith(SingleStreamState<T> value,
          $Res Function(SingleStreamState<T>) then) =
      _$SingleStreamStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$SingleStreamStateCopyWithImpl<T extends Model, $Res>
    implements $SingleStreamStateCopyWith<T, $Res> {
  _$SingleStreamStateCopyWithImpl(this._value, this._then);

  final SingleStreamState<T> _value;
  // ignore: unused_field
  final $Res Function(SingleStreamState<T>) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<T extends Model, $Res> {
  factory _$InitialCopyWith(
          _Initial<T> value, $Res Function(_Initial<T>) then) =
      __$InitialCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<T extends Model, $Res>
    extends _$SingleStreamStateCopyWithImpl<T, $Res>
    implements _$InitialCopyWith<T, $Res> {
  __$InitialCopyWithImpl(_Initial<T> _value, $Res Function(_Initial<T>) _then)
      : super(_value, (v) => _then(v as _Initial<T>));

  @override
  _Initial<T> get _value => super._value as _Initial<T>;
}

/// @nodoc
class _$_Initial<T extends Model> implements _Initial<T> {
  const _$_Initial();

  @override
  String toString() {
    return 'SingleStreamState<$T>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T item) loaded,
    required TResult Function() failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T item)? loaded,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Loaded<T> value) loaded,
    required TResult Function(_Failure<T> value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Loaded<T> value)? loaded,
    TResult Function(_Failure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T extends Model> implements SingleStreamState<T> {
  const factory _Initial() = _$_Initial<T>;
}

/// @nodoc
abstract class _$LoadingCopyWith<T extends Model, $Res> {
  factory _$LoadingCopyWith(
          _Loading<T> value, $Res Function(_Loading<T>) then) =
      __$LoadingCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<T extends Model, $Res>
    extends _$SingleStreamStateCopyWithImpl<T, $Res>
    implements _$LoadingCopyWith<T, $Res> {
  __$LoadingCopyWithImpl(_Loading<T> _value, $Res Function(_Loading<T>) _then)
      : super(_value, (v) => _then(v as _Loading<T>));

  @override
  _Loading<T> get _value => super._value as _Loading<T>;
}

/// @nodoc
class _$_Loading<T extends Model> implements _Loading<T> {
  const _$_Loading();

  @override
  String toString() {
    return 'SingleStreamState<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T item) loaded,
    required TResult Function() failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T item)? loaded,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Loaded<T> value) loaded,
    required TResult Function(_Failure<T> value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Loaded<T> value)? loaded,
    TResult Function(_Failure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading<T extends Model> implements SingleStreamState<T> {
  const factory _Loading() = _$_Loading<T>;
}

/// @nodoc
abstract class _$LoadedCopyWith<T extends Model, $Res> {
  factory _$LoadedCopyWith(_Loaded<T> value, $Res Function(_Loaded<T>) then) =
      __$LoadedCopyWithImpl<T, $Res>;
  $Res call({T item});
}

/// @nodoc
class __$LoadedCopyWithImpl<T extends Model, $Res>
    extends _$SingleStreamStateCopyWithImpl<T, $Res>
    implements _$LoadedCopyWith<T, $Res> {
  __$LoadedCopyWithImpl(_Loaded<T> _value, $Res Function(_Loaded<T>) _then)
      : super(_value, (v) => _then(v as _Loaded<T>));

  @override
  _Loaded<T> get _value => super._value as _Loaded<T>;

  @override
  $Res call({
    Object? item = freezed,
  }) {
    return _then(_Loaded<T>(
      item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
class _$_Loaded<T extends Model> implements _Loaded<T> {
  const _$_Loaded(this.item);

  @override
  final T item;

  @override
  String toString() {
    return 'SingleStreamState<$T>.loaded(item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loaded<T> &&
            (identical(other.item, item) ||
                const DeepCollectionEquality().equals(other.item, item)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(item);

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<T, _Loaded<T>> get copyWith =>
      __$LoadedCopyWithImpl<T, _Loaded<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T item) loaded,
    required TResult Function() failure,
  }) {
    return loaded(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T item)? loaded,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Loaded<T> value) loaded,
    required TResult Function(_Failure<T> value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Loaded<T> value)? loaded,
    TResult Function(_Failure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded<T extends Model> implements SingleStreamState<T> {
  const factory _Loaded(T item) = _$_Loaded<T>;

  T get item => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<T, _Loaded<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailureCopyWith<T extends Model, $Res> {
  factory _$FailureCopyWith(
          _Failure<T> value, $Res Function(_Failure<T>) then) =
      __$FailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$FailureCopyWithImpl<T extends Model, $Res>
    extends _$SingleStreamStateCopyWithImpl<T, $Res>
    implements _$FailureCopyWith<T, $Res> {
  __$FailureCopyWithImpl(_Failure<T> _value, $Res Function(_Failure<T>) _then)
      : super(_value, (v) => _then(v as _Failure<T>));

  @override
  _Failure<T> get _value => super._value as _Failure<T>;
}

/// @nodoc
class _$_Failure<T extends Model> implements _Failure<T> {
  const _$_Failure();

  @override
  String toString() {
    return 'SingleStreamState<$T>.failure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Failure<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T item) loaded,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T item)? loaded,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Loaded<T> value) loaded,
    required TResult Function(_Failure<T> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Loaded<T> value)? loaded,
    TResult Function(_Failure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure<T extends Model> implements SingleStreamState<T> {
  const factory _Failure() = _$_Failure<T>;
}
