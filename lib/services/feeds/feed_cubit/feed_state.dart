part of 'feed_cubit.dart';

@freezed
class FeedState with _$FeedState {
  const factory FeedState.initial(List<String> itemIds) = _Initial;
  const factory FeedState.loading(List<String> itemIds) = _Loading;
  const factory FeedState.loaded(List<String> itemIds) = _Success;
  const factory FeedState.reachedMax(List<String> itemIds) = _ReachedMax;
  const factory FeedState.empty(List<String> itemIds) = _Empty;
  const factory FeedState.failure(List<String> itemIds) = _Failure;
}
