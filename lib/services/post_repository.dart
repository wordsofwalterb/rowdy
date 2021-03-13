import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rowdy/cubits/Feed_Cubit/feed_cubit.dart';
import 'package:rowdy/models/post.dart';
import 'package:rowdy/models/student.dart';

class FFPostRepository extends Cubit<List<FFPost>>
    with FFFeedRepository<FFPost> {
  FFPostRepository() : super([]);

  Future<void> unlikePost(String postId) async {}
  Future<void> likePost(String postId) async {}
  Future<void> updateCommentCount(String postId, int byValue) async {}

  @override
  Future<void> closeFeed() async {}

  @override
  Future<void> setupFeed() async {}

  @override
  Future<void> addItem(FFPost item) {
    // TODO: implement addItem
    throw UnimplementedError();
  }

  @override
  Future<void> fetchFeedPage() {
    // TODO: implement fetchFeedPage
    throw UnimplementedError();
  }

  @override
  Future<void> refreshFeed() {
    // TODO: implement refreshFeed
    throw UnimplementedError();
  }

  @override
  Future<void> removeItem() {
    // TODO: implement removeItem
    throw UnimplementedError();
  }
}
