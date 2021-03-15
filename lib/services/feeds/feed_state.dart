part of '../../services/feeds/feed_cubit.dart';

@freezed
abstract class FeedState<T> with _$FeedState {
  const factory FeedState.initial() = _Initial;
  const factory FeedState.loading() = _Loading;
  const factory FeedState.loaded(List<T> items) = _Success;
  const factory FeedState.reachedMax(List<T> items) = _ReachedMax;
  const factory FeedState.empty(List<T> items) = _Empty;
  const factory FeedState.failure(List<T> items) = _Failure;
}
