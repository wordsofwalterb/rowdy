// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'feed_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FeedStateTearOff {
  const _$FeedStateTearOff();

  _Initial<T> initial<T>() {
    return _Initial<T>();
  }

  _Loading<T> loading<T>() {
    return _Loading<T>();
  }

  _Success<T> loaded<T>(List<T> items) {
    return _Success<T>(
      items,
    );
  }

  _ReachedMax<T> reachedMax<T>(List<T> items) {
    return _ReachedMax<T>(
      items,
    );
  }

  _Empty<T> empty<T>(List<T> items) {
    return _Empty<T>(
      items,
    );
  }

  _Failure<T> failure<T>(List<T> items) {
    return _Failure<T>(
      items,
    );
  }
}

/// @nodoc
const $FeedState = _$FeedStateTearOff();

/// @nodoc
mixin _$FeedState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<T> items) loaded,
    required TResult Function(List<T> items) reachedMax,
    required TResult Function(List<T> items) empty,
    required TResult Function(List<T> items) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<T> items)? loaded,
    TResult Function(List<T> items)? reachedMax,
    TResult Function(List<T> items)? empty,
    TResult Function(List<T> items)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Success<T> value) loaded,
    required TResult Function(_ReachedMax<T> value) reachedMax,
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_Failure<T> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Success<T> value)? loaded,
    TResult Function(_ReachedMax<T> value)? reachedMax,
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_Failure<T> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedStateCopyWith<T, $Res> {
  factory $FeedStateCopyWith(
          FeedState<T> value, $Res Function(FeedState<T>) then) =
      _$FeedStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$FeedStateCopyWithImpl<T, $Res> implements $FeedStateCopyWith<T, $Res> {
  _$FeedStateCopyWithImpl(this._value, this._then);

  final FeedState<T> _value;
  // ignore: unused_field
  final $Res Function(FeedState<T>) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<T, $Res> {
  factory _$InitialCopyWith(
          _Initial<T> value, $Res Function(_Initial<T>) then) =
      __$InitialCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<T, $Res> extends _$FeedStateCopyWithImpl<T, $Res>
    implements _$InitialCopyWith<T, $Res> {
  __$InitialCopyWithImpl(_Initial<T> _value, $Res Function(_Initial<T>) _then)
      : super(_value, (v) => _then(v as _Initial<T>));

  @override
  _Initial<T> get _value => super._value as _Initial<T>;
}

/// @nodoc
class _$_Initial<T> implements _Initial<T> {
  const _$_Initial();

  @override
  String toString() {
    return 'FeedState<$T>.initial()';
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
    required TResult Function(List<T> items) loaded,
    required TResult Function(List<T> items) reachedMax,
    required TResult Function(List<T> items) empty,
    required TResult Function(List<T> items) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<T> items)? loaded,
    TResult Function(List<T> items)? reachedMax,
    TResult Function(List<T> items)? empty,
    TResult Function(List<T> items)? failure,
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
    required TResult Function(_Success<T> value) loaded,
    required TResult Function(_ReachedMax<T> value) reachedMax,
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_Failure<T> value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Success<T> value)? loaded,
    TResult Function(_ReachedMax<T> value)? reachedMax,
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_Failure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements FeedState<T> {
  const factory _Initial() = _$_Initial<T>;
}

/// @nodoc
abstract class _$LoadingCopyWith<T, $Res> {
  factory _$LoadingCopyWith(
          _Loading<T> value, $Res Function(_Loading<T>) then) =
      __$LoadingCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<T, $Res> extends _$FeedStateCopyWithImpl<T, $Res>
    implements _$LoadingCopyWith<T, $Res> {
  __$LoadingCopyWithImpl(_Loading<T> _value, $Res Function(_Loading<T>) _then)
      : super(_value, (v) => _then(v as _Loading<T>));

  @override
  _Loading<T> get _value => super._value as _Loading<T>;
}

/// @nodoc
class _$_Loading<T> implements _Loading<T> {
  const _$_Loading();

  @override
  String toString() {
    return 'FeedState<$T>.loading()';
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
    required TResult Function(List<T> items) loaded,
    required TResult Function(List<T> items) reachedMax,
    required TResult Function(List<T> items) empty,
    required TResult Function(List<T> items) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<T> items)? loaded,
    TResult Function(List<T> items)? reachedMax,
    TResult Function(List<T> items)? empty,
    TResult Function(List<T> items)? failure,
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
    required TResult Function(_Success<T> value) loaded,
    required TResult Function(_ReachedMax<T> value) reachedMax,
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_Failure<T> value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Success<T> value)? loaded,
    TResult Function(_ReachedMax<T> value)? reachedMax,
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_Failure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading<T> implements FeedState<T> {
  const factory _Loading() = _$_Loading<T>;
}

/// @nodoc
abstract class _$SuccessCopyWith<T, $Res> {
  factory _$SuccessCopyWith(
          _Success<T> value, $Res Function(_Success<T>) then) =
      __$SuccessCopyWithImpl<T, $Res>;
  $Res call({List<T> items});
}

/// @nodoc
class __$SuccessCopyWithImpl<T, $Res> extends _$FeedStateCopyWithImpl<T, $Res>
    implements _$SuccessCopyWith<T, $Res> {
  __$SuccessCopyWithImpl(_Success<T> _value, $Res Function(_Success<T>) _then)
      : super(_value, (v) => _then(v as _Success<T>));

  @override
  _Success<T> get _value => super._value as _Success<T>;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_Success<T>(
      items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }
}

/// @nodoc
class _$_Success<T> implements _Success<T> {
  const _$_Success(this.items);

  @override
  final List<T> items;

  @override
  String toString() {
    return 'FeedState<$T>.loaded(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Success<T> &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(items);

  @JsonKey(ignore: true)
  @override
  _$SuccessCopyWith<T, _Success<T>> get copyWith =>
      __$SuccessCopyWithImpl<T, _Success<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<T> items) loaded,
    required TResult Function(List<T> items) reachedMax,
    required TResult Function(List<T> items) empty,
    required TResult Function(List<T> items) failure,
  }) {
    return loaded(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<T> items)? loaded,
    TResult Function(List<T> items)? reachedMax,
    TResult Function(List<T> items)? empty,
    TResult Function(List<T> items)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Success<T> value) loaded,
    required TResult Function(_ReachedMax<T> value) reachedMax,
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_Failure<T> value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Success<T> value)? loaded,
    TResult Function(_ReachedMax<T> value)? reachedMax,
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_Failure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Success<T> implements FeedState<T> {
  const factory _Success(List<T> items) = _$_Success<T>;

  List<T> get items => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SuccessCopyWith<T, _Success<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ReachedMaxCopyWith<T, $Res> {
  factory _$ReachedMaxCopyWith(
          _ReachedMax<T> value, $Res Function(_ReachedMax<T>) then) =
      __$ReachedMaxCopyWithImpl<T, $Res>;
  $Res call({List<T> items});
}

/// @nodoc
class __$ReachedMaxCopyWithImpl<T, $Res>
    extends _$FeedStateCopyWithImpl<T, $Res>
    implements _$ReachedMaxCopyWith<T, $Res> {
  __$ReachedMaxCopyWithImpl(
      _ReachedMax<T> _value, $Res Function(_ReachedMax<T>) _then)
      : super(_value, (v) => _then(v as _ReachedMax<T>));

  @override
  _ReachedMax<T> get _value => super._value as _ReachedMax<T>;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_ReachedMax<T>(
      items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }
}

/// @nodoc
class _$_ReachedMax<T> implements _ReachedMax<T> {
  const _$_ReachedMax(this.items);

  @override
  final List<T> items;

  @override
  String toString() {
    return 'FeedState<$T>.reachedMax(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReachedMax<T> &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(items);

  @JsonKey(ignore: true)
  @override
  _$ReachedMaxCopyWith<T, _ReachedMax<T>> get copyWith =>
      __$ReachedMaxCopyWithImpl<T, _ReachedMax<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<T> items) loaded,
    required TResult Function(List<T> items) reachedMax,
    required TResult Function(List<T> items) empty,
    required TResult Function(List<T> items) failure,
  }) {
    return reachedMax(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<T> items)? loaded,
    TResult Function(List<T> items)? reachedMax,
    TResult Function(List<T> items)? empty,
    TResult Function(List<T> items)? failure,
    required TResult orElse(),
  }) {
    if (reachedMax != null) {
      return reachedMax(items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Success<T> value) loaded,
    required TResult Function(_ReachedMax<T> value) reachedMax,
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_Failure<T> value) failure,
  }) {
    return reachedMax(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Success<T> value)? loaded,
    TResult Function(_ReachedMax<T> value)? reachedMax,
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_Failure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (reachedMax != null) {
      return reachedMax(this);
    }
    return orElse();
  }
}

