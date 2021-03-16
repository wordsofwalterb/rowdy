import 'dart:async';

import 'package:bloc/bloc.dart';

import 'feeds/feed.dart';
import 'feeds/feed_repo_mixin.dart';

class EntityListRepository<T> extends Cubit<Map<String, Feed<T>>>
    with FeedRepoMixin<T> {
  EntityListRepository() : super({});

  Future<void> unlikeItem(String postId) async {}
  Future<void> likeItem(String postId) async {}
  Future<void> updateCommentCount(String postId, int byValue) async {}
}
