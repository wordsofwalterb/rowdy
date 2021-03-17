part of 'user_cubit.dart';

@freezed
abstract class UserState<T> with _$UserState {
  const factory UserState.unauthenticated() = _Unauthenticated;
  const factory UserState.authenticating() = _Authenticating;
  const factory UserState.authenticated({required T user}) = _Authenticated;
  const factory UserState.authenticationFailed(errorMessage) =
      _AuthenticationFailure;
}
