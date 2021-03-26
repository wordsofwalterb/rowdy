import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rowdy/models/student.dart';
import 'package:rowdy/services/firebase_service/firebase_service.dart';
import 'package:rowdy/services/user/user_cubit/user_repository.dart';
import 'package:rowdy/util/router.dart';

import 'profile_avatar.dart';

PreferredSizeWidget mainAppBar(BuildContext context) {
  final userId = context
      .read<UserRepository>()
      .state
      .maybeWhen(authenticated: (user) => user.id, orElse: () => null);
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
        onPressed: () => Navigator.of(context).pushNamed(
          FFRoutes.profile,
          arguments: userId,
        ),
        avatarUrl: avatarUrl,
      ),
    ),
    title: Container(
        width: 35,
        child: Image.asset('assets/images/rowdy.png', fit: BoxFit.scaleDown)),
    backgroundColor: Theme.of(context).backgroundColor,
    actions: <Widget>[
      IconButton(
        icon: const Icon(Icons.exit_to_app),
        onPressed: () => context.read<UserRepository>().signOut(),
      )
    ],
  );
}
