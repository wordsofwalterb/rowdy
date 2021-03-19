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

  _Initial initial(List<String> itemIds) {
    return _Initial(
      itemIds,
    );
  }

  _Loading loading(List<String> itemIds) {
    return _Loading(
      itemIds,
    );
  }

  _Success loaded(List<String> itemIds) {
    return _Success(
      itemIds,
    );
  }

  _ReachedMax reachedMax(List<String> itemIds) {
    return _ReachedMax(
      itemIds,
    );
  }

  _Empty empty(List<String> itemIds) {
    return _Empty(
      itemIds,
    );
  }

  _Failure failure(List<String> itemIds) {
    return _Failure(
      itemIds,
    );
  }
}

/// @nodoc
const $FeedState = _$FeedStateTearOff();

/// @nodoc
mixin _$FeedState {
  List<String> get itemIds => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> itemIds) initial,
    required TResult Function(List<String> itemIds) loading,
    required TResult Function(List<String> itemIds) loaded,
    required TResult Function(List<String> itemIds) reachedMax,
    required TResult Function(List<String> itemIds) empty,
    required TResult Function(List<String> itemIds) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> itemIds)? initial,
    TResult Function(List<String> itemIds)? loading,
    TResult Function(List<String> itemIds)? loaded,
    TResult Function(List<String> itemIds)? reachedMax,
    TResult Function(List<String> itemIds)? empty,
    TResult Function(List<String> itemIds)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) loaded,
    required TResult Function(_ReachedMax value) reachedMax,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? loaded,
    TResult Function(_ReachedMax value)? reachedMax,
    TResult Function(_Empty value)? empty,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FeedStateCopyWith<FeedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedStateCopyWith<$Res> {
  factory $FeedStateCopyWith(FeedState value, $Res Function(FeedState) then) =
      _$FeedStateCopyWithImpl<$Res>;
  $Res call({List<String> itemIds});
}

/// @nodoc
class _$FeedStateCopyWithImpl<$Res> implements $FeedStateCopyWith<$Res> {
  _$FeedStateCopyWithImpl(this._value, this._then);

  final FeedState _value;
  // ignore: unused_field
  final $Res Function(FeedState) _then;

