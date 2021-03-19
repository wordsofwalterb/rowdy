import 'package:bloc/bloc.dart';
import 'package:rowdy/models/model.dart';

import 'package:rowdy/models/student.dart';
import 'package:rowdy/services/feeds/feed_cubit/feed_cubit.dart';
import 'package:rowdy/services/feeds/feed_filter.dart';
import 'package:rowdy/services/feeds/feed_repo_mixin.dart';
import 'package:rowdy/services/feeds/feed_sort.dart';
import 'package:rowdy/services/firebase_service/firebase_repo_mixin.dart';
import 'package:rowdy/services/firebase_service/firebase_service.dart';
import 'package:rowdy/util/result.dart';

// class FeedSettings {
//   FeedSettings({
//     this.feedData = const [],
//     this.filter,
//     this.sort,
//   });

//   final List<String> feedData;
//   final FeedFilter? filter;
//   final FeedSort? sort;
// }

class StudentRepository extends Cubit<Map<String, FFStudent>>
    with FeedMixin<FFStudent> {
  StudentRepository(this.service) : super({});

  @override
  FirebaseService<FFStudent> service;
}
