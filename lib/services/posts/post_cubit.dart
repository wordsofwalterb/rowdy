import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rowdy/models/post.dart';
import 'package:rowdy/models/student.dart';

class FFPostRepository extends Cubit<List<FFPost>> {
  FFPostRepository() : super([]);
  

  Future<void> unlikePost(String postId) async {
    this.
  }
  Future<void> setupFeed() async {
  }
  Future<void> addPost(FFStudent author, String body, String imageUrl) async {}
  Future<void> likePost(String postId) async {}
  Future<void> deletePost(String postId) async {}
  Future<void> closeFeed(String feedId) async {}
  Future<void> updateCommentCount(String postId, int byValue) async {}
}

class FeedCubit<T> extends Cubit<FeedState<T>> {
  FeedCubit(this.feedId, this.repository, 
  {this.settings = const FeedSettings()})
      : super(const FeedState.initial()) {
        repoSubscription = repository.listen((repoState) { 
          
        });
      }

  FFPostRepository repository;
  FeedSettings settings;
  String feedId;
  late StreamSubscription repoSubscription;

  @override
  Future<void> close() {
    repository.closeFeed(feedId);
    repoSubscription.cancel();
    return super.close();
  }

  Future<void> setupFeed() async {
  }
  Future<void> addItemToFeed(T item) async {}
  Future<void> removeItemFromFeed(String itemId) async {}
  Future<void> refreshFeed() async {}
  Future<void> fetchPage({
    required DateTime startAfter,
    required int limit,
  }) async {}
}

class FeedSettings {
  const FeedSettings();
}

@freezed
abstract class FeedState<T> with _$FeedState {
  const factory FeedState.initial() = _Initial;
  const factory FeedState.loading() = _Loading;
  const factory FeedState.loaded(List<T> items) = _Success;
  const factory FeedState.reachedMax(List<T> items) = _ReachedMax;
  const factory FeedState.empty(List<T> items) = _ReachedMax;
  const factory FeedState.failure(List<T> items) = _Failure;
}
