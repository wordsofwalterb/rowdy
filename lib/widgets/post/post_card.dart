import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_sfsymbols/flutter_sfsymbols.dart';

import 'package:rowdy/models/post.dart';
import 'package:rowdy/models/student.dart';
import 'package:rowdy/services/feed_steam_cubit/feed_stream_cubit.dart';

import 'package:rowdy/util/functions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rowdy/util/router.dart';

import '../profile_avatar.dart';
import 'image_widget.dart';
import 'like_button.dart';

typedef PostChevronCallback = void Function(bool byCurrentUser, FFPost post);

class PostCard extends StatelessWidget {
  PostCard({
    Key? key,
    required this.id,
    this.commentsDisabled,
  }) : super(key: key);

  final String id;
  final bool? commentsDisabled;

  @override
  Widget build(BuildContext context) {
    final body = context
        .select((FeedStreamCubit<FFPost> r) => r.state.itemIds[id]?.body);

    final imageUrl = context.select((FeedStreamCubit<FFPost> r) {
      final images = r.state.itemIds[id]?.imageUrls;
      return (images != null && images.isNotEmpty) ? images.first : null;
    });

    final commentsCount = context.select(
        (FeedStreamCubit<FFPost> r) => r.state.itemIds[id]?.commentCount);

    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(4),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CardAuthorProfile(id),
              const Spacer(),
              IconButton(
                onPressed: () => {},
                visualDensity: VisualDensity.compact,
                icon: const Icon(
                  SFSymbols.chevron_down,
                  size: 20,
                ),
                color: const Color(0xff9b9b9b),
              ),
            ]),
            const SizedBox(
              height: 12,
            ),
            SelectableText(
              body ?? 'test',
              style: Theme.of(context).textTheme.bodyText1,
            ),

            const SizedBox(height: 12),
            if (imageUrl != null) ...{
              FFImageWidget(imageUrl),
            },

            // Bottom Row
            Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
              GestureDetector(
                onTap: (commentsDisabled ?? false) ? () => {} : () => {},
                child: const Icon(
                  SFSymbols.bubble_left,
                  size: 20,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6.0),
                child: Text(commentsCount?.toString() ?? '0',
                    style: Theme.of(context).textTheme.overline),
              ),
              const Spacer(
                flex: 1,
              ),
              FFLikeButton<FFPost>(id),
              const Spacer(
                flex: 12,
              ),
            ]),
          ]),
        ),
      ),
    );
  }
}

class CardAuthorProfile extends StatelessWidget {
  const CardAuthorProfile(this._parentId, {Key? key}) : super(key: key);

  final String _parentId;

  @override
  Widget build(BuildContext context) {
    final authorId = context
        .read<FeedStreamCubit<FFPost>>()
        .state
        .itemIds[_parentId]!
        .authorId;

    final _postTime = context
        .read<FeedStreamCubit<FFPost>>()
        .state
        .itemIds[_parentId]!
        .postTime;

    final _authorName = context.select(
        (FeedStreamCubit<FFStudent> r) => r.state.itemIds[authorId]?.fullName);

    final _avatarUrl = context.select(
        (FeedStreamCubit<FFStudent> r) => r.state.itemIds[authorId]?.avatarUrl);

    return Row(
      children: [
        ProfileAvatar(
            avatarUrl: _avatarUrl,
            onPressed: () => Navigator.of(context).pushNamed(
                  FFRoutes.profile,
                  arguments: authorId,
                )),
        const SizedBox(
          width: 6,
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            _authorName ?? 'Not Found',
            style: Theme.of(context).textTheme.subtitle2,
            textAlign: TextAlign.left,
          ),
          const SizedBox(
            height: 3,
          ),
          Text(
            FFFunctions.convertTime(_postTime),
            style: Theme.of(context).textTheme.caption,
          ),
        ]),
      ],
    );
  }
}
