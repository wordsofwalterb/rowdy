// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'feed_stream_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FeedStreamStateTearOff {
  const _$FeedStreamStateTearOff();

  _Initial<T> initial<T extends Model>(Map<String, T> itemIds) {
    return _Initial<T>(
      itemIds,
    );
  }

  _Loading<T> loading<T extends Model>(Map<String, T> itemIds) {
    return _Loading<T>(
      itemIds,
    );
  }

  _Success<T> loaded<T extends Model>(Map<String, T> itemIds) {
    return _Success<T>(
      itemIds,
    );
  }

  _ReachedMax<T> reachedMax<T extends Model>(Map<String, T> itemIds) {
    return _ReachedMax<T>(
      itemIds,
    );
  }

  _Empty<T> empty<T extends Model>(Map<String, T> itemIds) {
    return _Empty<T>(
      itemIds,
    );
  }

  _Failure<T> failure<T extends Model>(Map<String, T> itemIds) {
    return _Failure<T>(
      itemIds,
    );
  }
}

/// @nodoc
const $FeedStreamState = _$FeedStreamStateTearOff();

/// @nodoc
mixin _$FeedStreamState<T extends Model> {
  Map<String, T> get itemIds => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, T> itemIds) initial,
    required TResult Function(Map<String, T> itemIds) loading,
    required TResult Function(Map<String, T> itemIds) loaded,
    required TResult Function(Map<String, T> itemIds) reachedMax,
    required TResult Function(Map<String, T> itemIds) empty,
    required TResult Function(Map<String, T> itemIds) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, T> itemIds)? initial,
    TResult Function(Map<String, T> itemIds)? loading,
    TResult Function(Map<String, T> itemIds)? loaded,
    TResult Function(Map<String, T> itemIds)? reachedMax,
    TResult Function(Map<String, T> itemIds)? empty,
    TResult Function(Map<String, T> itemIds)? failure,
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

  @JsonKey(ignore: true)
  $FeedStreamStateCopyWith<T, FeedStreamState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedStreamStateCopyWith<T extends Model, $Res> {
  factory $FeedStreamStateCopyWith(
          FeedStreamState<T> value, $Res Function(FeedStreamState<T>) then) =
      _$FeedStreamStateCopyWithImpl<T, $Res>;
  $Res call({Map<String, T> itemIds});
}

/// @nodoc
class _$FeedStreamStateCopyWithImpl<T extends Model, $Res>
    implements $FeedStreamStateCopyWith<T, $Res> {
  _$FeedStreamStateCopyWithImpl(this._value, this._then);

  final FeedStreamState<T> _value;
  // ignore: unused_field
  final $Res Function(FeedStreamState<T>) _then;

  @override
  $Res call({
    Object? itemIds = freezed,
  }) {
    return _then(_value.copyWith(
      itemIds: itemIds == freezed
          ? _value.itemIds
          : itemIds // ignore: cast_nullable_to_non_nullable
              as Map<String, T>,
    ));
  }
}

/// @nodoc
abstract class _$InitialCopyWith<T extends Model, $Res>
    implements $FeedStreamStateCopyWith<T, $Res> {
  factory _$InitialCopyWith(
          _Initial<T> value, $Res Function(_Initial<T>) then) =
      __$InitialCopyWithImpl<T, $Res>;
  @override
  $Res call({Map<String, T> itemIds});
}

/// @nodoc
class __$InitialCopyWithImpl<T extends Model, $Res>
    extends _$FeedStreamStateCopyWithImpl<T, $Res>
    implements _$InitialCopyWith<T, $Res> {
  __$InitialCopyWithImpl(_Initial<T> _value, $Res Function(_Initial<T>) _then)
      : super(_value, (v) => _then(v as _Initial<T>));

  @override
  _Initial<T> get _value => super._value as _Initial<T>;

  @override
  $Res call({
    Object? itemIds = freezed,
  }) {
    return _then(_Initial<T>(
      itemIds == freezed
          ? _value.itemIds
          : itemIds // ignore: cast_nullable_to_non_nullable
              as Map<String, T>,
    ));
  }
}

