import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:rowdy/models/model.dart';
import 'package:rowdy/services/feeds/feed_cubit/feed_cubit.dart';

import '../../models/post.dart';
import '../feeds/feed.dart';
import '../feeds/feed_repo_mixin.dart';
import '../feeds/feed_repo_mixin.dart';
import '../likable/likable.dart';
import '../likable/like_repo_mixin.dart';

class PostRepository with FeedRepoMixin<FFPost>, LikeRepoMixin<FFPost> {
  PostRepository() : super();

  Future<void> updateCommentCount(String postId, int byValue) async {}
}
