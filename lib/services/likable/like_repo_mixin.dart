import '../feeds/feed_repo_mixin.dart';
import 'likable.dart';

mixin LikeRepoMixin<T extends Likable> implements FeedRepoMixin<T> {
  Future<void> unlikeItem(String id) async {
    for (final feed in feeds) {
      feed.state.maybeWhen(
        loaded: (items) {
          final itemIndex = items.indexWhere((e) => e.id == id);
          if (itemIndex == -1) {
            dynamic item = items[itemIndex];
            feed.updateItemInFeed(item.copyWith(likeCount: item.likeCount - 1));
          }
        },
        orElse: () => {},
      );
    }
  }

  Future<void> likeItem(String postId) async {}
}
