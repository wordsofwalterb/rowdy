import 'package:bloc/bloc.dart';

import 'package:rowdy/services/firebase_service/firebase_repo_mixin.dart';
import 'package:rowdy/services/user/avatar_user_model.dart';

import 'user_cubit/user_repository.dart';

// mixin UpdateAvatarUserRepoMixin<T extends AvatarUser>
//     implements Cubit<UserState<T>>, FirebaseServiceMixin<T> {
//   Future<void> updateAvatar(String avatarUrl) async {
//     state.maybeWhen(
//       authenticated: (user) async {
//         final newUser = user.copyWith({'avatarUrl': avatarUrl}) as T;

//         await service.updateItem(newUser);

//         emit(UserState.authenticated(user: newUser));
//       },
//       orElse: () => {
//         throw Exception('Unable to update user Avatar'),
//       },
//     );
//   }
// }
