import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:rowdy/models/student.dart';

import 'package:rowdy/services/firebase_service/firebase_repo_mixin.dart';
import 'package:rowdy/services/firebase_service/firebase_service.dart';

import 'package:rowdy/util/result.dart';

import '../avatar_user_cubit_mixin.dart';

part 'user_state.dart';
part 'user_repository.freezed.dart';

class UserRepository extends Cubit<UserState<FFStudent>>
    // with UpdateAvatarUserRepoMixin<FFStudent>
    implements
        FirebaseServiceMixin<FFStudent> {
  UserRepository(this.service) : super(const UserState.unauthenticated());

  @override
  FirebaseService<FFStudent> service;

  Future<void> signUpWithCredential(
    String email,
    String password, {
    Map<String, Object>? props,
  }) async {
    final result = await service.createEmailUser(email, password, props: props);

    (result.hasData)
        ? emit(UserState.authenticated(user: result.data!))
        : emit(UserState.authenticationFailed(result.errorMessage!));
  }

  Future<void> loginWithCredentials({
    required String email,
    required String password,
  }) async {
    final authResult = await service.signInWithCredentials(email, password);

    if (authResult.hasData) {
      final userResult = await service.getUser();

      (userResult.hasData)
          ? emit(UserState.authenticated(user: userResult.data!))
          : emit(UserState.authenticationFailed(userResult.errorMessage!));
    } else {
      emit(UserState.authenticationFailed(authResult.errorMessage!));
    }
  }

  Future<void> autoLogin() async {
    emit(const UserState.authenticating());

    final authResult = service.isSignedIn()
        ? await service.getUser()
        : FFResult<FFStudent>.failure(
            errorCode: 'AUTH_NOT_SIGNED_IN',
            errorMessage: 'Error retrieving user data');

    // if (authResult.data.isTester ?? false) {
    //   FFGlobal.analytics.setAnalyticsCollectionEnabled(false);
    // }

    (authResult.hasData)
        ? emit(UserState.authenticated(user: authResult.data!))
        : emit(UserState.authenticationFailed(authResult.errorMessage!));
  }
}
