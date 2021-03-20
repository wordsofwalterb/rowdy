part of 'user_repository.dart';

@freezed
abstract class UserState<T> with _$UserState<T> {
  const factory UserState.unauthenticated() = _Unauthenticated;
  const factory UserState.authenticating() = _Authenticating;
  const factory UserState.authenticated({required T user}) = _Authenticated;
  const factory UserState.authenticationFailed(String errorMessage) =
      _AuthenticationFailure;
}
