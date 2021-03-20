import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:rowdy/models/model.dart';

import '../../util/global.dart';
import '../../util/result.dart';

mixin FirebaseAuthMixin<T extends Model> {
  final auth = FirebaseAuth.instance;

  /// Checks if the current user withing the [FirebaseAuth]
  /// instance is signed in.
  bool isSignedIn() {
    final currentUser = auth.currentUser;
    return (currentUser != null);
  }

  Future<FFResult<UserCredential>> signInWithCredentials(
      String email, String password) async {
    try {
      final userCredential = await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return FFResult.success(userCredential);
    } on FirebaseAuthException catch (error) {
      String errorMessage;

      switch (error.code) {
        case 'invalid-email':
          errorMessage = 'Email address not found';
          break;
        case 'wrong-password':
          errorMessage = 'Password is incorrect';
          break;
        case 'user-not-found':
          errorMessage = "User with this email doesn't exist.";
          break;
        case 'user-disabled':
          errorMessage = 'User with this email has been disabled.';
          break;
        case 'ERROR_TOO_MANY_REQUESTS':
          errorMessage = 'Too many requests. Try again later.';
          break;
        case 'ERROR_OPERATION_NOT_ALLOWED':
          errorMessage = 'Email and Password signup is not enabled.';
          break;
        default:
          errorMessage = 'An undefined Error happened.';
      }

      return FFResult.failure(
        errorCode: error.code,
        errorMessage: errorMessage,
      );
    } catch (error) {
      log(error.toString());
      return FFResult.failure(
        errorCode: 'UNKNOWN_ERROR',
        errorMessage: 'There was an unknown error signing in.',
      );
    }
  }

  /// Returns a [T] object from Firestore based on the ID of the currently
  /// signed in [FirebaseAuth] user uid.
  Future<FFResult<T>> getUser() async {
    assert(auth.currentUser != null,
        'There must be a currently signed in user in the firebase instance.');

    try {
      final firebaseUser = auth.currentUser;
      if (firebaseUser == null) {
        throw Exception();
      }
      final userDoc = await FFGlobal.userRef.doc(firebaseUser.uid).get();

      await FFGlobal.userRef
          .doc(firebaseUser.uid)
          .update({'lastOpenDate': Timestamp.now()});

      final map = userDoc.data()!
        ..update('lastOpenDate', (value) => Timestamp.now());

      final user = parseJson<T>(map);

      return FFResult.success(user);
    } catch (error) {
      log(error.toString());
      return FFResult.failure(
          errorCode: error.toString(),
          errorMessage: 'There was a problem retrieving your account');
    }
  }

  /// Signs the current user out
  Future<void> signOut() async {
    await Future.wait([
      auth.signOut(),
    ]);
  }
}
