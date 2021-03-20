import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rowdy/models/model.dart';
import 'package:rowdy/services/firebase_service/firebase_service.dart';

part 'feed_stream_state.dart';
part 'feed_stream_cubit.freezed.dart';

class FeedStreamCubit<T extends Model> extends Cubit<FeedStreamState<T>> {
  FeedStreamCubit({
    required this.repository,
    required this.query,
    this.limit = 20,
  }) : super(const FeedStreamState.initial({})) {
    query = query.limit(limit);
  }

  final FirebaseService repository;
  Query query;
  final int limit;

  @override
  Future<void> close() {
    // repository.closeFeed(this);
    return super.close();
  }

  Future<void> setupFeed() async {
    emit(const FeedStreamState.loading({}));

    final stream = repository.getStreamFromQuery(query);

    stream.listen((itemList) {
      if (itemList.isEmpty) {
        emit(const FeedStreamState.empty({}));
      } else if (itemList.length < limit) {
        final map = itemList.map((e) => {e.id, e}) as Map<String, T>;
        emit(FeedStreamState.reachedMax(map));
      } else {
        final map = itemList.map((e) => {e.id, e}) as Map<String, T>;
        emit(FeedStreamState.loaded(map));
      }
    }).onError((error) => emit(FeedStreamState.failure({})));
  }

  // Future<void> addItemToFeed(String itemId) async {
  //   state.maybeWhen(
  //     loaded: (itemIds) => emit(FeedState.loaded(itemIds..add(itemId))),
  //     orElse: () => emit(FeedState.reachedMax([itemId])),
  //   );
  // }

  // Future<void> removeItemFromFeed(String itemId) async {
  //   state.maybeWhen(
  //       loaded: (itemIds) =>
  //           emit(FeedState.loaded(itemIds..removeWhere((e) => e == itemId))),
  //       reachedMax: (itemIds) => emit(
  //           FeedState.reachedMax(itemIds..removeWhere((e) => e == itemId))),
  //       orElse: () =>
  //           throw Exception('Tried to remove item in improper state.'));
  // }

  // Future<void> refreshFeed() async {
  //   await repository.refreshFeed(state.itemIds);
  // }

  Future<void> fetchPage({
    required String startAfterDoc,
  }) async {}
}
