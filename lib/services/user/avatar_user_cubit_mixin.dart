import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rowdy/models/model.dart';
import 'package:rowdy/models/student.dart';
import 'package:rowdy/services/firebase_repo/firebase_repo_mixin.dart';
import 'package:rowdy/services/user/avatar_user_model.dart';
import 'package:rowdy/services/firebase_repo/firebase_auth_mixin.dart';
import 'package:rowdy/services/user/user_cubit/user_cubit.dart';

import 'package:rowdy/util/global.dart';

mixin UpdateAvatarUserCubitMixin<T extends AvatarUser>
    implements Cubit<UserState<T>>, FirebaseRepoMixin<T> {
  Future<void> updateAvatar(String avatarUrl) async {
    state.maybeWhen(
      authenticated: (user) async {
        final newUser = user.copyWith({'avatarUrl': avatarUrl}) as T;

        await repo.updateItem(newUser);

        emit(UserState.authenticated(user: newUser));
      },
      orElse: () => {
        throw Exception('Unable to update user Avatar'),
      },
    );
  }
}
