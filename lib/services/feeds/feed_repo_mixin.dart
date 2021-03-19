import 'package:bloc/bloc.dart';
import 'package:rowdy/models/model.dart';
import 'package:rowdy/services/firebase_service/firebase_repo_mixin.dart';
import 'package:rowdy/util/result.dart';

import 'feed_cubit/feed_cubit.dart';

mixin FeedMixin<T extends Model> on Cubit<Map<String, T>>
    implements FirebaseServiceMixin<T> {
  final List<FeedCubit> feeds = [];

  Future<FFResult<List<String>>> setupPaginatedFeed(FeedCubit feed) async {
    if (!feeds.contains(feed)) {
      feeds.add(feed);
    }

    final result = await service.getQuery(feed.query);

    if (result.hasData) {
      final newItems = result.data!.map((e) => {e.id, e}) as Map<String, T>;
      emit(state..addAll(newItems));
      return FFResult.success(newItems.keys.toList());
    } else {
      return FFResult.failure(
        errorCode: result.errorCode,
        errorMessage: result.errorMessage,
      );
    }
  }

  Future<void> closeFeed(FeedCubit feed) async {
    feeds.remove(feed);
    final newState = Map<String, T>.from(state);

    for (final feedItemId in feed.state.itemIds) {
      var isGarbageId = true;
      for (final feed in feeds) {
        if (feed.state.itemIds.contains(feedItemId) && isGarbageId) {
          isGarbageId = false;
        }
      }
      if (isGarbageId) {
        newState.removeWhere((e, _) => e == feedItemId);
      }
    }

    emit(newState);
  }

  Future<void> refreshFeed(List<String> itemIds) async {}

  Future<void> fetchNextPage(FeedCubit feed) async {}

  Future<void> addItemToDb(T item) async {}

  Future<void> deleteItemFromDb(String itemId) async {}
}
