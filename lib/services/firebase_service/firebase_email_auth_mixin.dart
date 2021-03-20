import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
      final firebaseCredential = (await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      ));

      final firebaseUser = firebaseCredential.user;

      if (firebaseUser == null) {
        throw Exception();
      }

      final userMap = {
        'id': firebaseUser.uid,
        'authType': 'emailLogin',
        'creationDate': Timestamp.now(),
        'lastOpenDate': Timestamp.now(),
      };

      if (props != null) {
        userMap.addAll(props);
      }

      await FFGlobal.userRef.doc(firebaseUser.uid).set(userMap);

      return FFResult<T>.success(parseJson<T>(userMap));
    } on FirebaseAuthException catch (error) {
      String errorMessage;
      switch (error.code) {
        case 'email-already-in-use':
          errorMessage = 'Another account with this email already exists';
          break;
        case 'invalid-email':
          errorMessage = 'The email address format is not valid';
          break;
        case 'operation-not-allowed':
          errorMessage = 'Server error, please try again later.';
          break;
        case 'weak-password':
          errorMessage = 'Your password was not strong enough.';
          break;
        default:
          errorMessage = 'Undefined error occured';
      }
      log(error.toString());
      return FFResult.failure(
          errorCode: error.toString(), errorMessage: errorMessage);
    } catch (error) {
      log(error.toString());
      return FFResult.failure(
          errorCode: error.toString(),
          errorMessage: 'There was a problem setting up your account.');
    }
  }
}
