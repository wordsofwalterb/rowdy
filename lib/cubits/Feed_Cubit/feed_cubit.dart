import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:rowdy/services/post_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'feed_cubit.freezed.dart';
part 'feed_state.dart';

class FeedCubit<T> extends Cubit<FeedState<T>> {
  FeedCubit(this.feedId, this.repository,
      {this.settings = const FeedSettings()})
      : super(const FeedState.initial()) {
    repoSubscription = repository.listen((repoState) {});
  }

  FFFeedRepository<T> repository;
  FeedSettings settings;
  String feedId;
  late StreamSubscription repoSubscription;

  @override
  Future<void> close() {
    repoSubscription.cancel();
    return super.close();
  }

  Future<void> setupFeed() async {}
  Future<void> addItemToFeed(T item) async {}
  Future<void> removeItemFromFeed(String itemId) async {}
  Future<void> refreshFeed() async {}
  Future<void> fetchPage({
    required DateTime startAfter,
    required int limit,
  }) async {}
}

class FeedSettings {
  const FeedSettings();
}

abstract class FFFeedRepository<T> implements Cubit<List<T>> {
  Future<void> setupFeed();
  Future<void> closeFeed();
  Future<void> refreshFeed();
  Future<void> fetchFeedPage();
  // maybe
  Future<void> addItem(T item);
  Future<void> removeItem();
}
