import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rowdy/models/post.dart';
import 'package:rowdy/models/test.dart';

import '../models/student.dart';

class FFGlobal {
  static final CollectionReference likeRef =
      FirebaseFirestore.instance.collection('likes');

  static final CollectionReference commentsRef =
      FirebaseFirestore.instance.collection('comments');

  static final CollectionReference channelsRef =
      FirebaseFirestore.instance.collection('channels');

  static final CollectionReference messagesRef =
      FirebaseFirestore.instance.collection('messages');

  static final CollectionReference postRef =
      FirebaseFirestore.instance.collection('posts');

  static final CollectionReference userRef =
      FirebaseFirestore.instance.collection('students');

  // static final FirebaseAnalytics analytics = FirebaseAnalytics();

  static final collectionMapper = <Type, CollectionReference>{
    FFPost: postRef,
    FFStudent: userRef,
  };

  static final jsonMapper = {
    FFPost: (Map<String, dynamic> data) => FFPost.fromJson(data),
    FFStudent: (Map<String, dynamic> data) => FFTest.fromJson(data),
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
  return jsonList.map((e) => FFGlobal.jsonMapper[T]!(e) as T).toList();
}
