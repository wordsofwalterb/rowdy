import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rowdy/util/global.dart';

import 'feed.dart';
import 'feed_filter.dart';
import 'feed_sort.dart';

mixin FeedRepoMixin<T> implements Cubit<Map<String, Feed<T>>> {
  Future<void> setupFeed(
    String feedId, {
    FeedFilter? filter,
    FeedSort? sort,
    required int limit,
  }) async {
    final ref = FFGlobal.collectionMapper[T];
    Query? query;
    QuerySnapshot snapshot;

    if (ref != null) {
      query = _buildFirestoreQuery(ref, limit, filter, sort);
    } else {
      // Log error
      throw Exception();
    }

    snapshot = await query.get();

    final feedData = parseFirestoreQuery<T>(snapshot);

    var newState = Map.of(state);
    newState[feedId] = Feed(
      isDirty: true,
      feedData: feedData,
      filter: filter,
      sort: sort,
    );

    emit(newState);
  }

  Future<void> closeFeed(String feedId) async {}
  Future<void> refreshFeed(String feedId) async {}
  Future<void> fetchFeedPage(String feedId) async {}
  // maybe
  Future<void> addItemToDb(T item) async {}
  Future<void> deleteItem(String itemId) async {}

  Query _buildFirestoreQuery(
      CollectionReference ref, int limit, FeedFilter? f, FeedSort? s) {
    var query = ref.limit(limit);
    if (f?.filterField != null && f?.isEqualTo != null) {
      query = query.where(f?.filterField, isEqualTo: f?.isEqualTo);
    }
    if (s?.orderBy != null) {
      query = query.orderBy(s?.orderBy, descending: s?.descending ?? false);
    }
    return query;
  }
}
