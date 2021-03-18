part of 'login_form_cubit.dart';

@freezed
class LoginFormState with _$LoginFormState {
  const factory LoginFormState.initial({required bool isPasswordHidden}) =
      _Initial;
  const factory LoginFormState.processing({required bool isPasswordHidden}) =
      _Processing;
  const factory LoginFormState.success({required bool isPasswordHidden}) =
      _Success;
  const factory LoginFormState.failure(
    String error, {
    required bool isPasswordHidden,
  }) = _Failure;
}
