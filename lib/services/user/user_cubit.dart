// import 'dart:math';

// import 'package:bloc/bloc.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:rowdy/models/model.dart';

// import '../../util/global.dart';
// import 'auth_repository.dart';
// import 'email_login_mixin.dart';

// part 'user_state.dart';
// part 'user_cubit.freezed.dart';

// class UserCubit<T extends Model> extends Cubit<UserState<T>>
//     with FirebaseAuthRepo<T> {
//   UserCubit() : super(const UserState.unauthenticated());

//   /// Creates document for user in firestore after registration.
//   ///
//   /// [firstName], [lastName], and [email], must not be
//   /// null.
//   Future<void> setupUser(
//       {required String firstName,
//       required String lastName,
//       required String email}) async {
//     final _random = Random();

//     final defaultAvatarIndex = _random.nextInt(4);
//     const accessToken = [
//       'https://firebasestorage.googleapis.com/v0/b/fyrefly-92a36.appspot.com/o/images%2Fdefault%2FdefaultAvatar1.png?alt=media&token=4f1a8bd3-39f7-4f72-b26a-417afa58d1a0',
//       'https://firebasestorage.googleapis.com/v0/b/fyrefly-92a36.appspot.com/o/images%2Fdefault%2FdefaultAvatar2.png?alt=media&token=61f44679-6903-46bf-b806-7cdc819d3ace',
//       'https://firebasestorage.googleapis.com/v0/b/fyrefly-92a36.appspot.com/o/images%2Fdefault%2FdefaultAvatar3.png?alt=media&token=aa2ccebb-d34c-4c55-814f-54934d41a590',
//       'https://firebasestorage.googleapis.com/v0/b/fyrefly-92a36.appspot.com/o/images%2Fdefault%2FdefaultAvatar4.png?alt=media&token=c6ee020c-4d0d-4f30-97ed-dd4fdcc93401',
//     ];

//     try {
//       final userMap = {
//         'userID': firebaseUser.uid,
//         'firstName': firstName,
//         'lastName': lastName,
//         'email': email,
//         'fullName': '$firstName $lastName',
//         'avatarUrl': accessToken[defaultAvatarIndex],
//       };

//       final currentUser = _auth.currentUser;
//       await FFGlobal.userRef.doc(currentUser.uid).set({
//         'firstName': firstName,
//         'lastName': lastName,
//         'email': email,
//         'fullName': '$firstName $lastName',
//         'avatarUrl': accessToken[defaultAvatarIndex],
//       });
//     } catch (error) {
//       throw ('There was an unexpected error connecting to the database');
//     }
//   }

//   Future<void> updateUser(T user) async {
//     final currentState = state;
//     await currentState.maybeMap(
//         authenticated: (authenticated) async {
//           await FFGlobal.userRef
//               .doc(authenticated.user.id)
//               .set(user.toJson(), SetOptions(merge: true));
//           emit(UserState.authenticated(user: user));
//         },
//         orElse: throw Exception());
//   }
// }
