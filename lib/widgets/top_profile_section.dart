import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rowdy/models/student.dart';
import 'package:rowdy/services/single_stream_cubit/single_stream_cubit.dart';

import 'cover_photo.dart';
import 'profile_avatar.dart';

/// This widget displays the main overview information about a user
class TopProfileSection extends StatelessWidget {
  const TopProfileSection({
    required this.isCurrentUser,
  });

  final bool isCurrentUser;

  @override
  Widget build(BuildContext context) {
    final coverPhotoUrl = context.select(
      (SingleStreamCubit<FFStudent> r) => r.state.maybeWhen(
        loaded: (student) => student.coverPhotoUrl,
        orElse: () => null,
      ),
    );

    final avatarUrl = context.select(
      (SingleStreamCubit<FFStudent> r) => r.state.maybeWhen(
        loaded: (student) => student.avatarUrl,
        orElse: () => null,
      ),
    );

    final name = context.select(
      (SingleStreamCubit<FFStudent> r) => r.state.maybeWhen(
        loaded: (student) => student.fullName,
        failure: () => 'Error loading name...',
        orElse: () => 'Loading...',
      ),
    );

    final bio = context.select(
      (SingleStreamCubit<FFStudent> r) => r.state.maybeWhen(
        loaded: (student) => student.bio,
        failure: () => 'Error loading bio...',
        orElse: () => null,
      ),
    );

    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Theme.of(context).backgroundColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            overflow: Overflow.visible,
            children: [
              Stack(
                children: [
                  CoverPhoto(
                    height: 120,
                    coverPhotoUrl: coverPhotoUrl,
                  ),
                ],
              ),
              Positioned(
                bottom: -42,
                left: 15,
                child: ProfileAvatar(
                  avatarUrl: avatarUrl,
                  borderWidth: 4,
                  borderColor: Theme.of(context).backgroundColor,
                  radius: 100,
                  size: 90,
                ),
              ),
            ],
          ),
          const SizedBox(height: 42),
          Container(
            margin: const EdgeInsets.all(8),
            padding: const EdgeInsets.symmetric(horizontal: 9),
            child: Text(
              name,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          if (bio != null)
            Container(
              margin: const EdgeInsets.all(8),
              padding: const EdgeInsets.symmetric(horizontal: 9),
              child: Text(
                bio,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
          const SizedBox(height: 8),
          if (isCurrentUser)
            GestureDetector(
              onTap: () => {},
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(6),
                margin: const EdgeInsets.fromLTRB(12, 8, 12, 8),
                decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(
                    width: 1,
                    color: const Color(0xff424040),
                  ),
                ),
                child: const Text(
                  'Edit Profile',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          const SizedBox(height: 3),
        ],
      ),
    );
  }
}
