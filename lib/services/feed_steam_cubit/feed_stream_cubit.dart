import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rowdy/models/model.dart';
import 'package:rowdy/services/firebase_service/firebase_service.dart';
import 'package:rowdy/util/global.dart';

part 'feed_stream_state.dart';
part 'feed_stream_cubit.freezed.dart';

class FeedStreamCubit<T extends Model> extends Cubit<FeedStreamState<T>> {
  FeedStreamCubit({
    required this.repository,
    this.whereQuery,
    required this.orderByField,
    this.desc = false,
    this.limit = 20,
  }) : super(const FeedStreamState.initial({})) {
    if (whereQuery != null) {
      query = whereQuery!.orderBy(orderByField, descending: desc);
    } else {
      query =
          FFGlobal.collectionMapper[T]!.orderBy(orderByField, descending: desc);
    }

    // feedStream = feedController.stream;
  }

  final FirebaseService<T> repository;
  Query? whereQuery;
  late Query query;
  int limit;
  final bool desc;
  final String orderByField;
  late Stream<List<T>> feedStream;
  DocumentSnapshot? _lastDoc;
  StreamController<List<T>> feedController = StreamController<List<T>>();

  @override
  Future<void> close() async {
    await feedController.close();
    await super.close();
  }

  Future<void> setupFeed() async {
    query = query.limit(limit);
    emit(const FeedStreamState.loading({}));

    final streamResult = repository.getStreamFromQuery(query);

    streamResult.listen((itemList) {
      if (itemList.isEmpty) {
        emit(const FeedStreamState.empty({}));
      } else if (itemList.length == limit) {
        // ignore: omit_local_variable_types
        Map<String, T> map = {};

        for (final item in itemList) {
          map.addAll({item.id: item});
        }
        if (state.itemIds.isNotEmpty) {
          map.addAll(state.itemIds);
        }
        emit(FeedStreamState.reachedMax(map));
      } else {
        // ignore: omit_local_variable_types
        Map<String, T> map = {};
        for (final item in itemList) {
          map.addAll({item.id: item});
        }
        if (state.itemIds.isNotEmpty) {
          map.addAll(state.itemIds);
        }
        emit(FeedStreamState.loaded(map));
      }
    }).onError((error) => emit(const FeedStreamState.failure({})));
  }

  Future<void> fetchPage() async {
    state.maybeWhen(
      reachedMax: (items) async {
        emit(FeedStreamState.loadingMore(items));
        limit = limit + limit;
        final values =
            items.values.map((item) => item.toJson()[orderByField]).toList();

        query = FFGlobal.collectionMapper[T]!
            .orderBy(orderByField, descending: desc)
            .startAfter([values.last]).limit(limit);

        final streamResult = repository.getStreamFromQuery(query);

        streamResult.listen((itemList) {
          if (itemList.isEmpty) {
            emit(const FeedStreamState.empty({}));
          } else if (itemList.length == limit) {
            // ignore: omit_local_variable_types
            Map<String, T> map = {};
            for (final item in itemList) {
              map.addAll({item.id: item});
            }
            emit(FeedStreamState.reachedMax(map));
          } else {
            // ignore: omit_local_variable_types
            Map<String, T> map = {};
            if (state.itemIds.isNotEmpty) {
              map.addAll(state.itemIds);
            }
            for (final item in itemList) {
              map.addAll({item.id: item});
            }
            emit(FeedStreamState.loaded(map));
          }
        }).onError((error) => emit(const FeedStreamState.failure({})));
      },
      orElse: () => {},
    );
  }
}
