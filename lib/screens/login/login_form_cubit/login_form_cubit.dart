import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rowdy/services/user/user_cubit/user_repository.dart';

part 'login_form_state.dart';
part 'login_form_cubit.freezed.dart';

class LoginFormCubit extends Cubit<LoginFormState> {
  LoginFormCubit(this.userCubit)
      : super(const LoginFormState.initial(isPasswordHidden: true));

  UserRepository userCubit;

  Future<void> submitForm({
    required String email,
    required String password,
  }) async {
    await userCubit.loginWithCredentials(email: email, password: password);

    userCubit.state.maybeWhen(
        authenticated: (_) => emit(
            LoginFormState.success(isPasswordHidden: state.isPasswordHidden)),
        authenticationFailed: (error) => emit(LoginFormState.failure(error,
            isPasswordHidden: state.isPasswordHidden)),
        orElse: () => emit(LoginFormState.failure(
            'There was an error logging in.',
            isPasswordHidden: state.isPasswordHidden)));
  }

  Future<void> toggleHiddenPassword() async =>
      emit(state.copyWith(isPasswordHidden: !state.isPasswordHidden));
}