abstract class _ReachedMax<T> implements FeedState<T> {
  const factory _ReachedMax(List<T> items) = _$_ReachedMax<T>;

  List<T> get items => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ReachedMaxCopyWith<T, _ReachedMax<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EmptyCopyWith<T, $Res> {
  factory _$EmptyCopyWith(_Empty<T> value, $Res Function(_Empty<T>) then) =
      __$EmptyCopyWithImpl<T, $Res>;
  $Res call({List<T> items});
}

/// @nodoc
class __$EmptyCopyWithImpl<T, $Res> extends _$FeedStateCopyWithImpl<T, $Res>
    implements _$EmptyCopyWith<T, $Res> {
  __$EmptyCopyWithImpl(_Empty<T> _value, $Res Function(_Empty<T>) _then)
      : super(_value, (v) => _then(v as _Empty<T>));

  @override
  _Empty<T> get _value => super._value as _Empty<T>;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_Empty<T>(
      items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }
}

/// @nodoc
class _$_Empty<T> implements _Empty<T> {
  const _$_Empty(this.items);

  @override
  final List<T> items;

  @override
  String toString() {
    return 'FeedState<$T>.empty(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Empty<T> &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(items);

  @JsonKey(ignore: true)
  @override
  _$EmptyCopyWith<T, _Empty<T>> get copyWith =>
      __$EmptyCopyWithImpl<T, _Empty<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<T> items) loaded,
    required TResult Function(List<T> items) reachedMax,
    required TResult Function(List<T> items) empty,
    required TResult Function(List<T> items) failure,
  }) {
    return empty(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<T> items)? loaded,
    TResult Function(List<T> items)? reachedMax,
    TResult Function(List<T> items)? empty,
    TResult Function(List<T> items)? failure,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Success<T> value) loaded,
    required TResult Function(_ReachedMax<T> value) reachedMax,
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_Failure<T> value) failure,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Success<T> value)? loaded,
    TResult Function(_ReachedMax<T> value)? reachedMax,
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_Failure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty<T> implements FeedState<T> {
  const factory _Empty(List<T> items) = _$_Empty<T>;

  List<T> get items => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$EmptyCopyWith<T, _Empty<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailureCopyWith<T, $Res> {
  factory _$FailureCopyWith(
          _Failure<T> value, $Res Function(_Failure<T>) then) =
      __$FailureCopyWithImpl<T, $Res>;
  $Res call({List<T> items});
}

/// @nodoc
class __$FailureCopyWithImpl<T, $Res> extends _$FeedStateCopyWithImpl<T, $Res>
    implements _$FailureCopyWith<T, $Res> {
  __$FailureCopyWithImpl(_Failure<T> _value, $Res Function(_Failure<T>) _then)
      : super(_value, (v) => _then(v as _Failure<T>));

  @override
  _Failure<T> get _value => super._value as _Failure<T>;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_Failure<T>(
      items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }
}

/// @nodoc
class _$_Failure<T> implements _Failure<T> {
  const _$_Failure(this.items);

  @override
  final List<T> items;

  @override
  String toString() {
    return 'FeedState<$T>.failure(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Failure<T> &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(items);

  @JsonKey(ignore: true)
  @override
  _$FailureCopyWith<T, _Failure<T>> get copyWith =>
      __$FailureCopyWithImpl<T, _Failure<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<T> items) loaded,
    required TResult Function(List<T> items) reachedMax,
    required TResult Function(List<T> items) empty,
    required TResult Function(List<T> items) failure,
  }) {
    return failure(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<T> items)? loaded,
    TResult Function(List<T> items)? reachedMax,
    TResult Function(List<T> items)? empty,
    TResult Function(List<T> items)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Success<T> value) loaded,
    required TResult Function(_ReachedMax<T> value) reachedMax,
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_Failure<T> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Success<T> value)? loaded,
    TResult Function(_ReachedMax<T> value)? reachedMax,
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_Failure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure<T> implements FeedState<T> {
  const factory _Failure(List<T> items) = _$_Failure<T>;

  List<T> get items => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FailureCopyWith<T, _Failure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
