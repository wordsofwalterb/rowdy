import 'package:rowdy/models/model.dart';

import '../../util/global.dart';

mixin UpdateEntityRepo<T extends Model> {
  Future<void> updateItem(T item) async {
    try {
      final ref = FFGlobal.collectionMapper[T];

      if (ref != null) {
        await ref.doc(item.id).update(item.toJson());
      }
    } catch (error) {
      throw Exception();
    }
  }
}
