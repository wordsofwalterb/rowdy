import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rowdy/models/model.dart';
import 'package:rowdy/services/auth/firebase_auth_mixin.dart';

import '../../util/global.dart';
import '../../util/result.dart';

mixin FirebaseAnonymousAuthMixin<T extends Model> on FirebaseAuthMixin<T> {
  /// Creates document in firestore for an anonymous user and initializes the
  /// user locally through [FirebaseAuth].
  Future<FFResult<T>> createAnonymousUser() async {
    try {
      final firebaseUser = (await auth.signInAnonymously()).user;
      if (firebaseUser == null) {
        throw Exception();
      }
      final userMap = {
        'userID': firebaseUser.uid,
        'type': 'anonymous',
        'creationDate': Timestamp.now(),
        'lastOpenDate': Timestamp.now(),
      };

      await FFGlobal.userRef.doc(firebaseUser.uid).set(userMap);

      return FFResult.success(parseJson(userMap));
    } catch (error) {
      return FFResult.failure(
          errorCode: error.toString(),
          errorMessage: 'There was a problem setting up your account.');
    }
  }
}
