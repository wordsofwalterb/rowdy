import 'package:rowdy/models/model.dart';

import 'feed_filter.dart';
import 'feed_sort.dart';

class Feed<T extends Model> {
  Feed({
    this.isDirty = false,
    this.feedData = const [],
    this.filter,
    this.sort,
  });

  bool isDirty;
  final List<T> feedData;
  final FeedFilter? filter;
  final FeedSort? sort;
}
