import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:rowdy/services/user/user_cubit/user_repository.dart';
import 'package:rowdy/util/exceptions.dart';
import 'package:rowdy/util/validators.dart';

part 'register_form_state.dart';
part 'register_form_cubit.freezed.dart';

class RegisterFormCubit extends Cubit<RegisterFormState> {
  RegisterFormCubit(this.userCubit)
      : super(const RegisterFormState.initial(
          isPasswordHidden: false,
        ));

  UserRepository userCubit;

  Future<void> submitForm({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
  }) async {
    emit(RegisterFormState.initial(isPasswordHidden: state.isPasswordHidden));

    try {
      if (!FFValidators.isValidFirstName(firstName)) {
        throw ValidationException('ERROR_FIRST_NAME');
      }
      if (!FFValidators.isValidLastName(lastName)) {
        throw ValidationException('ERROR_LAST_NAME');
      }
      if (!FFValidators.isValidEmail(email)) {
        throw ValidationException('ERROR_EMAIL');
      }
      if (!FFValidators.isValidUTSAEmail(email)) {
        throw ValidationException('ERROR_EMAIL_UTSA');
      }
      if (!FFValidators.isValidPassword(password)) {
        throw ValidationException('ERROR_PASSWORD');
      }
      emit(RegisterFormState.processing(
        isPasswordHidden: state.isPasswordHidden,
      ));

      final _random = Random();

      final defaultAvatarIndex = _random.nextInt(4);
      const accessToken = [
        'https://firebasestorage.googleapis.com/v0/b/fyrefly-92a36.appspot.com/o/images%2Fdefault%2FdefaultAvatar1.png?alt=media&token=4f1a8bd3-39f7-4f72-b26a-417afa58d1a0',
        'https://firebasestorage.googleapis.com/v0/b/fyrefly-92a36.appspot.com/o/images%2Fdefault%2FdefaultAvatar2.png?alt=media&token=61f44679-6903-46bf-b806-7cdc819d3ace',
        'https://firebasestorage.googleapis.com/v0/b/fyrefly-92a36.appspot.com/o/images%2Fdefault%2FdefaultAvatar3.png?alt=media&token=aa2ccebb-d34c-4c55-814f-54934d41a590',
        'https://firebasestorage.googleapis.com/v0/b/fyrefly-92a36.appspot.com/o/images%2Fdefault%2FdefaultAvatar4.png?alt=media&token=c6ee020c-4d0d-4f30-97ed-dd4fdcc93401',
      ];

      await userCubit.signUpWithCredential(email, password, props: {
        'firstName': firstName,
        'lastName': lastName,
        'fullName': '$firstName $lastName',
        'avatarUrl': accessToken[defaultAvatarIndex],
      });

      userCubit.state.maybeWhen(
          authenticated: (_) => emit(RegisterFormState.success(
                isPasswordHidden: state.isPasswordHidden,
              )),
          authenticationFailed: (error) => emit(RegisterFormState.failure(error,
              isPasswordHidden: state.isPasswordHidden,
              isEmailValid: true,
              isPasswordValid: true,
              isFirstNameValid: true,
              isLastNameValid: true)),
          orElse: () => emit(RegisterFormState.failure(
              'There was an error creating your account.',
              isPasswordHidden: state.isPasswordHidden,
              isEmailValid: true,
              isPasswordValid: true,
              isFirstNameValid: true,
              isLastNameValid: true)));
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
        case 'ERROR_EMAIL_UTSA':
          errorMessage = 'Please enter a UTSA email';
          isEmailValid = false;
          break;
        case 'ERROR_PASSWORD':
          errorMessage = 'Password must be 8 characters or longer.';
          isPasswordValid = false;
          break;
        default:
          errorMessage = 'Impossible error';
      }
      emit(RegisterFormState.failure(
        errorMessage,
        isPasswordHidden: state.isPasswordHidden,
        isPasswordValid: isPasswordValid,
        isEmailValid: isEmailValid,
        isFirstNameValid: isFirstNameValid,
        isLastNameValid: isLastNameValid,
      ));
    }
  }

  Future<void> toggleHiddenPassword() async => emit(
      RegisterFormState.initial(isPasswordHidden: !state.isPasswordHidden));
}
