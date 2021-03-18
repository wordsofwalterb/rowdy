import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rowdy/screens/login/login_form_cubit/login_form_cubit.dart';
import 'package:rowdy/services/user/user_cubit/user_repository.dart';

import 'login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<LoginFormCubit>(
        create: (context) => LoginFormCubit(
          BlocProvider.of<UserRepository>(context),
        ),
        child: const LoginForm(),
      ),
    );
  }
}
