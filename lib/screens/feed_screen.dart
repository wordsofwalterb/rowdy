import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rowdy/models/post.dart';
import 'package:rowdy/models/student.dart';
import 'package:rowdy/services/feed_steam_cubit/feed_stream_cubit.dart';

import 'package:rowdy/services/firebase_service/firebase_service.dart';

import 'package:rowdy/util/global.dart';
import 'package:rowdy/util/router.dart';
import 'package:rowdy/widgets/bottom_loader.dart';

import '../widgets/main_app_bar.dart';
import '../widgets/post/post_card.dart';

class PostFeedScreen extends StatelessWidget {
  const PostFeedScreen(this.feedController, {Key? key}) : super(key: key);

  final ScrollController feedController;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<FeedStreamCubit<FFPost>>(
            create: (_) => FeedStreamCubit<FFPost>(
                repository: FirebaseService<FFPost>(),
                query: FFGlobal.collectionMapper[FFPost]!
                    .orderBy('postTime', descending: true)
                    .limit(20))
              ..setupFeed()),
        BlocProvider<FeedStreamCubit<FFStudent>>(
            create: (_) => FeedStreamCubit<FFStudent>(
                repository: FirebaseService<FFStudent>(),
                query: FFGlobal.collectionMapper[FFStudent]!.limit(20))
              ..setupFeed()),
      ],
      child: FeedScreen(feedController: feedController),
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
      // context.read();
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
        onPressed: () => Navigator.of(context).pushNamed(FFRoutes.createPost),
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
          onTap: () => Navigator.of(context).pushNamed(FFRoutes.createPost),
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
    final postFeed = context.watch<FeedStreamCubit<FFPost>>();
    final keys = postFeed.state.itemIds.keys.toList();

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
        return BlocProvider<FeedStreamCubit<FFStudent>>(
          create: (_) => FeedStreamCubit(
              repository: FirebaseService<FFStudent>(),
              query: FFGlobal.collectionMapper[FFStudent]!.limit(20))
            ..setupFeed(),
          child: SliverFixedExtentList(
            itemExtent: double.infinity,
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                if (index >= state.length) {
                  return BottomLoader();
                } else {
                  return PostCard(
                    key: ValueKey(keys[index]),
                    id: keys[index],
                  );
                }
              },
              childCount: state.length + 1,
            ),
          ),
        );
      },
      reachedMax: (state) {
        return BlocProvider<FeedStreamCubit<FFStudent>>(
          create: (_) => FeedStreamCubit(
              repository: FirebaseService<FFStudent>(),
              query: FFGlobal.collectionMapper[FFStudent]!.limit(20))
            ..setupFeed(),
          child: SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                if (state.length > index) {
                  return PostCard(
                    key: ValueKey(keys[index]),
                    id: keys[index],
                  );
                }
              },
              childCount: state.length + 1,
            ),
          ),
        );
      },
      empty: (_) => const SliverPadding(padding: EdgeInsets.zero),
      failure: (_) => const SliverPadding(padding: EdgeInsets.zero),
    );
  }
}
