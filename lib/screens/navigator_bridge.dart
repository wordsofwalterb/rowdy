import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rowdy/models/student.dart';
import 'package:rowdy/screens/feed_screen.dart';
import 'package:rowdy/screens/home_screen.dart';
import 'package:rowdy/screens/login/login_screen.dart';
import 'package:rowdy/services/firebase_service/firebase_service.dart';
import 'package:rowdy/services/user/user_cubit/user_repository.dart';

import 'splash_screen.dart';

class NavigatorBridge extends StatelessWidget {
  const NavigatorBridge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserRepository, UserState>(builder: (context, state) {
      return state.map(
        unauthenticated: (_) => const LoginScreen(),
        authenticating: (_) => const SplashScreen(),
        authenticated: (state) => HomeScreen(),
        authenticationFailed: (_) => const LoginScreen(),
      );
    });
  }
}
