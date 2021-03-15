import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:rowdy/services/entity_repository.dart';
import 'package:rowdy/services/feeds/feed_filter.dart'.da'package:rowdy/services/feeds/feed_sort.dart'ds/feed_sort.dart';
import 'package:rowdy/services/post_repository.dart';
import 'package:freezed_annotation/freezed_'../../cubits/feed_cubit/feed_cubit.freezed.dart'feed_cu'../../cubits/feed_cubit/feed_state.dart';
part 'feed_state.dart';

class FeedCubit<T> extends Cubit<FeedState<T>> {
  FeedCubit({
    required this.feedId,
    required this.repository,
    this.defaultLimit = 20,
    this.sort,
    this.filter,
  }) : super(const FeedState.initial()) {
    repoSubscription = repository.listen((repoState) {
      if (repoState.containsKey(feedId)) {
        if (repoState[feedId]!.isDirty) {
          print(repoState[feedId]!.feedData.toString());
          state.maybeWhen(
              loading: () =>
                  emit(FeedState.loaded(repoState[feedId]!.feedData)),
              loaded: (list) =>
                  emit(FeedState.loaded(repoState[feedId]!.feedData)),
              orElse: () => print('here'));
          repoState[feedId]!.isDirty = false;
        }
      }
    });
  }

  EntityListRepository<T> repository;
  int defaultLimit;
  String feedId;
  FeedFilter? filter;
  FeedSort? sort;
  late StreamSubscription repoSubscription;

  @override
  Future<void> close() {
    repoSubscription.cancel();
    return super.close();
  }

  Future<void> setupFeed() async {
    emit(const FeedState.loading());
    await repository.setupFeed(
      feedId,
      limit: defaultLimit,
      filter: filter,
      sort: sort,
    );
  }

  Future<void> addItemToFeed(T item) async {}
  Future<void> removeItemFromFeed(String itemId) async {}
  Future<void> refreshFeed() async {}
  Future<void> fetchPage({
    required DateTime startAfter,
    required int limit,
  }) async {}
}
