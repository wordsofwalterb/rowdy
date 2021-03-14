import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:rowdy/services/entity_repository.dart';
import 'package:rowdy/services/post_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'feed_cubit.freezed.dart';
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

// class FeedSettings {
//   const FeedSettings();
// }

class FeedSort {
  const FeedSort(this.orderBy, {this.descending = false});

  final String orderBy;
  final bool descending;
}

class FeedFilter {
  const FeedFilter(this.filterField, {this.isEqualTo});

  final String filterField;
  final dynamic isEqualTo;
}

// abstract class FFFeedRepository<T> implements Cubit<Map<String, Feed<T>>> {
//   Future<void> setupFeed(
//     String feedId, {
//     FeedFilter? filter,
//     FeedSort? sort,
//     required int limit,
//   });
//   Future<void> closeFeed(String feedId);
//   Future<void> refreshFeed(String feedId);
//   Future<void> fetchFeedPage(String feedId);
//   // maybe
//   Future<void> addItem(T item);
//   Future<void> removeItem(String itemId);
// }
