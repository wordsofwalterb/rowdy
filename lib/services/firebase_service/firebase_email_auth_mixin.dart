import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rowdy/models/model.dart';

import '../../util/global.dart';
import '../../util/result.dart';
import 'firebase_auth_mixin.dart';

mixin EmailLoginMixin<T extends Model> on FirebaseAuthMixin<T> {
  Future<FFResult<T>> createEmailUser(
    String email,
    String password, {
    Map<String, Object>? props,
  }) async {
    try {
      final firebaseUser = (await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      ))
          .user;

      if (firebaseUser == null) {
        throw Exception();
      }

      final userMap = {
        'userId': firebaseUser.uid,
        'authType': 'emailLogin',
        'creationDate': Timestamp.now(),
        'lastOpenDate': Timestamp.now(),
      };

      if (props != null) {
        userMap.addAll(props);
      }

      await FFGlobal.userRef.doc(firebaseUser.uid).set(userMap);

      return FFResult.success(parseJson(userMap));
    } catch (error) {
      return FFResult.failure(
          errorCode: error.toString(),
          errorMessage: 'There was a problem setting up your account.');
    }
  }
}
