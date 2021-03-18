import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_sfsymbols/flutter_sfsymbols.dart';
import 'package:like_button/like_button.dart';
import 'package:rowdy/models/post.dart';
import 'package:rowdy/util/functions.dart';

import 'profile_avatar.dart';

typedef PostChevronCallback = void Function(bool byCurrentUser, FFPost post);

class PostCard extends StatelessWidget {
  PostCard({
    Key? key,
    this.body,
    this.imageUrl,
    this.commentsDisabled,
    this.isLikedByUser,
    this.commentsCount,
    this.likeCount,
  }) : super(key: key);

  final String? body;
  final String? imageUrl;
  final bool? commentsDisabled;
  final int? likeCount;
  final bool? isLikedByUser;
  final int? commentsCount;

  @override
  Widget build(BuildContext context) {
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
          if (body != null) ...{
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
              child: SelectableText(
                body!,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
          },

          const SizedBox(height: 6),

          if (imageUrl != null) ...{
            FFImageWidget(imageUrl!),
          },

          FFLikeButton(),

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
                child: Text(commentsCount.toString(),
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

class FFImageWidget extends StatelessWidget {
  const FFImageWidget(this.imageUrl, {Key? key}) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Container(
        height: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: CachedNetworkImageProvider(imageUrl),
            fit: BoxFit.cover,
          ),
        ),
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
              'widget._post.authorName',
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

class FFLikeButton extends StatelessWidget {
  const FFLikeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LikeButton(
      size: 20,
      likeCount: 0,
      animationDuration: const Duration(milliseconds: 500),
      isLiked: true,
      onTap: (result) async => !result,
      likeCountAnimationDuration: const Duration(milliseconds: 200),
      countBuilder: (int? count, bool isLiked, String text) {
        Widget result;
        if (count == 0) {
          result = const Text(
            '',
            style: TextStyle(color: Colors.grey),
          );
        } else {
          result = Text(
            text,
            style: const TextStyle(color: Colors.grey),
          );
        }
        return result;
      },
    );
  }
}