  @override
  $Res call({
    Object? itemIds = freezed,
  }) {
    return _then(_value.copyWith(
      itemIds: itemIds == freezed
          ? _value.itemIds
          : itemIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> implements $FeedStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call({List<String> itemIds});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$FeedStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? itemIds = freezed,
  }) {
    return _then(_Initial(
      itemIds == freezed
          ? _value.itemIds
          : itemIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial(this.itemIds);

  @override
  final List<String> itemIds;

  @override
  String toString() {
    return 'FeedState.initial(itemIds: $itemIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initial &&
            (identical(other.itemIds, itemIds) ||
                const DeepCollectionEquality().equals(other.itemIds, itemIds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(itemIds);

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> itemIds) initial,
    required TResult Function(List<String> itemIds) loading,
    required TResult Function(List<String> itemIds) loaded,
    required TResult Function(List<String> itemIds) reachedMax,
    required TResult Function(List<String> itemIds) empty,
    required TResult Function(List<String> itemIds) failure,
  }) {
    return initial(itemIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> itemIds)? initial,
    TResult Function(List<String> itemIds)? loading,
    TResult Function(List<String> itemIds)? loaded,
    TResult Function(List<String> itemIds)? reachedMax,
    TResult Function(List<String> itemIds)? empty,
    TResult Function(List<String> itemIds)? failure,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) loaded,
    required TResult Function(_ReachedMax value) reachedMax,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? loaded,
    TResult Function(_ReachedMax value)? reachedMax,
    TResult Function(_Empty value)? empty,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FeedState {
  const factory _Initial(List<String> itemIds) = _$_Initial;

  @override
  List<String> get itemIds => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> implements $FeedStateCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
  @override
  $Res call({List<String> itemIds});
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$FeedStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;

  @override
  $Res call({
    Object? itemIds = freezed,
  }) {
    return _then(_Loading(
      itemIds == freezed
          ? _value.itemIds
          : itemIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
class _$_Loading implements _Loading {
  const _$_Loading(this.itemIds);

  @override
  final List<String> itemIds;

  @override
  String toString() {
    return 'FeedState.loading(itemIds: $itemIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loading &&
            (identical(other.itemIds, itemIds) ||
                const DeepCollectionEquality().equals(other.itemIds, itemIds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(itemIds);

  @JsonKey(ignore: true)
  @override
  _$LoadingCopyWith<_Loading> get copyWith =>
      __$LoadingCopyWithImpl<_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> itemIds) initial,
    required TResult Function(List<String> itemIds) loading,
    required TResult Function(List<String> itemIds) loaded,
    required TResult Function(List<String> itemIds) reachedMax,
    required TResult Function(List<String> itemIds) empty,
    required TResult Function(List<String> itemIds) failure,
  }) {
    return loading(itemIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> itemIds)? initial,
    TResult Function(List<String> itemIds)? loading,
    TResult Function(List<String> itemIds)? loaded,
    TResult Function(List<String> itemIds)? reachedMax,
    TResult Function(List<String> itemIds)? empty,
    TResult Function(List<String> itemIds)? failure,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) loaded,
    required TResult Function(_ReachedMax value) reachedMax,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? loaded,
    TResult Function(_ReachedMax value)? reachedMax,
    TResult Function(_Empty value)? empty,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements FeedState {
  const factory _Loading(List<String> itemIds) = _$_Loading;

  @override
  List<String> get itemIds => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoadingCopyWith<_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SuccessCopyWith<$Res> implements $FeedStateCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
  @override
  $Res call({List<String> itemIds});
}

/// @nodoc
class __$SuccessCopyWithImpl<$Res> extends _$FeedStateCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(_Success _value, $Res Function(_Success) _then)
      : super(_value, (v) => _then(v as _Success));

  @override
  _Success get _value => super._value as _Success;

  @override
  $Res call({
    Object? itemIds = freezed,
  }) {
    return _then(_Success(
      itemIds == freezed
          ? _value.itemIds
          : itemIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
class _$_Success implements _Success {
  const _$_Success(this.itemIds);

  @override
  final List<String> itemIds;

  @override
  String toString() {
    return 'FeedState.loaded(itemIds: $itemIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Success &&
            (identical(other.itemIds, itemIds) ||
                const DeepCollectionEquality().equals(other.itemIds, itemIds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(itemIds);

  @JsonKey(ignore: true)
  @override
  _$SuccessCopyWith<_Success> get copyWith =>
      __$SuccessCopyWithImpl<_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> itemIds) initial,
    required TResult Function(List<String> itemIds) loading,
    required TResult Function(List<String> itemIds) loaded,
    required TResult Function(List<String> itemIds) reachedMax,
    required TResult Function(List<String> itemIds) empty,
    required TResult Function(List<String> itemIds) failure,
  }) {
    return loaded(itemIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> itemIds)? initial,
    TResult Function(List<String> itemIds)? loading,
    TResult Function(List<String> itemIds)? loaded,
    TResult Function(List<String> itemIds)? reachedMax,
    TResult Function(List<String> itemIds)? empty,
    TResult Function(List<String> itemIds)? failure,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) loaded,
    required TResult Function(_ReachedMax value) reachedMax,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Failure value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? loaded,
    TResult Function(_ReachedMax value)? reachedMax,
    TResult Function(_Empty value)? empty,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Success implements FeedState {
  const factory _Success(List<String> itemIds) = _$_Success;

  @override
  List<String> get itemIds => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SuccessCopyWith<_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ReachedMaxCopyWith<$Res> implements $FeedStateCopyWith<$Res> {
  factory _$ReachedMaxCopyWith(
          _ReachedMax value, $Res Function(_ReachedMax) then) =
      __$ReachedMaxCopyWithImpl<$Res>;
  @override
  $Res call({List<String> itemIds});
}

/// @nodoc
class __$ReachedMaxCopyWithImpl<$Res> extends _$FeedStateCopyWithImpl<$Res>
    implements _$ReachedMaxCopyWith<$Res> {
  __$ReachedMaxCopyWithImpl(
      _ReachedMax _value, $Res Function(_ReachedMax) _then)
      : super(_value, (v) => _then(v as _ReachedMax));

  @override
  _ReachedMax get _value => super._value as _ReachedMax;

  @override
  $Res call({
    Object? itemIds = freezed,
  }) {
    return _then(_ReachedMax(
      itemIds == freezed
          ? _value.itemIds
          : itemIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
class _$_ReachedMax implements _ReachedMax {
  const _$_ReachedMax(this.itemIds);

  @override
  final List<String> itemIds;

  @override
  String toString() {
    return 'FeedState.reachedMax(itemIds: $itemIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReachedMax &&
            (identical(other.itemIds, itemIds) ||
                const DeepCollectionEquality().equals(other.itemIds, itemIds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(itemIds);

  @JsonKey(ignore: true)
  @override
  _$ReachedMaxCopyWith<_ReachedMax> get copyWith =>
      __$ReachedMaxCopyWithImpl<_ReachedMax>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> itemIds) initial,
    required TResult Function(List<String> itemIds) loading,
    required TResult Function(List<String> itemIds) loaded,
    required TResult Function(List<String> itemIds) reachedMax,
    required TResult Function(List<String> itemIds) empty,
    required TResult Function(List<String> itemIds) failure,
  }) {
    return reachedMax(itemIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> itemIds)? initial,
    TResult Function(List<String> itemIds)? loading,
    TResult Function(List<String> itemIds)? loaded,
    TResult Function(List<String> itemIds)? reachedMax,
    TResult Function(List<String> itemIds)? empty,
    TResult Function(List<String> itemIds)? failure,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) loaded,
    required TResult Function(_ReachedMax value) reachedMax,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Failure value) failure,
  }) {
    return reachedMax(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? loaded,
    TResult Function(_ReachedMax value)? reachedMax,
    TResult Function(_Empty value)? empty,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (reachedMax != null) {
      return reachedMax(this);
    }
    return orElse();
  }
}

abstract class _ReachedMax implements FeedState {
  const factory _ReachedMax(List<String> itemIds) = _$_ReachedMax;

  @override
  List<String> get itemIds => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ReachedMaxCopyWith<_ReachedMax> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EmptyCopyWith<$Res> implements $FeedStateCopyWith<$Res> {
  factory _$EmptyCopyWith(_Empty value, $Res Function(_Empty) then) =
      __$EmptyCopyWithImpl<$Res>;
  @override
  $Res call({List<String> itemIds});
}

/// @nodoc
class __$EmptyCopyWithImpl<$Res> extends _$FeedStateCopyWithImpl<$Res>
    implements _$EmptyCopyWith<$Res> {
  __$EmptyCopyWithImpl(_Empty _value, $Res Function(_Empty) _then)
      : super(_value, (v) => _then(v as _Empty));

  @override
  _Empty get _value => super._value as _Empty;

  @override
  $Res call({
    Object? itemIds = freezed,
  }) {
    return _then(_Empty(
      itemIds == freezed
          ? _value.itemIds
          : itemIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
class _$_Empty implements _Empty {
  const _$_Empty(this.itemIds);

  @override
  final List<String> itemIds;

  @override
  String toString() {
    return 'FeedState.empty(itemIds: $itemIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Empty &&
            (identical(other.itemIds, itemIds) ||
                const DeepCollectionEquality().equals(other.itemIds, itemIds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(itemIds);

  @JsonKey(ignore: true)
  @override
  _$EmptyCopyWith<_Empty> get copyWith =>
      __$EmptyCopyWithImpl<_Empty>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> itemIds) initial,
    required TResult Function(List<String> itemIds) loading,
    required TResult Function(List<String> itemIds) loaded,
    required TResult Function(List<String> itemIds) reachedMax,
    required TResult Function(List<String> itemIds) empty,
    required TResult Function(List<String> itemIds) failure,
  }) {
    return empty(itemIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> itemIds)? initial,
    TResult Function(List<String> itemIds)? loading,
    TResult Function(List<String> itemIds)? loaded,
    TResult Function(List<String> itemIds)? reachedMax,
    TResult Function(List<String> itemIds)? empty,
    TResult Function(List<String> itemIds)? failure,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) loaded,
    required TResult Function(_ReachedMax value) reachedMax,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Failure value) failure,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? loaded,
    TResult Function(_ReachedMax value)? reachedMax,
    TResult Function(_Empty value)? empty,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty implements FeedState {
  const factory _Empty(List<String> itemIds) = _$_Empty;

  @override
  List<String> get itemIds => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EmptyCopyWith<_Empty> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> implements $FeedStateCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
  @override
  $Res call({List<String> itemIds});
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> extends _$FeedStateCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;

  @override
  $Res call({
    Object? itemIds = freezed,
  }) {
    return _then(_Failure(
      itemIds == freezed
          ? _value.itemIds
          : itemIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
class _$_Failure implements _Failure {
  const _$_Failure(this.itemIds);

  @override
  final List<String> itemIds;

  @override
  String toString() {
    return 'FeedState.failure(itemIds: $itemIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Failure &&
            (identical(other.itemIds, itemIds) ||
                const DeepCollectionEquality().equals(other.itemIds, itemIds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(itemIds);

  @JsonKey(ignore: true)
  @override
  _$FailureCopyWith<_Failure> get copyWith =>
      __$FailureCopyWithImpl<_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> itemIds) initial,
    required TResult Function(List<String> itemIds) loading,
    required TResult Function(List<String> itemIds) loaded,
    required TResult Function(List<String> itemIds) reachedMax,
    required TResult Function(List<String> itemIds) empty,
    required TResult Function(List<String> itemIds) failure,
  }) {
    return failure(itemIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> itemIds)? initial,
    TResult Function(List<String> itemIds)? loading,
    TResult Function(List<String> itemIds)? loaded,
    TResult Function(List<String> itemIds)? reachedMax,
    TResult Function(List<String> itemIds)? empty,
    TResult Function(List<String> itemIds)? failure,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) loaded,
    required TResult Function(_ReachedMax value) reachedMax,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? loaded,
    TResult Function(_ReachedMax value)? reachedMax,
    TResult Function(_Empty value)? empty,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements FeedState {
  const factory _Failure(List<String> itemIds) = _$_Failure;

  @override
  List<String> get itemIds => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FailureCopyWith<_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
