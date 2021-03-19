import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rowdy/services/repositories/student_repository.dart';

import '../feeds/feed_repo_mixin.dart';
import '../likable/likable.dart';

mixin LikeRepoMixin<T extends Likable> implements FeedMixin<T> {
  Future<void> unlikeItem(String itemId, String userId) async {
    if (state[itemId] != null) {
      dynamic item = state[itemId];
      final newItem = item.copyWith(
          likeCount: item.likeCount - 1,
          unlikedBy: item.unlikedBy.add(userId)) as T;
      await service.updateItem(newItem);
      await service.updateWithMap(userId, {
        'liked${T.runtimeType}': FieldValue.arrayRemove([itemId])
      });
      final newState = Map.from(state) as Map<String, T>;
      newState[itemId] = newItem;
      emit(newState);
    } else {
      throw Exception('Unlike item not found');
    }
  }

  Future<void> likeItem(String itemId, String userId) async {
    if (state[itemId] != null) {
      dynamic item = state[itemId];
      final newItem = item.copyWith(likeCount: item.likeCount + 1) as T;
      await service.updateItem(newItem);
      await service.updateWithMap(userId, {
        'liked${T.runtimeType}': FieldValue.arrayUnion([itemId])
      });
      final newState = Map.from(state) as Map<String, T>;
      newState[itemId] = newItem;
      emit(newState);
    } else {
      throw Exception('Unlike item not found');
    }
  }
}
