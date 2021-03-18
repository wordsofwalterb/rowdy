import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rowdy/screens/login/login_form_cubit/login_form_cubit.dart';
import 'package:rowdy/screens/registration/register_screen.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FocusNode _emailFocus = FocusNode();
  final FocusNode _passwordFocus = FocusNode();

  bool get isPopulated =>
      _emailController.text.isNotEmpty && _passwordController.text.isNotEmpty;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginFormCubit, LoginFormState>(
      listener: _onCubitListen,
      child: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        child: BlocBuilder<LoginFormCubit, LoginFormState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                child: ListView(
                  children: <Widget>[
                    SizedBox(height: MediaQuery.of(context).size.height * .1),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child:
                          Image.asset('assets/images/appbar.png', height: 90),
                    ),
                    const SizedBox(height: 30),
                    TextFormField(
                      controller: _emailController,
                      decoration: const InputDecoration(
                        alignLabelWithHint: true,
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        hintText: 'UTSA Email',
                      ),
                      keyboardType: TextInputType.emailAddress,
                      autovalidateMode: AutovalidateMode.disabled,
                      autocorrect: false,
                      focusNode: _emailFocus,
                      textInputAction: TextInputAction.next,
                      onFieldSubmitted: (term) {
                        _fieldFocusChange(context, _emailFocus, _passwordFocus);
                      },
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: _passwordController,
                      decoration: InputDecoration(
                        alignLabelWithHint: true,
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        hintText: 'Password',
                        suffixIcon: GestureDetector(
                          onTap: _onPasswordObscuredChanged,
                          child: (state.isPasswordHidden)
                              ? Icon(Icons.visibility_off,
                                  color: Theme.of(context).primaryColor)
                              : Icon(Icons.visibility,
                                  color: Theme.of(context).primaryColor),
                        ),
                      ),
                      obscureText: state.isPasswordHidden,
                      autovalidateMode: AutovalidateMode.disabled,
                      autocorrect: false,
                      focusNode: _passwordFocus,
                      textInputAction: TextInputAction.done,
                      onFieldSubmitted: (term) {
                        _passwordFocus.unfocus();
                        if (isPopulated) _onFormSubmitted();
                      },
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      width: double.infinity,
                      child: GestureDetector(
                        onTap: () => {},
                        // Navigator.of(context)
                        //     .pushNamed(FFRoutes.lostPassword),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'Lost Password',
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      color: const Color(0xffcbcbcb),
                                    ),
                          ),
                        ),
                      ),
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
                              child: const Text('Login'),
                            ),
                          ),
                          const SizedBox(height: 16),
                          Container(
                            height: 50,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1.0,
                                color: const Color(0xffc4c4c4),
                              ),
                            ),
                            child: FlatButton(
                              onPressed: () => Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const RegisterScreen())),
                              child: const Text(
                                'Create an Account',
                                style: TextStyle(color: Color(0xffc4c4c4)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void _fieldFocusChange(
      BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _emailFocus.dispose();
    _passwordFocus.dispose();
    super.dispose();
  }

  void _onPasswordObscuredChanged() {
    BlocProvider.of<LoginFormCubit>(context).toggleHiddenPassword();
  }

  void _onFormSubmitted() {
    BlocProvider.of<LoginFormCubit>(context).submitForm(
      email: _emailController.text,
      password: _passwordController.text,
    );
  }

  void _onCubitListen(BuildContext content, LoginFormState state) {
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
                    'Logging In...',
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
