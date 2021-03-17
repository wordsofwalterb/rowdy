import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rowdy/models/model.dart';
import 'package:rowdy/services/auth/firebase_auth_mixin.dart';

import '../../util/global.dart';
import '../../util/result.dart';
import '../user/user_cubit.dart';

mixin EmailLoginMixin<T extends Model> on FirebaseAuthMixin<T> {
  Future<FFResult<T>> createEmailUser(String email, String password) async {
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
        'userID': firebaseUser.uid,
        'type': 'emailLogin',
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
