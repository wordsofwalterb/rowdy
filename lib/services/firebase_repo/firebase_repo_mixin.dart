import 'package:rowdy/models/model.dart';
import 'package:rowdy/services/firebase_repo/firebase_repository.dart';

mixin FirebaseRepoMixin<T extends Model> {
  late FirebaseRepository<T> repo;
}
