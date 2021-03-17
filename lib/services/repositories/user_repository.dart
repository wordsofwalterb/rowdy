import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rowdy/models/model.dart';
import 'package:rowdy/services/auth/firebase_auth_mixin.dart';
import 'package:rowdy/services/mixins/avatar_repo_mixin.dart';
import 'package:rowdy/services/mixins/single_entity_repo_mixin.dart';
import 'package:rowdy/services/mixins/update_entity_repo_mixin.dart';

import '../../models/student.dart';
import '../../util/global.dart';

class UserRepository
    with
        FirebaseAuthMixin<FFStudent>,
        UpdateEntityRepo<FFStudent>,
        SingleEntityRepoMixin<FFStudent>,
        AvatarRepoMixin<FFStudent> {
  /// Creates document for user in firestore after registration.
  Future<void> setupUser(
      {required String firstName,
      required String lastName,
      required String email}) async {
    final _random = Random();

    final defaultAvatarIndex = _random.nextInt(4);
    const accessToken = [
      'https://firebasestorage.googleapis.com/v0/b/fyrefly-92a36.appspot.com/o/images%2Fdefault%2FdefaultAvatar1.png?alt=media&token=4f1a8bd3-39f7-4f72-b26a-417afa58d1a0',
      'https://firebasestorage.googleapis.com/v0/b/fyrefly-92a36.appspot.com/o/images%2Fdefault%2FdefaultAvatar2.png?alt=media&token=61f44679-6903-46bf-b806-7cdc819d3ace',
      'https://firebasestorage.googleapis.com/v0/b/fyrefly-92a36.appspot.com/o/images%2Fdefault%2FdefaultAvatar3.png?alt=media&token=aa2ccebb-d34c-4c55-814f-54934d41a590',
      'https://firebasestorage.googleapis.com/v0/b/fyrefly-92a36.appspot.com/o/images%2Fdefault%2FdefaultAvatar4.png?alt=media&token=c6ee020c-4d0d-4f30-97ed-dd4fdcc93401',
    ];

    try {
      final currentUser = auth.currentUser!;
      final userMap = {
        'userID': currentUser.uid,
        'firstName': firstName,
        'lastName': lastName,
        'email': email,
        'fullName': '$firstName $lastName',
        'avatarUrl': accessToken[defaultAvatarIndex],
      };

      await FFGlobal.userRef.doc(currentUser.uid).set(userMap);
    } catch (error) {
      throw Exception('There was an unexpected error connecting to database');
    }
  }
}
