import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rowdy/models/model.dart';

import '../../models/student.dart';
import '../../util/result.dart';

import '../repositories/user_repository.dart';

part 'user_state.dart';
part 'user_cubit.freezed.dart';

class UserCubit<T extends Model> extends Cubit<UserState<T>> {
  UserCubit(this.repo) : super(const UserState.unauthenticated());

  UserRepository<T> repo;

  Future<void> updateUser(T user) async {}

  Future<void> autoLogin() async {
    emit(const UserState.authenticating());

    final authResult = (repo.isSignedIn())
        ? await repo.getUser()
        : FFResult.failure(
            errorCode: 'AUTH_NOT_SIGNED_IN',
            errorMessage: 'Error retrieving user data');

    (authResult.hasData)
        ? emit(UserState.authenticated(user: authResult.data))
        : emit(UserState.authenticationFailed(authResult.errorMessage));
  }
}
