// import 'package:bloc/bloc.dart';
// import 'package:rowdy/models/model.dart';

// import 'auth_repository.dart';
// import 'user_cubit.dart';

// mixin AnonymousLoginMixin<T extends Model>
//     implements Cubit<UserState<T>>, FirebaseAuthRepo<T> {
//   Future<void> loginAnonymously() async {
//     emit(const UserState.authenticating());

//     final authResult =
//         (isSignedIn()) ? await getUser() : await createAnonymousUser();

//     (authResult.hasData)
//         ? emit(UserState.authenticated(user: authResult.data!))
//         : emit(UserState.authenticationFailed(authResult.errorMessage));
//   }
// }