/// @nodoc
class _$_Initial<T extends Model> implements _Initial<T> {
  const _$_Initial(this.itemIds);

  @override
  final Map<String, T> itemIds;

  @override
  String toString() {
    return 'FeedStreamState<$T>.initial(itemIds: $itemIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initial<T> &&
            (identical(other.itemIds, itemIds) ||
                const DeepCollectionEquality().equals(other.itemIds, itemIds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(itemIds);

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<T, _Initial<T>> get copyWith =>
      __$InitialCopyWithImpl<T, _Initial<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, T> itemIds) initial,
    required TResult Function(Map<String, T> itemIds) loading,
    required TResult Function(Map<String, T> itemIds) loaded,
    required TResult Function(Map<String, T> itemIds) reachedMax,
    required TResult Function(Map<String, T> itemIds) empty,
    required TResult Function(Map<String, T> itemIds) failure,
  }) {
    return initial(itemIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, T> itemIds)? initial,
    TResult Function(Map<String, T> itemIds)? loading,
    TResult Function(Map<String, T> itemIds)? loaded,
    TResult Function(Map<String, T> itemIds)? reachedMax,
    TResult Function(Map<String, T> itemIds)? empty,
    TResult Function(Map<String, T> itemIds)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(itemIds);
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

abstract class _Initial<T extends Model> implements FeedStreamState<T> {
  const factory _Initial(Map<String, T> itemIds) = _$_Initial<T>;

  @override
  Map<String, T> get itemIds => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<T, _Initial<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadingCopyWith<T extends Model, $Res>
    implements $FeedStreamStateCopyWith<T, $Res> {
  factory _$LoadingCopyWith(
          _Loading<T> value, $Res Function(_Loading<T>) then) =
      __$LoadingCopyWithImpl<T, $Res>;
  @override
  $Res call({Map<String, T> itemIds});
}

/// @nodoc
class __$LoadingCopyWithImpl<T extends Model, $Res>
    extends _$FeedStreamStateCopyWithImpl<T, $Res>
    implements _$LoadingCopyWith<T, $Res> {
  __$LoadingCopyWithImpl(_Loading<T> _value, $Res Function(_Loading<T>) _then)
      : super(_value, (v) => _then(v as _Loading<T>));

  @override
  _Loading<T> get _value => super._value as _Loading<T>;

  @override
  $Res call({
    Object? itemIds = freezed,
  }) {
    return _then(_Loading<T>(
      itemIds == freezed
          ? _value.itemIds
          : itemIds // ignore: cast_nullable_to_non_nullable
              as Map<String, T>,
    ));
  }
}

/// @nodoc
class _$_Loading<T extends Model> implements _Loading<T> {
  const _$_Loading(this.itemIds);

  @override
  final Map<String, T> itemIds;

  @override
  String toString() {
    return 'FeedStreamState<$T>.loading(itemIds: $itemIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loading<T> &&
            (identical(other.itemIds, itemIds) ||
                const DeepCollectionEquality().equals(other.itemIds, itemIds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(itemIds);

  @JsonKey(ignore: true)
  @override
  _$LoadingCopyWith<T, _Loading<T>> get copyWith =>
      __$LoadingCopyWithImpl<T, _Loading<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, T> itemIds) initial,
    required TResult Function(Map<String, T> itemIds) loading,
    required TResult Function(Map<String, T> itemIds) loaded,
    required TResult Function(Map<String, T> itemIds) reachedMax,
    required TResult Function(Map<String, T> itemIds) empty,
    required TResult Function(Map<String, T> itemIds) failure,
  }) {
    return loading(itemIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, T> itemIds)? initial,
    TResult Function(Map<String, T> itemIds)? loading,
    TResult Function(Map<String, T> itemIds)? loaded,
    TResult Function(Map<String, T> itemIds)? reachedMax,
    TResult Function(Map<String, T> itemIds)? empty,
    TResult Function(Map<String, T> itemIds)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(itemIds);
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

abstract class _Loading<T extends Model> implements FeedStreamState<T> {
  const factory _Loading(Map<String, T> itemIds) = _$_Loading<T>;

  @override
  Map<String, T> get itemIds => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoadingCopyWith<T, _Loading<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SuccessCopyWith<T extends Model, $Res>
    implements $FeedStreamStateCopyWith<T, $Res> {
  factory _$SuccessCopyWith(
          _Success<T> value, $Res Function(_Success<T>) then) =
      __$SuccessCopyWithImpl<T, $Res>;
  @override
  $Res call({Map<String, T> itemIds});
}

/// @nodoc
class __$SuccessCopyWithImpl<T extends Model, $Res>
    extends _$FeedStreamStateCopyWithImpl<T, $Res>
    implements _$SuccessCopyWith<T, $Res> {
  __$SuccessCopyWithImpl(_Success<T> _value, $Res Function(_Success<T>) _then)
      : super(_value, (v) => _then(v as _Success<T>));

  @override
  _Success<T> get _value => super._value as _Success<T>;

  @override
  $Res call({
    Object? itemIds = freezed,
  }) {
    return _then(_Success<T>(
      itemIds == freezed
          ? _value.itemIds
          : itemIds // ignore: cast_nullable_to_non_nullable
              as Map<String, T>,
    ));
  }
}

/// @nodoc
class _$_Success<T extends Model> implements _Success<T> {
  const _$_Success(this.itemIds);

  @override
  final Map<String, T> itemIds;

  @override
  String toString() {
    return 'FeedStreamState<$T>.loaded(itemIds: $itemIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Success<T> &&
            (identical(other.itemIds, itemIds) ||
                const DeepCollectionEquality().equals(other.itemIds, itemIds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(itemIds);

  @JsonKey(ignore: true)
  @override
  _$SuccessCopyWith<T, _Success<T>> get copyWith =>
      __$SuccessCopyWithImpl<T, _Success<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, T> itemIds) initial,
    required TResult Function(Map<String, T> itemIds) loading,
    required TResult Function(Map<String, T> itemIds) loaded,
    required TResult Function(Map<String, T> itemIds) reachedMax,
    required TResult Function(Map<String, T> itemIds) empty,
    required TResult Function(Map<String, T> itemIds) failure,
  }) {
    return loaded(itemIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, T> itemIds)? initial,
    TResult Function(Map<String, T> itemIds)? loading,
    TResult Function(Map<String, T> itemIds)? loaded,
    TResult Function(Map<String, T> itemIds)? reachedMax,
    TResult Function(Map<String, T> itemIds)? empty,
    TResult Function(Map<String, T> itemIds)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(itemIds);
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

abstract class _Success<T extends Model> implements FeedStreamState<T> {
  const factory _Success(Map<String, T> itemIds) = _$_Success<T>;

  @override
  Map<String, T> get itemIds => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SuccessCopyWith<T, _Success<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ReachedMaxCopyWith<T extends Model, $Res>
    implements $FeedStreamStateCopyWith<T, $Res> {
  factory _$ReachedMaxCopyWith(
          _ReachedMax<T> value, $Res Function(_ReachedMax<T>) then) =
      __$ReachedMaxCopyWithImpl<T, $Res>;
  @override
  $Res call({Map<String, T> itemIds});
}

/// @nodoc
class __$ReachedMaxCopyWithImpl<T extends Model, $Res>
    extends _$FeedStreamStateCopyWithImpl<T, $Res>
    implements _$ReachedMaxCopyWith<T, $Res> {
  __$ReachedMaxCopyWithImpl(
      _ReachedMax<T> _value, $Res Function(_ReachedMax<T>) _then)
      : super(_value, (v) => _then(v as _ReachedMax<T>));

  @override
  _ReachedMax<T> get _value => super._value as _ReachedMax<T>;

  @override
  $Res call({
    Object? itemIds = freezed,
  }) {
    return _then(_ReachedMax<T>(
      itemIds == freezed
          ? _value.itemIds
          : itemIds // ignore: cast_nullable_to_non_nullable
              as Map<String, T>,
    ));
  }
}

/// @nodoc
class _$_ReachedMax<T extends Model> implements _ReachedMax<T> {
  const _$_ReachedMax(this.itemIds);

  @override
  final Map<String, T> itemIds;

  @override
  String toString() {
    return 'FeedStreamState<$T>.reachedMax(itemIds: $itemIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReachedMax<T> &&
            (identical(other.itemIds, itemIds) ||
                const DeepCollectionEquality().equals(other.itemIds, itemIds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(itemIds);

  @JsonKey(ignore: true)
  @override
  _$ReachedMaxCopyWith<T, _ReachedMax<T>> get copyWith =>
      __$ReachedMaxCopyWithImpl<T, _ReachedMax<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, T> itemIds) initial,
    required TResult Function(Map<String, T> itemIds) loading,
    required TResult Function(Map<String, T> itemIds) loaded,
    required TResult Function(Map<String, T> itemIds) reachedMax,
    required TResult Function(Map<String, T> itemIds) empty,
    required TResult Function(Map<String, T> itemIds) failure,
  }) {
    return reachedMax(itemIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, T> itemIds)? initial,
    TResult Function(Map<String, T> itemIds)? loading,
    TResult Function(Map<String, T> itemIds)? loaded,
    TResult Function(Map<String, T> itemIds)? reachedMax,
    TResult Function(Map<String, T> itemIds)? empty,
    TResult Function(Map<String, T> itemIds)? failure,
    required TResult orElse(),
  }) {
    if (reachedMax != null) {
      return reachedMax(itemIds);
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

abstract class _ReachedMax<T extends Model> implements FeedStreamState<T> {
  const factory _ReachedMax(Map<String, T> itemIds) = _$_ReachedMax<T>;

  @override
  Map<String, T> get itemIds => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ReachedMaxCopyWith<T, _ReachedMax<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EmptyCopyWith<T extends Model, $Res>
    implements $FeedStreamStateCopyWith<T, $Res> {
  factory _$EmptyCopyWith(_Empty<T> value, $Res Function(_Empty<T>) then) =
      __$EmptyCopyWithImpl<T, $Res>;
  @override
  $Res call({Map<String, T> itemIds});
}

/// @nodoc
class __$EmptyCopyWithImpl<T extends Model, $Res>
    extends _$FeedStreamStateCopyWithImpl<T, $Res>
    implements _$EmptyCopyWith<T, $Res> {
  __$EmptyCopyWithImpl(_Empty<T> _value, $Res Function(_Empty<T>) _then)
      : super(_value, (v) => _then(v as _Empty<T>));

  @override
  _Empty<T> get _value => super._value as _Empty<T>;

  @override
  $Res call({
    Object? itemIds = freezed,
  }) {
    return _then(_Empty<T>(
      itemIds == freezed
          ? _value.itemIds
          : itemIds // ignore: cast_nullable_to_non_nullable
              as Map<String, T>,
    ));
  }
}

/// @nodoc
class _$_Empty<T extends Model> implements _Empty<T> {
  const _$_Empty(this.itemIds);

  @override
  final Map<String, T> itemIds;

  @override
  String toString() {
    return 'FeedStreamState<$T>.empty(itemIds: $itemIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Empty<T> &&
            (identical(other.itemIds, itemIds) ||
                const DeepCollectionEquality().equals(other.itemIds, itemIds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(itemIds);

  @JsonKey(ignore: true)
  @override
  _$EmptyCopyWith<T, _Empty<T>> get copyWith =>
      __$EmptyCopyWithImpl<T, _Empty<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, T> itemIds) initial,
    required TResult Function(Map<String, T> itemIds) loading,
    required TResult Function(Map<String, T> itemIds) loaded,
    required TResult Function(Map<String, T> itemIds) reachedMax,
    required TResult Function(Map<String, T> itemIds) empty,
    required TResult Function(Map<String, T> itemIds) failure,
  }) {
    return empty(itemIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, T> itemIds)? initial,
    TResult Function(Map<String, T> itemIds)? loading,
    TResult Function(Map<String, T> itemIds)? loaded,
    TResult Function(Map<String, T> itemIds)? reachedMax,
    TResult Function(Map<String, T> itemIds)? empty,
    TResult Function(Map<String, T> itemIds)? failure,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(itemIds);
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

abstract class _Empty<T extends Model> implements FeedStreamState<T> {
  const factory _Empty(Map<String, T> itemIds) = _$_Empty<T>;

  @override
  Map<String, T> get itemIds => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EmptyCopyWith<T, _Empty<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailureCopyWith<T extends Model, $Res>
    implements $FeedStreamStateCopyWith<T, $Res> {
  factory _$FailureCopyWith(
          _Failure<T> value, $Res Function(_Failure<T>) then) =
      __$FailureCopyWithImpl<T, $Res>;
  @override
  $Res call({Map<String, T> itemIds});
}

/// @nodoc
class __$FailureCopyWithImpl<T extends Model, $Res>
    extends _$FeedStreamStateCopyWithImpl<T, $Res>
    implements _$FailureCopyWith<T, $Res> {
  __$FailureCopyWithImpl(_Failure<T> _value, $Res Function(_Failure<T>) _then)
      : super(_value, (v) => _then(v as _Failure<T>));

  @override
  _Failure<T> get _value => super._value as _Failure<T>;

  @override
  $Res call({
    Object? itemIds = freezed,
  }) {
    return _then(_Failure<T>(
      itemIds == freezed
          ? _value.itemIds
          : itemIds // ignore: cast_nullable_to_non_nullable
              as Map<String, T>,
    ));
  }
}

/// @nodoc
class _$_Failure<T extends Model> implements _Failure<T> {
  const _$_Failure(this.itemIds);

  @override
  final Map<String, T> itemIds;

  @override
  String toString() {
    return 'FeedStreamState<$T>.failure(itemIds: $itemIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Failure<T> &&
            (identical(other.itemIds, itemIds) ||
                const DeepCollectionEquality().equals(other.itemIds, itemIds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(itemIds);

  @JsonKey(ignore: true)
  @override
  _$FailureCopyWith<T, _Failure<T>> get copyWith =>
      __$FailureCopyWithImpl<T, _Failure<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, T> itemIds) initial,
    required TResult Function(Map<String, T> itemIds) loading,
    required TResult Function(Map<String, T> itemIds) loaded,
    required TResult Function(Map<String, T> itemIds) reachedMax,
    required TResult Function(Map<String, T> itemIds) empty,
    required TResult Function(Map<String, T> itemIds) failure,
  }) {
    return failure(itemIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, T> itemIds)? initial,
    TResult Function(Map<String, T> itemIds)? loading,
    TResult Function(Map<String, T> itemIds)? loaded,
    TResult Function(Map<String, T> itemIds)? reachedMax,
    TResult Function(Map<String, T> itemIds)? empty,
    TResult Function(Map<String, T> itemIds)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(itemIds);
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

abstract class _Failure<T extends Model> implements FeedStreamState<T> {
  const factory _Failure(Map<String, T> itemIds) = _$_Failure<T>;

  @override
  Map<String, T> get itemIds => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FailureCopyWith<T, _Failure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
