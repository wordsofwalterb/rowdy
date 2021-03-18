import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rowdy/models/model.dart';
import 'package:rowdy/util/global.dart';

import 'feed.dart';
import 'feed_cubit/feed_cubit.dart';
import 'feed_filter.dart';
import 'feed_sort.dart';

mixin FeedRepoMixin<T extends Model> {
  Set<FeedCubit<T, FeedRepoMixin>> feeds = {};

  Future<List<T>> setupPaginatedFeed(FeedCubit<T, FeedRepoMixin> feed) async {
    Query? query;
    final ref = FFGlobal.collectionMapper[T];

    if (ref != null) {
      query = _buildFirestoreQuery(
        ref,
        feed.defaultLimit,
        feed.filter,
        feed.sort,
      );
    } else {
      throw Exception();
    }

    final snapshot = await query.get();

    final feedData = parseFirestoreQuery<T>(snapshot);

    return feedData;
  }

  Future<void> openFeed(FeedCubit<T, FeedRepoMixin> feed) async {
    feeds.add(feed);
  }

  Future<void> closeFeed(String feedId) async {
    feeds.removeWhere((e) => e.feedId == feedId);
  }

  Future<List<T>> refreshFeed(FeedCubit<T, FeedRepoMixin> feed) async {
    Query? query;
    final ref = FFGlobal.collectionMapper[T];

    if (ref != null) {
      query = _buildFirestoreQuery(
        ref,
        feed.defaultLimit,
        feed.filter,
        feed.sort,
      );
    } else {
      throw Exception();
    }

    final snapshot = await query.get();

    final feedData = parseFirestoreQuery<T>(snapshot);

    return feedData;
  }

  Future<void> fetchNextFeedPage(String feedId) async {}

  Future<void> addItemToDb(T item) async {
    final json = item.toJson();

    for (final feed in feeds) {
      final filter = feed.filter;
      if (filter != null) {
        if (json[filter.filterField] == filter.isEqualTo) {
          await feed.addItemToFeed(item);
        }
      }
    }

    final ref = FFGlobal.collectionMapper[T];
    if (ref != null) {
      await ref.add(json);
    }
  }

  Future<void> deleteItemFromDb(String itemId) async {
    for (final feed in feeds) {
      feed.state.maybeWhen(
        loaded: (items) {
          final index = items.indexWhere((e) => e.id == itemId);
          if (index != -1) {
            feed.removeItemFromFeed(itemId);
          }
        },
        orElse: () => {},
      );
    }

    final ref = FFGlobal.collectionMapper[T];
    if (ref != null) {
      await ref.doc(itemId).delete();
    }
  }

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
