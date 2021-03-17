import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rowdy/models/model.dart';
import 'package:rowdy/services/mixins/avatar_user_mixin.dart';
import 'package:rowdy/services/repositories/user_repository.dart';
import 'package:rowdy/util/global.dart';

import 'single_entity_repo_mixin.dart';

mixin AvatarRepoMixin<T extends AvatarUser>
    implements SingleEntityRepoMixin<T> {
  Future<void> updateAvatar(String avatarUrl) async {
    entity = FFGlobal.jsonMapper[entity]!(
        entity!.toJson()..addAll({'avatarUrl': avatarUrl})) as T;

    await FFGlobal.userRef.doc(entity!.id).set(
      {'avatarUrl': avatarUrl},
      SetOptions(merge: true),
    );
  }
}
