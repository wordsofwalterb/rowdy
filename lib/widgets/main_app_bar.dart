import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rowdy/models/student.dart';
import 'package:rowdy/services/user/user_cubit/user_repository.dart';
import 'package:rowdy/util/router.dart';

import 'profile_avatar.dart';

PreferredSizeWidget mainAppBar(BuildContext context) {
  final avatarUrl = context.select((UserRepository r) {
    return r.state.maybeWhen(
        authenticated: (user) => user.avatarUrl as String, orElse: () => null);
  });

  return AppBar(
    elevation: 2,
    centerTitle: true,
    leading: Padding(
      padding: const EdgeInsets.all(10.0),
      child: ProfileAvatar(
        onPressed: () => {},
        avatarUrl: avatarUrl,
      ),
    ),
    title: Container(
        width: 75,
        child: Image.asset('assets/images/appbar.png', fit: BoxFit.scaleDown)),
    backgroundColor: Theme.of(context).backgroundColor,
    actions: <Widget>[
      // IconButton(
      //   icon: const Icon(Icons.exit_to_app),
      //   onPressed: () {
      //     BlocProvider.of<UserBloc>(context).add(
      //       LogOutUser(),
      //     );
      //   },
      // )
    ],
  );
}
