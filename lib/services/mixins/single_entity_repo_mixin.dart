import 'package:bloc/bloc.dart';
import 'package:rowdy/models/model.dart';

mixin SingleEntityRepoMixin<T extends Model> {
  T? entity;
  List<Cubit> cubits = [];

  Future<void> openCubit(Cubit cubit) async {
    cubits.add(cubit);
  }
}
