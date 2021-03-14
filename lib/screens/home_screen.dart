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
      )..setupFeed(),
      child: HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<FeedCubit<FFTest>, FeedState<FFTest>>(
          builder: (context, state) {
            return state.when(
              initial: () => Container(child: const Text('initial')),
              loading: () => Container(child: const Text('loading')),
              loaded: (list) => Text((list[0] as FFTest).body),
              reachedMax: (list) => Container(child: const Text('max')),
              empty: (list) => Container(child: const Text('empty')),
              failure: (list) => Container(child: const Text('failure')),
            );
          },
        ),
      ),
    );
  }
}
