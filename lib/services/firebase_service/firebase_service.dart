import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rowdy/models/model.dart';
import 'package:rowdy/services/feeds/feed_filter.dart';
import 'package:rowdy/services/feeds/feed_sort.dart';

import 'package:rowdy/util/global.dart';
import 'package:rowdy/util/result.dart';

import 'firebase_auth_mixin.dart';
import 'firebase_email_auth_mixin.dart';

class FirebaseService<T extends Model>
    with FirebaseAuthMixin<T>, EmailLoginMixin<T> {
  /// Creates document for user in firestore after registration.
  Future<void> setupUser(
      {required String firstName,
      required String lastName,
      required String email}) async {
    final _random = Random();

    final defaultAvatarIndex = _random.nextInt(4);
    const accessToken = [
      'https://firebasestorage.googleapis.com/v0/b/fyrefly-92a36.appspot.com/o/images%2Fdefault%2FdefaultAvatar1.png?alt=media&token=4f1a8bd3-39f7-4f72-b26a-417afa58d1a0',
      'https://firebasestorage.googleapis.com/v0/b/fyrefly-92a36.appspot.com/o/images%2Fdefault%2FdefaultAvatar2.png?alt=media&token=61f44679-6903-46bf-b806-7cdc819d3ace',
      'https://firebasestorage.googleapis.com/v0/b/fyrefly-92a36.appspot.com/o/images%2Fdefault%2FdefaultAvatar3.png?alt=media&token=aa2ccebb-d34c-4c55-814f-54934d41a590',
      'https://firebasestorage.googleapis.com/v0/b/fyrefly-92a36.appspot.com/o/images%2Fdefault%2FdefaultAvatar4.png?alt=media&token=c6ee020c-4d0d-4f30-97ed-dd4fdcc93401',
    ];

    try {
      final currentUser = auth.currentUser!;
      final userMap = {
        'id': currentUser.uid,
        'firstName': firstName,
        'lastName': lastName,
        'email': email,
        'fullName': '$firstName $lastName',
        'avatarUrl': accessToken[defaultAvatarIndex],
      };

      await FFGlobal.userRef.doc(currentUser.uid).set(userMap);
    } catch (error) {
      throw Exception('There was an unexpected error connecting to database');
    }
  }

  Future<FFResult<List<T>>> getQuery(Query query) async {
    try {
      return FFResult<List<T>>.success(parseFirestoreQuery(await query.get()));
    } catch (err) {
      return FFResult.failure(
          errorCode: 'QUERY_ERROR',
          errorMessage: 'There was an error parsing firestore query');
    }
  }

  Future<void> updateWithMap(String docId, Map<String, dynamic> map) async {
    try {
      final ref = FFGlobal.collectionMapper[T];

      if (ref != null) {
        await ref.doc(docId).update(map);
      }
    } catch (error) {
      throw Exception('Cant update with map');
    }
  }

  Stream<List<T>> getStreamFromQuery(Query query) {
    return query.snapshots().map((list) {
      final newList = list.docs.map((doc) {
        final fun = FFGlobal.jsonMapper[T];
        final data = doc.data();

        if (fun != null && data != null) {
          final conv = fun(data) as T;
          return conv;
        } else {
          throw Exception();
        }
      });
      return newList.toList();
    });
  }

  Stream<FFResult<T>> getStreamfromId(String id) {
    return FFGlobal.collectionMapper[T]!.doc(id).snapshots().map((doc) {
      final fun = FFGlobal.jsonMapper[T];
      final data = doc.data();

      if (fun != null && data != null) {
        final conv = fun(data) as T;
        return FFResult<T>.success(conv);
      } else {
        throw FFResult<T>.failure(errorCode: 'Error', errorMessage: 'error');
        ;
      }
    });
  }

  Stream<List<T>> getStreamFromIds(List<String> ids) {
    final ref = FFGlobal.collectionMapper[T]!;
    Stream<List<T>> s;
    for (final id in ids) {
      ref.doc(id).snapshots().map((doc) {
        final fun = FFGlobal.jsonMapper[T];
        final data = doc.data();

        if (fun != null && data != null) {
          final conv = fun(data) as T;
          return conv;
        } else {
          throw Exception();
        }
      });
    }

    return ref.snapshots().map((list) {
      final newList = list.docs.map((doc) {
        final fun = FFGlobal.jsonMapper[T];
        final data = doc.data();

        if (fun != null && data != null) {
          final conv = fun(data) as T;
          return conv;
        } else {
          throw Exception();
        }
      });
      return newList.toList();
    });
  }

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

  Future<void> addItem(T item) async {
    try {
      final ref = FFGlobal.collectionMapper[T];

      if (ref != null) {
        await ref.doc(item.id).set(item.toJson());
      }
    } catch (error) {
      throw Exception();
    }
  }

  Query _buildFirestoreQuery(
      CollectionReference ref, int limit, FeedFilter? f, FeedSort? s) {
    var query = ref.limit(limit);
    if (f?.filterField != null && f?.isEqualTo != null) {
      query = query.where(f?.filterField, isEqualTo: f?.isEqualTo);
    }
    if (s?.orderBy != null) {
      query = query.orderBy(s?.orderBy, descending: s?.descending ?? false);
    }
    return query;
  }
}

// abstract class StudentRepository {
//   Future<StudentResult> getStudentById(String id);
//   Future<List<Student>> findStudentsByName(String keyword);
// }

// class StudentResult {
//   final bool hasError;
//   final Student student;
//   final Failure error;

//   const StudentResult({this.student, this.error, @required this.hasError});
// }

// class FirebaseStudentRepository extends StudentRepository {
//   final FirebaseFirestore _firestore;

//   FirebaseStudentRepository({
//     FirebaseFirestore firestore,
//   }) : _firestore = firestore ?? FirebaseFirestore.instance;

//   @override
//   Future<List<Student>> findStudentsByName(String keyword) async {
//     keyword.trim();
//     // TODO: Use String buffer and move to seperate method
//     final fullName = keyword.split(' ');
//     final List<String> sanitizedWords = [];
//     for (final word in fullName) {
//       sanitizedWords
//           .add(word[0].toUpperCase() + word.substring(1).toLowerCase());
//     }
//     final StringBuffer sanitizedFullKeyword = StringBuffer();
//     for (final word in sanitizedWords) {
//       sanitizedFullKeyword.write('$word ');
//     }
//     print(sanitizedFullKeyword.toString());

//     final query = await _firestore
//         .collection('students')
//         .where('fullName',
//             isGreaterThanOrEqualTo: sanitizedFullKeyword.toString().trim())
//         .get();

//     sanitizedFullKeyword.clear();

//     return query.docs
//         .map((e) =>
//             Student.fromJson(e.data()..addAll(<String, dynamic>{'id': e.id})))
//         .toList();
//   }

//   @override
//   Future<StudentResult> getStudentById(String id) async {
//     try {
//       final document = await _firestore.collection('students').doc(id).get();
//       if (document.data().isNotEmpty) {
//         return StudentResult(
//             student: Student.fromJson(
//               document.data()..addAll(<String, dynamic>{'id': id}),
//             ),
//             hasError: false);
//       } else {
//         throw Failure('Profile info was not found', 'DATA_NULL');
//       }
//     } on Failure catch (e) {
//       return StudentResult(error: e, hasError: true);
//     } catch (e) {
//       return StudentResult(
//         error: Failure(
//           'There was an error retrieving profile info',
//           e.toString(),
//         ),
//         hasError: true,
//       );
//     }
//   }
// }
