import 'package:rowdy/models/model.dart';

import 'firebase_service.dart';

mixin FirebaseServiceMixin<T extends Model> {
  late FirebaseService<T> service;
}
