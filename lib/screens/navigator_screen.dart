import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rowdy/models/student.dart';
import 'package:rowdy/screens/login/login_screen.dart';
import 'package:rowdy/services/firebase_repo/firebase_repository.dart';
import 'package:rowdy/services/user/user_cubit/user_cubit.dart';

import 'splash_screen.dart';

class NavigatorBridge extends StatelessWidget {
  const NavigatorBridge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => UserCubit(
          RepositoryProvider.of<FirebaseRepository<FFStudent>>(context)),
      child: const NavigatorView(),
    );
  }
}

class NavigatorView extends StatelessWidget {
  const NavigatorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserState>(builder: (context, state) {
      return state.map(
        unauthenticated: (_) => const LoginScreen(),
        authenticating: (_) => const SplashScreen(),
        authenticated: (state) => Container(),
        authenticationFailed: (_) => const LoginScreen(),
      );
    });
  }
}
