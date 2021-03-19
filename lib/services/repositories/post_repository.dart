import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:rowdy/models/model.dart';
import 'package:rowdy/services/feeds/feed_cubit/feed_cubit.dart';
import 'package:rowdy/services/firebase_service/firebase_service.dart';

import '../../models/post.dart';
import '../feeds/feed.dart';
import '../feeds/feed_repo_mixin.dart';
import '../feeds/feed_repo_mixin.dart';
import '../likable/likable.dart';
import '../mixins/like_repo_mixin.dart';
import 'student_repository.dart';

class PostRepository extends Cubit<Map<String, FFPost>>
    with FeedMixin<FFPost>, LikeRepoMixin<FFPost> {
  PostRepository(this.service) : super({});

  @override
  FirebaseService<FFPost> service;

  Future<void> updateCommentCount(String postId, int byValue) async {}
}
