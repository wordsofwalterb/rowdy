import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_sfsymbols/flutter_sfsymbols.dart';

import 'package:rowdy/models/post.dart';

import 'package:rowdy/services/firebase_service/feed_steam_cubit/feed_stream_cubit.dart';

import 'package:rowdy/util/functions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            CardAuthorProfile(),
            const Spacer(),
            IconButton(
              onPressed: () => {},
              icon: const Icon(
                SFSymbols.chevron_down,
                size: 20,
              ),
              color: const Color(0xff9b9b9b),
            ),
          ]),
          // if (body != null) ...{
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
            child: SelectableText(
              body ?? 'test',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),

          const SizedBox(height: 6),
          if (imageUrl != null) ...{
            FFImageWidget(imageUrl),
          },
          FFLikeButton<FFPost>(id),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 6, 12, 12),
            child:
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
              const Spacer(
                flex: 12,
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}

class CardAuthorProfile extends StatelessWidget {
  const CardAuthorProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const ProfileAvatar(padding: EdgeInsets.fromLTRB(12, 12, 12, 0)),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
            child: Text(
              'Brandon Walter',
              style: Theme.of(context).textTheme.subtitle2,
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(0, 3, 0, 0),
            child: Text(
              FFFunctions.convertTime(DateTime.now()),
              style: Theme.of(context).textTheme.caption,
            ),
          ),
        ]),
      ],
    );
  }
}
