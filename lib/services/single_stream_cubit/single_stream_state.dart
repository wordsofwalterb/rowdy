part of 'single_stream_cubit.dart';

@freezed
abstract class SingleStreamState<T extends Model> with _$SingleStreamState<T> {
  const factory SingleStreamState.initial() = _Initial;
  const factory SingleStreamState.loading() = _Loading;
  const factory SingleStreamState.loaded(T item) = _Loaded;
  const factory SingleStreamState.failure() = _Failure;
}
