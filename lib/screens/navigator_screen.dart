import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rowdy/cubits/Feed_Cubit/feed_cubit.dart';
import 'package:rowdy/cubits/cubit/user_cubit.dart';
import 'package:rowdy/models/test.dart';
import 'package:rowdy/services/entity_repository.dart';

import 'splash_screen.dart';

class NavigatorBridge extends StatelessWidget {
  const NavigatorBridge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => UserCubit(),
      child: NavigatorView(),
    );
  }
}

class NavigatorView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserState>(
      builder: (context, state) {
        state.when(
          unauthenticated: () => Container(),
          authenticating: () => SplashScreen(),
          authenticated: (user) => Container(),
          authenticationFailed: (_) => Container(),
        );

        if (state is UserAuthenticated) {
          return MultiBlocProvider(
            providers: [
              BlocProvider<PostsBloc>(
                create: (context) => PostsBloc(
                  postRepository: FirebasePostRepository(),
                )..add(const SetupPosts()),
              ),
              BlocProvider<NotificationsBloc>(
                create: (context) => NotificationsBloc(
                  FirebaseNotificationRepository(),
                )..add(BootstrapNotifications()),
              )
            ],
            child: NotificationBridge(
              child: HomeScreen(),
            ),
          );
        }
        if (state is UserUnauthenticated) {
          return LoginScreen(
            userRepository: _userRepository,
          );
        }
        return SplashScreen();
      },
    );
  }
}
