import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rowdy/util/validators.dart';
import 'package:url_launcher/url_launcher.dart';

import 'form_field.dart';
import 'register_form_cubit/register_form_cubit.dart';

class RegisterForm extends StatefulWidget {
  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final FocusNode _emailFocus = FocusNode();
  final FocusNode _passwordFocus = FocusNode();
  final FocusNode _firstNameFocus = FocusNode();
  final FocusNode _lastNameFocus = FocusNode();

  Future<void> _launchPrivacyPolicy() async {
    const url =
        'https://www.notion.so/Privacy-Policy-1dc7732fb3f04de3810fe66c984bb431';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw Exception('Could not launch $url');
    }
  }

  Future<void> _launchTermsOfService() async {
    const url =
        'https://www.notion.so/Terms-of-Services-b7c41ba68be74edcb8c065c1f9c5d4c0';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw Exception('Could not launch $url');
    }
  }

  bool get isPopulated =>
      _emailController.text.isNotEmpty && _passwordController.text.isNotEmpty;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: BlocListener<RegisterFormCubit, RegisterFormState>(
        listener: _onCubitListen,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            child: BlocBuilder<RegisterFormCubit, RegisterFormState>(
                builder: (context, state) {
              return ListView(
                children: <Widget>[
                  const SizedBox(height: 30),
                  FFRegisterFormField(
                    node: _firstNameFocus,
                    nextNode: _lastNameFocus,
                    validator: FFValidators.firstNameValidator,
                    controller: _firstNameController,
                    hintText: 'First name',
                    errorText: state.maybeMap(
                      failure: (state) {
                        if (state.isFirstNameValid) {
                          return state.error;
                        }
                      },
                      orElse: () => null,
                    ),
                  ),
                  const SizedBox(height: 20),
                  FFRegisterFormField(
                    node: _lastNameFocus,
                    nextNode: _emailFocus,
                    validator: FFValidators.lastNameValidator,
                    controller: _lastNameController,
                    hintText: 'Last Name',
                    errorText: state.maybeMap(
                      failure: (state) {
                        if (state.isLastNameValid) {
                          return state.error;
                        }
                      },
                      orElse: () => null,
                    ),
                  ),
                  const SizedBox(height: 20),
                  FFRegisterFormField(
                    node: _emailFocus,
                    nextNode: _passwordFocus,
                    validator: FFValidators.emailValidator,
                    controller: _emailController,
                    hintText: 'UTSA Email',
                    errorText: state.maybeMap(
                      failure: (state) {
                        if (state.isEmailValid) {
                          return state.error;
                        }
                      },
                      orElse: () => null,
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      alignLabelWithHint: true,
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      errorText: state.maybeMap(
                        failure: (state) {
                          if (state.isPasswordValid) {
                            return state.error;
                          }
                        },
                        orElse: () => null,
                      ),
                      hintText: 'Password',
                      suffixIcon: GestureDetector(
                        onTap: () => BlocProvider.of<RegisterFormCubit>(context)
                            .toggleHiddenPassword(),
                        child: (state.isPasswordHidden)
                            ? Icon(Icons.visibility_off,
                                color: Theme.of(context).primaryColor)
                            : Icon(Icons.visibility,
                                color: Theme.of(context).primaryColor),
                      ),
                    ),
                    obscureText: state.isPasswordHidden,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    autocorrect: false,
                    focusNode: _passwordFocus,
                    textInputAction: TextInputAction.done,
                    onFieldSubmitted: (body) {
                      _passwordFocus.unfocus();
                      if (isPopulated) _onFormSubmitted();
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Container(
                          height: 50,
                          child: FlatButton(
                            color: Theme.of(context).backgroundColor,
                            onPressed: _onFormSubmitted,
                            child: const Text('Register'),
                          ),
                        ),
                        const SizedBox(height: 16),
                      ],
                    ),
                  ),
                  const Text(
                    'By creating an account you agree to the following',
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: <Widget>[
                      const Spacer(),
                      GestureDetector(
                        onTap: _launchTermsOfService,
                        child: const Text(
                          'Terms of Service',
                          style: TextStyle(
                            color: Colors.white70,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: _launchPrivacyPolicy,
                        child: const Text(
                          'Privacy Policy',
                          style: TextStyle(
                            color: Colors.white70,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      const Spacer(),
                    ],
                  )
                ],
              );
            }),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailFocus.dispose();
    _passwordFocus.dispose();
    super.dispose();
  }

  void _onFormSubmitted() {
    BlocProvider.of<RegisterFormCubit>(context).submitForm(
      email: _emailController.text,
      password: _passwordController.text,
      firstName: _firstNameController.text,
      lastName: _lastNameController.text,
    );
  }

  void _onCubitListen(BuildContext content, RegisterFormState state) {
    state.map(
      initial: (_) => {},
      processing: (_) {
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(
            SnackBar(
              content: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Creating Account...',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  const CircularProgressIndicator(),
                ],
              ),
              backgroundColor: Theme.of(context).backgroundColor,
            ),
          );
      },
      success: (_) => Navigator.of(context).pop(),
      failure: (state) {
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(
            SnackBar(
              content: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text(state.error), const Icon(Icons.error)],
              ),
              backgroundColor: Theme.of(context).primaryColor,
            ),
          );
      },
    );
  }
}
