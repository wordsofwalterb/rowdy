import 'package:rowdy/models/model.dart';

abstract class AvatarUser extends Model {
  AvatarUser(String id) : super(id);

  String? get avatarUrl;
}
