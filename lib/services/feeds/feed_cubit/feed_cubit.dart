import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rowdy/services/repositories/student_repository.dart';

import '../feed_repo_mixin.dart';

part 'feed_state.dart';
part 'feed_cubit.freezed.dart';

class FeedCubit<R extends FeedMixin> extends Cubit<FeedState> {
  FeedCubit({
    required this.repository,
    required this.query,
    this.limit = 20,
  }) : super(const FeedState.initial([])) {
    queryParams = query.parameters;
  }

  final R repository;
  Query query;
  final int limit;
  late Map<String, dynamic> queryParams;

  @override
  Future<void> close() {
    repository.closeFeed(this);
    return super.close();
  }

  Future<void> setupFeed() async {
    emit(const FeedState.loading([]));

    final result = await repository.setupPaginatedFeed(this);

    if (result.hasData) {
      if (result.data!.isEmpty) {
        emit(const FeedState.empty([]));
      } else if (result.data!.length < limit) {
        emit(FeedState.reachedMax(result.data!));
      } else {
        emit(FeedState.loaded(result.data!));
      }
    } else {
      emit(FeedState.failure(result.data!));
    }
  }

  Future<void> addItemToFeed(String itemId) async {
    state.maybeWhen(
      loaded: (itemIds) => emit(FeedState.loaded(itemIds..add(itemId))),
      orElse: () => emit(FeedState.reachedMax([itemId])),
    );
  }

  Future<void> removeItemFromFeed(String itemId) async {
    state.maybeWhen(
        loaded: (itemIds) =>
            emit(FeedState.loaded(itemIds..removeWhere((e) => e == itemId))),
        reachedMax: (itemIds) => emit(
            FeedState.reachedMax(itemIds..removeWhere((e) => e == itemId))),
        orElse: () =>
            throw Exception('Tried to remove item in improper state.'));
  }

  Future<void> refreshFeed() async {
    await repository.refreshFeed(state.itemIds);
  }

  Future<void> fetchPage({
    required DateTime startAfter,
    required int limit,
  }) async {}
}
