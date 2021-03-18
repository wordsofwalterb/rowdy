import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:rowdy/services/user/user_cubit/user_repository.dart';

import 'register_form.dart';
import 'register_form_cubit/register_form_cubit.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: Center(
        child: BlocProvider<RegisterFormCubit>(
          create: (context) =>
              RegisterFormCubit(BlocProvider.of<UserRepository>(context)),
          child: RegisterForm(),
        ),
      ),
    );
  }
}
