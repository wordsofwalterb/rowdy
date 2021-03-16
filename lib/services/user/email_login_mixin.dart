// import 'package:bloc/bloc.dart';
// import 'package:rowdy/models/model.dart';

// import '../../util/result.dart';
// import 'auth_repository.dart';
// import 'user_cubit.dart';

// mixin EmailLoginMixin<T extends Model>
//     implements Cubit<UserState<T>>, FirebaseAuthRepo<T> {
//   Future<void> autoLogin() async {
//     emit(const UserState.authenticating());

//     final authResult = (isSignedIn())
//         ? await getUser()
//         : FFResult.failure(
//             errorCode: 'AUTH_NOT_SIGNED_IN',
//             errorMessage: 'Error retrieving user data');

//     (authResult.hasData)
//         ? emit(UserState.authenticated(user: authResult.data))
//         : emit(UserState.authenticationFailed(authResult.errorMessage));
//   }

//   Future<void> createEmailUser() {

//   }
// }
