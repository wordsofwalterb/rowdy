import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:rowdy/models/post.dart';
import 'package:rowdy/models/student.dart';
import 'package:rowdy/services/firebase_service/feed_steam_cubit/feed_stream_cubit.dart';
import 'package:rowdy/services/firebase_service/firebase_service.dart';
import 'package:rowdy/services/likable/likable.dart';
import 'package:rowdy/services/user/user_cubit/user_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FFLikeButton<T extends Likable> extends StatelessWidget {
  const FFLikeButton(this._parentId, {Key? key}) : super(key: key);

  final String _parentId;

  @override
  Widget build(BuildContext context) {
    final _likeCount = context.select(
        (FeedStreamCubit<T> r) => r.state.itemIds[_parentId]?.likeCount ?? 0);

    final _isLiked = context.select((UserRepository r) {
      return r.state.maybeWhen(
          authenticated: (user) => user.likedPosts.contains(_parentId),
          orElse: () => false);
    });

    Future<bool> _onLikeTap(bool isCurrentlyLiked) async {
      final user = context.read<UserRepository>().state.maybeWhen(
          authenticated: (user) {
            (isCurrentlyLiked)
                ? user.likedPosts.remove(_parentId)
                : user.likedPosts.add(_parentId);
            return user;
          },
          orElse: () => null);

      final post = context.read<FeedStreamCubit<T>>().state.itemIds[_parentId];

      if (user != null && post != null) {
        await FirebaseService<FFStudent>().updateItem(user);
        await FirebaseService<T>().updateWithMap(_parentId, {
          'likeCount':
              (isCurrentlyLiked) ? post.likeCount - 1 : post.likeCount + 1
        });
      }

      return !isCurrentlyLiked;
    }

    Widget? _countBuilder(int? count, bool liked, String text) {
      Widget result;
      if (count == 0) {
        result = const Text(
          '',
          style: TextStyle(color: Colors.grey),
        );
      } else {
        result = Text(
          text,
          style: const TextStyle(color: Colors.grey),
        );
      }
      return result;
    }

    return LikeButton(
      size: 20,
      likeCount: _likeCount,
      animationDuration: const Duration(milliseconds: 500),
      isLiked: _isLiked,
      onTap: _onLikeTap,
      likeCountAnimationDuration: const Duration(milliseconds: 200),
      countBuilder: _countBuilder,
    );
  }
}
