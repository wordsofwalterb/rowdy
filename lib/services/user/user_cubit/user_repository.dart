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
  Stream? userStream;

  @override
  Future<void> close() async {
    await super.close();
  }

  void _getUserStream() {
    service.getUserStream()
      ..listen((userResult) {
        if (userResult.hasData) {
          emit(UserState.authenticated(user: userResult.data!));
        } else if (userResult.hasError) {
          emit(UserState.authenticationFailed(userResult.errorMessage!));
        }
      });
  }

  Future<void> signUpWithCredential(
    String email,
    String password, {
    Map<String, Object>? props,
  }) async {
    final result = await service.createEmailUser(email, password, props: props);

    (result.hasData)
        ? _getUserStream()
        : emit(UserState.authenticationFailed(result.errorMessage!));
  }

  Future<void> loginWithCredentials({
    required String email,
    required String password,
  }) async {
    final authResult = await service.signInWithCredentials(email, password);

    (authResult.hasData)
        ? _getUserStream()
        : emit(UserState.authenticationFailed(authResult.errorMessage!));
  }

  Future<void> signOut() async {
    await service.signOut();
    emit(const UserState.unauthenticated());
  }

  Future<void> autoLogin() async {
    emit(const UserState.authenticating());

    final authResult = service.isSignedIn()
        ? _getUserStream()
        : FFResult<FFStudent>.failure(
            errorCode: 'AUTH_NOT_SIGNED_IN',
            errorMessage: 'Error retrieving user data');
  }
}
