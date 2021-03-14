import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rowdy/cubits/Feed_Cubit/feed_cubit.dart';
import 'package:rowdy/models/test.dart';
import 'package:rowdy/services/entity_repository.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => FeedCubit(
        repository: BlocProvider.of<EntityListRepository<FFTest>>(context),
        feedId: 'testFeed',
      ),
      child: HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<FeedCubit<FFTest>, FeedState<FFTest>>(
        builder: (context, state) {
          return state.when(
            initial: () => Container(child: const Text('initial')),
            loading: () => Container(),
            loaded: (list) => Container(),
            reachedMax: (list) => Container(),
            empty: (list) => Container(),
            failure: (list) => Container(),
          );
        },
      ),
    );
  }
}
