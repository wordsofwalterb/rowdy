import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rowdy/models/model.dart';

import '../../util/global.dart';
import '../../util/result.dart';
import 'firebase_auth_mixin.dart';

mixin FirebaseAnonymousAuthMixin<T extends Model> on FirebaseAuthMixin<T> {
  /// Creates document in firestore for an anonymous user and initializes the
  /// user locally through [FirebaseAuth].
  Future<FFResult<T>> createAnonymousUser({Map<String, Object>? props}) async {
    try {
      final firebaseUser = (await auth.signInAnonymously()).user;
      if (firebaseUser == null) {
        throw Exception();
      }
      final userMap = {
        'userI': firebaseUser.uid,
        'authType': 'anonymous',
        'creationDate': Timestamp.now(),
        'lastOpenDate': Timestamp.now(),
      };

      if (props != null) {
        userMap.addAll(props);
      }

      await FFGlobal.userRef.doc(firebaseUser.uid).set(userMap);

      return FFResult.success(parseJson(userMap));
    } catch (error) {
      log(error.toString());
      return FFResult.failure(
          errorCode: error.toString(),
          errorMessage: 'There was a problem setting up your account.');
    }
  }
}
