import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rowdy/services/user/user_cubit/user_repository.dart';
import 'package:rowdy/util/exceptions.dart';
import 'package:rowdy/util/validators.dart';

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
    try {
      emit(LoginFormState.initial(isPasswordHidden: state.isPasswordHidden));
      if (!FFValidators.isValidEmail(email)) {
        throw ValidationException('ERROR_EMAIL');
      }
      if (!FFValidators.isValidUTSAEmail(email)) {
        throw ValidationException('ERROR_EMAIL_UTSA');
      }
      if (!FFValidators.isValidPassword(password)) {
        throw ValidationException('ERROR_PASSWORD');
      }
      emit(LoginFormState.processing(isPasswordHidden: state.isPasswordHidden));
      await userCubit.loginWithCredentials(email: email, password: password);

      userCubit.state.maybeWhen(
          authenticated: (_) => emit(
              LoginFormState.success(isPasswordHidden: state.isPasswordHidden)),
          authenticationFailed: (error) => emit(LoginFormState.failure(error,
              isPasswordHidden: state.isPasswordHidden)),
          orElse: () => emit(LoginFormState.failure(
              'There was an error logging in.',
              isPasswordHidden: state.isPasswordHidden)));
    } on ValidationException catch (error) {
      String errorMessage;

      var isFirstNameValid = true;
      var isLastNameValid = true;
      var isEmailValid = true;
      var isPasswordValid = true;

      switch (error.code) {
        case 'ERROR_FIRST_NAME':
          errorMessage = 'First name needs to be provided';
          isFirstNameValid = false;
          break;
        case 'ERROR_LAST_NAME':
          errorMessage = 'Last name needs to be provided';
          isLastNameValid = false;
          break;
        case 'ERROR_EMAIL':
          errorMessage = 'Email format is incorrect';
          isEmailValid = false;
          break;
        case 'ERROR_EMAIL_UT':
          errorMessage = 'UTexas email is required';
          isEmailValid = false;
          break;
        case 'ERROR_PASSWORD':
          errorMessage = 'Password was invalid';
          isPasswordValid = false;
          break;
        default:
          errorMessage = 'There was an error logging in';
      }
      emit(LoginFormState.failure(
        errorMessage,
        isPasswordHidden: state.isPasswordHidden,
      ));
    }
  }

  Future<void> toggleHiddenPassword() async =>
      emit(LoginFormState.initial(isPasswordHidden: !state.isPasswordHidden));
}
