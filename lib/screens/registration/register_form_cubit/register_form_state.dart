part of 'register_form_cubit.dart';

@freezed
class RegisterFormState with _$RegisterFormState {
  const factory RegisterFormState.initial({
    required bool isPasswordHidden,
  }) = _Initial;
  const factory RegisterFormState.processing({
    required bool isPasswordHidden,
  }) = _Processing;
  const factory RegisterFormState.success({
    required bool isPasswordHidden,
  }) = _Success;
  const factory RegisterFormState.failure(
    String error, {
    required bool isPasswordHidden,
    required bool isPasswordValid,
    required bool isEmailValid,
    required bool isFirstNameValid,
    required bool isLastNameValid,
  }) = _Failure;
}
