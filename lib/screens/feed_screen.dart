import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rowdy/models/post.dart';
import 'package:rowdy/services/feeds/feed_cubit/feed_cubit.dart';
import 'package:rowdy/services/repositories/post_repository.dart';
import 'package:rowdy/util/global.dart';
import 'package:rowdy/widgets/bottom_loader.dart';

import '../widgets/main_app_bar.dart';
import '../widgets/post/post_card.dart';

class PostFeedScreen extends StatelessWidget {
  const PostFeedScreen(this.feedController, {Key? key}) : super(key: key);

  final ScrollController feedController;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FeedCubit(
          repository: BlocProvider.of<PostRepository>(context),
          query: FFGlobal.collectionMapper[FFPost]!.limit(20)),
      child: FeedScreen(
        feedController: feedController,
      ),
    );
  }
}

class FeedScreen extends StatefulWidget {
  const FeedScreen({required this.feedController});

  final ScrollController feedController;

  @override
  _FeedScreenState createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen>
    with AutomaticKeepAliveClientMixin<FeedScreen> {
  late ScrollController _feedController;
  final _scrollThreshold = 200.0;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    _feedController = widget.feedController;
    _feedController.addListener(_onScroll);
  }

  void _onScroll() {
    final maxScroll = _feedController.position.maxScrollExtent;
    final currentScroll = _feedController.position.pixels;
    if (maxScroll - currentScroll <= _scrollThreshold) {
      context.read();
    }
  }

  Future<void> _onRefresh() async {
    // _postBloc.add(RefreshPosts());
  }

  void _showPostDialog(bool byCurrentUser, String post) {
    return Platform.isIOS
        ? _iosBottomSheet(byCurrentUser, post)
        : _androidDialog(byCurrentUser, post);
  }

  void _iosBottomSheet(bool byCurrentUser, String post) {
    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) {
        return CupertinoActionSheet(
          title: const Text('Options'),
          actions: <Widget>[
            if (byCurrentUser) ...{
              CupertinoActionSheetAction(
                onPressed: () => _deletePost(context, post),
                child: const Text('Delete Post'),
              ),
            } else ...{
              CupertinoActionSheetAction(
                onPressed: () => Navigator.pop(context),
                child: const Text('Report Post'),
              ),
            }
          ],
          cancelButton: CupertinoActionSheetAction(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
        );
      },
    );
  }

  void _androidDialog(bool byCurrentUser, String post) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: const Text('Options'),
          children: <Widget>[
            if (byCurrentUser) ...{
              SimpleDialogOption(
                onPressed: () => _deletePost(context, post),
                child: const Text('Delete Post'),
              ),
            } else ...{
              SimpleDialogOption(
                onPressed: () => Navigator.pop(context),
                child: const Text('Report Post'),
              ),
            },
            SimpleDialogOption(
              onPressed: () => Navigator.pop(context),
              child: const Text(
                'Cancel',
                style: TextStyle(
                  color: Colors.redAccent,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Future<void> _deletePost(BuildContext context, String id) async {
    Navigator.pop(context);
  }

  Future<void> _reportPost() async {}

  @override
  void dispose() {
    _feedController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: mainAppBar(context),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        backgroundColor: Theme.of(context).backgroundColor,
        child: const Icon(Icons.add, color: Colors.white),
      ),
      body: RefreshIndicator(
        color: Theme.of(context).primaryColor,
        onRefresh: _onRefresh,
        child: CustomScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          controller: _feedController,
          slivers: <Widget>[
            _onYourMind(),
            _postList(),
          ],
        ),
      ),
    );
  }

  Widget _onYourMind() {
    return SliverList(
      delegate: SliverChildListDelegate([
        GestureDetector(
          onTap: () => {},
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).backgroundColor,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(4),
            ),
            width: MediaQuery.of(context).size.width,
            height: 45,
            margin: const EdgeInsets.fromLTRB(8, 14, 8, 4),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text('What\'s on your mind?',
                    style: Theme.of(context).textTheme.bodyText2),
              ),
            ),
          ),
        ),
      ]),
    );
  }

  Widget _postList() {
    final postFeed = context.watch<FeedCubit<PostRepository>>();

    return postFeed.state.when(
      initial: (_) {
        return SliverList(
          delegate: SliverChildListDelegate(
            [
              const Center(
                child: CircularProgressIndicator(),
              ),
            ],
          ),
        );
      },
      loading: (_) {
        return SliverList(
          delegate: SliverChildListDelegate(
            [
              const Center(
                child: CircularProgressIndicator(),
              ),
            ],
          ),
        );
      },
      loaded: (state) {
        return SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              if (index >= state.length) {
                return BottomLoader();
              } else {
                return PostCard(
                  key: ValueKey(state[index]),
                  id: state[index],
                );
              }
            },
            childCount: state.length + 1,
          ),
        );
      },
      reachedMax: (state) {
        return SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              if (index >= state.length) {
                return BottomLoader();
              } else {
                return PostCard(
                  key: ValueKey(state[index]),
                  id: state[index],
                );
              }
            },
            childCount: state.length + 1,
          ),
        );
      },
      empty: (_) => Container(),
      failure: (_) => Container(),
    );
  }
}

//   return BlocBuilder<PostsBloc, PostsState>(builder: (context, postState) {
//     if (postState is PostsInitial) {
//       return SliverList(
//         delegate: SliverChildListDelegate(
//           [
//             const Center(
//               child: CircularProgressIndicator(),
//             ),
//           ],
//         ),
//       );
//     }
//     if (postState is PostsError) {
//       return SliverList(
//           delegate: SliverChildListDelegate([
//         const Center(
//           child: Text('failed to fetch posts'),
//         ),
//       ]));
//     }
//     if (postState is PostsEmpty) {
//       return SliverList(
//           delegate: SliverChildListDelegate([
//         const Center(
//           child: Text('no posts'),
//         ),
//       ]));
//     }
//     if (postState is PostsLoaded || postState is PostsReachedMax) {
//       return SliverList(
//         delegate: SliverChildBuilderDelegate(
//           (BuildContext context, int index) {
//             if (index >= postState.posts.length &&
//                 postState is PostsReachedMax) {
//               return Container(
//                 width: MediaQuery.of(context).size.width,
//                 height: 50,
//                 child: const Align(
//                   child: Text('No more posts :/'),
//                 ),
//               );
//             } else if (index >= postState.posts.length &&
//                 postState is PostsLoaded) {
//               return BottomLoader();
//             } else {
//               return PostCard(
//                 onChevronTap: _showPostDialog,
//                 post: postState.posts[index],
//               );
//             }
//           },
//           childCount: postState.posts.length + 1,
//         ),
//       );
//     }
//     return const SliverPadding(padding: EdgeInsets.all(0));
//   });
// }
// }
