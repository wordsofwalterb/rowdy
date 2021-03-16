import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../util/global.dart';
import '../../util/result.dart';

mixin FirebaseAuthRepo<T> {
  final _auth = FirebaseAuth.instance;

  Future<FFResult<T>> createEmailUser(String email, String password) async {
    try {
      final firebaseUser = (await _auth.createUserWithEmailAndPassword(
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

  /// Creates document in firestore for an anonymous user and initializes the
  /// user locally through [FirebaseAuth].
  Future<FFResult<T>> createAnonymousUser() async {
    try {
      final firebaseUser = (await _auth.signInAnonymously()).user;
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

  /// Checks if the current user withing the [FirebaseAuth]
  /// instance is signed in.
  bool isSignedIn() {
    final currentUser = _auth.currentUser;
    return (currentUser != null);
  }

  /// Returns a [PHUser] object from Firestore based on the ID of the currently
  /// signed in [FirebaseAuth] user uid.
  Future<FFResult<T>> getUser() async {
    assert(_auth.currentUser != null,
        'There must be a currently signed in user in the firebase instance.');

    try {
      final firebaseUser = _auth.currentUser;
      if (firebaseUser == null) {
        throw Exception();
      }
      final userDoc = await FFGlobal.userRef.doc(firebaseUser.uid).get();

      await FFGlobal.userRef
          .doc(firebaseUser.uid)
          .update({'lastOpenDate': Timestamp.now()});

      final user = parseJson<T>(
          userDoc.data()!..update('lastOpenDate', (value) => Timestamp.now()));

      // if (user?.isTester ?? false) {
      //   PHGlobal.analytics.setAnalyticsCollectionEnabled(false);
      // }

      return FFResult.success(user);
    } catch (error) {
      return FFResult.failure(
          errorCode: error.toString(),
          errorMessage: 'There was a problem retrieving your account');
    }
  }

  /// Signs the current user out
  Future<void> signOut() async {
    await Future.wait([
      _auth.signOut(),
    ]);
  }
}
