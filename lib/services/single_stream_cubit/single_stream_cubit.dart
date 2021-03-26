import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rowdy/models/model.dart';
import 'package:rowdy/services/firebase_service/firebase_service.dart';

part 'single_stream_state.dart';
part 'single_stream_cubit.freezed.dart';

class SingleStreamCubit<T extends Model> extends Cubit<SingleStreamState<T>> {
  SingleStreamCubit({
    required this.repository,
    required this.itemId,
  }) : super(const SingleStreamState.initial());

  final FirebaseService<T> repository;
  final String itemId;

  Future<void> setupItem() async {
    emit(const SingleStreamState.loading());

    repository.getStreamfromId(itemId)
      ..listen((itemResult) {
        if (itemResult.hasData) {
          emit(SingleStreamState.loaded(itemResult.data!));
        } else {
          emit(const SingleStreamState.failure());
        }
      });
  }
}
