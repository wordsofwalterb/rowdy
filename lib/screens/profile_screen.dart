import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rowdy/models/student.dart';

import 'package:rowdy/services/firebase_service/firebase_service.dart';
import 'package:rowdy/services/single_stream_cubit/single_stream_cubit.dart';

import 'package:rowdy/services/user/user_cubit/user_repository.dart';
import 'package:rowdy/util/router.dart';
import 'package:rowdy/widgets/top_profile_section.dart';

class ProfileWrapper extends StatelessWidget {
  ProfileWrapper({required this.studentId});

  final String studentId;

  @override
  Widget build(BuildContext context) {
    final userId = context.read<UserRepository>().state.maybeWhen(
          authenticated: (user) => user.id,
          orElse: () => null,
        );

    if (userId != null) {
      return BlocProvider(
        create: (context) => SingleStreamCubit<FFStudent>(
            repository: FirebaseService<FFStudent>(), itemId: studentId)
          ..setupItem(),
        child: ProfilePage(
          isCurrentUser: (userId == studentId),
        ),
      );
    } else {
      return const Scaffold(
        body: Text('error'),
      );
    }
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({required this.isCurrentUser});

  final bool isCurrentUser;

  @override
  Widget build(BuildContext context) {
    final fullName = context.select(
      (SingleStreamCubit<FFStudent> r) => r.state.maybeWhen(
        loaded: (student) => student.fullName,
        failure: () => 'An error occured...',
        orElse: () => null,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).backgroundColor,
        title: Text(
          (isCurrentUser)
              ? 'Your Profile'
              : (fullName != null)
                  ? fullName
                  : 'Loading...',
        ),
        actions: <Widget>[
          if (isCurrentUser)
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () =>
                  Navigator.of(context).pushNamed(FFRoutes.settingsOverview),
            )
          else
            Container(),
        ],
      ),
      body: CustomScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate([
              TopProfileSection(
                isCurrentUser: isCurrentUser,
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
