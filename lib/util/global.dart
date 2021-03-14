import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rowdy/models/post.dart';

class FFGlobal {
  static final CollectionReference postRef =
      FirebaseFirestore.instance.collection('posts');

  // static final FirebaseAnalytics analytics = FirebaseAnalytics();

  static final collectionMapper = <Type, CollectionReference>{
    FFPost: postRef,
  };

  static final jsonMapper = {
    FFPost: (Map<String, dynamic> data) => FFPost.fromJson(data),
  };
}

T parseJson<T>(Map<String, dynamic> data) {
  return FFGlobal.jsonMapper[T]!(data) as T;
}

List<T> parseFirestoreQuery<T>(QuerySnapshot queryList) {
  return queryList.docs
      .map((e) => FFGlobal.jsonMapper[T]!(e.data()!..addAll({'id': e.id})) as T)
      .toList();
}

List<T>? parseJsonList<T>(List<Map<String, dynamic>> jsonList) {
  return jsonList?.map((e) => FFGlobal.jsonMapper[T]!(e) as T)?.toList();
}
