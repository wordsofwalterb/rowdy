import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:rowdy/models/model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../feed_filter.dart';
import '../../mixins/feed_repo_mixin.dart';
import '../feed_sort.dart';

part 'feed_state.dart';
part 'feed_cubit.freezed.dart';

class FeedCubit<T extends Model, R extends FeedRepoMixin>
    extends Cubit<FeedState<T>> {
  FeedCubit({
    required this.feedId,
    required this.repository,
    this.defaultLimit = 20,
    this.sort,
    this.filter,
  }) : super(const FeedState.initial());

  R repository;
  int defaultLimit;
  String feedId;
  FeedFilter? filter;
  FeedSort? sort;

  @override
  Future<void> close() {
    // repoSubscription.cancel();
    return super.close();
  }

  Future<void> setupFeed() async {
    emit(const FeedState.loading());
    final data = await repository.openFeed(this) as List<T>;
    emit(FeedState.loaded(data));
  }

  /// Should only be called by repo
  Future<void> updateItemInFeed(T item) async {
    state.maybeWhen(
      loaded: (items) => _replaceInList(items, item),
      reachedMax: (items) => _replaceInList(items, item),
      orElse: () => throw Exception('Wrong state when updated item in feed.'),
    );
  }

  List<T> _replaceInList(List<T> items, T item) {
    final index = items.indexWhere((e) => e.id == item.id);
    if (index != -1) {
      var newList = List<T>.from(items);
      newList[index] = item;
      return newList;
    } else {
      log('Item not found when trying to update feed');
      return items;
    }
  }

  Future<void> addItemToFeed(T item) async {
    state.maybeWhen(
      loaded: (items) => emit(FeedState.loaded(items..add(item))),
      orElse: () => emit(FeedState.reachedMax([item])),
    );
  }

  Future<void> removeItemFromFeed(String itemId) async {
    state.maybeWhen(
        loaded: (items) =>
            emit(FeedState.loaded(items..removeWhere((e) => e.id == itemId))),
        reachedMax: (items) => emit(
            FeedState.reachedMax(items..removeWhere((e) => e.id == itemId))),
        orElse: () =>
            throw Exception('Tried to remove item in improper state.'));
  }

  Future<void> refreshFeed() async {
    final items = await repository.refreshFeed(this) as List<T>;
    if (items.isEmpty) {
      emit(const FeedState.empty([]));
    } else if (items.length < defaultLimit) {
      emit(FeedState.reachedMax(items));
    } else {
      emit(FeedState.loaded(items));
    }
  }

  Future<void> fetchPage({
    required DateTime startAfter,
    required int limit,
  }) async {}
}
