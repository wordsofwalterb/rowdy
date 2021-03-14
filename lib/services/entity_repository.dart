import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rowdy/cubits/Feed_Cubit/feed_cubit.dart';
import 'package:rowdy/models/post.dart';
import 'package:rowdy/models/student.dart';
import 'package:rowdy/util/global.dart';

class Feed<T> {
  const Feed({
    this.isDirty = false,
    this.feedData = const [],
    this.filter,
    this.sort,
  });

  final bool isDirty;
  final List<T> feedData;
  final FeedFilter? filter;
  final FeedSort? sort;
}

abstract class FeedRepository<T> implements Cubit<Map<String, Feed<T>>> {
  Future<void> setupFeed(
    String feedId, {
    FeedFilter? filter,
    FeedSort? sort,
    required int limit,
  });
  Future<void> closeFeed(String feedId);
  Future<void> refreshFeed(String feedId);
  Future<void> fetchFeedPage(String feedId);
  // maybe
  Future<void> addItem(T item);
  Future<void> removeItem(String itemId);
}

class EntityListRepository<T> extends Cubit<Map<String, Feed<T>>>
    with FeedRepository<T> {
  EntityListRepository() : super({});

  Future<void> unlikeItem(String postId) async {}
  Future<void> likeItem(String postId) async {}
  Future<void> updateCommentCount(String postId, int byValue) async {}

  @override
  Future<void> closeFeed(String feedId) async {
    assert(state.containsKey(feedId));
    state.remove(feedId);
  }

  @override
  Future<void> setupFeed(
    String feedId, {
    FeedFilter? filter,
    FeedSort? sort,
    required int limit,
  }) async {
    final ref = FFGlobal.collectionMapper[FFPost];
    Query? query;
    QuerySnapshot snapshot;

    if (ref != null) {
      query = _buildFirestoreQuery(ref, limit, filter, sort);
    } else {
      // Log error
      throw Exception();
    }

    if (query != null) {
      snapshot = await query.get();
    } else {
      // log error
      throw Exception();
    }

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

  Query _buildFirestoreQuery(
      CollectionReference ref, int limit, FeedFilter? f, FeedSort? s) {
    var query = ref.limit(limit);
    if (f?.filterField != null && f?.isEqualTo != null) {
      query = ref.where(f?.filterField, isEqualTo: f?.isEqualTo);
    }
    if (s?.orderBy != null) {
      query = query.orderBy(s?.orderBy, descending: s?.descending ?? false);
    }
    return query;
  }

  @override
  Future<void> addItem(T item) {
    throw UnimplementedError();
  }

  @override
  Future<void> fetchFeedPage(String feedId) {
    throw UnimplementedError();
  }

  @override
  Future<void> refreshFeed(String feedId) {
    throw UnimplementedError();
  }

  @override
  Future<void> removeItem(String itemId) {
    throw UnimplementedError();
  }
}
