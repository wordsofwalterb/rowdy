import 'package:rowdy/models/model.dart';

abstract class Likable extends Model {
  Likable(String id) : super(id);

  int get likeCount;
  List<String> get likedBy;
  List<String> get unlikedBy;
}
