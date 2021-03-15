import 'feed_filter.dart';
import 'feed_sort.dart';

class Feed<T> {
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
