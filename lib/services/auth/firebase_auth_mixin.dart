import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
      auth.signOut(),
    ]);
  }
}
