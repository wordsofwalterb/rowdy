import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rowdy/models/model.dart';
import 'package:rowdy/services/firebase_service/firebase_service.dart';

part 'feed_stream_state.dart';
part 'feed_stream_cubit.freezed.dart';

class FeedStreamCubit<T extends Model> extends Cubit<FeedStreamState<T>> {
  FeedStreamCubit({
    required this.repository,
    required this.query,
    this.limit = 20,
  }) : super(const FeedStreamState.initial({})) {
    query = query.limit(limit);
  }

  final FirebaseService repository;
  Query query;
  final int limit;

  Future<void> setupFeed() async {
    emit(const FeedStreamState.loading({}));

    final stream = repository.getStreamFromQuery(query);

    stream.listen((itemList) {
      if (itemList.isEmpty) {
        emit(const FeedStreamState.empty({}));
      } else if (itemList.length < limit) {
        Map<String, T> map = {};
        for (final item in itemList) {
          map.addAll({item.id: item as T});
        }
        emit(FeedStreamState.reachedMax(map));
      } else {
        Map<String, T> map = {};
        for (final item in itemList) {
          map.addAll({item.id: item as T});
        }
        emit(FeedStreamState.loaded(map));
      }
    }).onError((error) => emit(FeedStreamState.failure({})));
  }

  Future<void> fetchPage({
    required String startAfterDoc,
  }) async {}
}
