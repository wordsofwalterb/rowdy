class UserCubit extends Cubit<UserState> {
  UserCubit() : super(const UserState.unauthenticated());
}
