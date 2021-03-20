import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';

import 'package:path_provider/path_provider.dart';

// TODO: Refactor into fewer methods
// TODO: Implement compression
class StorageService {
  static Future<String> uploadUserProfileImage(
      String photoId, String url, File imageFile) async {
    // final image = await compressImage(photoId, imageFile);
    // TODO: FIX AND MAKE SURE STORAGE DOESN't FILL UP UNNECESARILLY

    final uploadTask = FirebaseStorage.instance
        .ref()
        .child('images/users/userProfile_$photoId.jpg')
        .putFile(imageFile);
    // Storage tasks function as a Delegating Future so we can await them.
    final storageSnap = await uploadTask;
    final downloadUrl = await storageSnap.ref.getDownloadURL();
    return downloadUrl;
  }

  static Future<String> uploadUserCoverPhotoImage(
      String photoId, String url, File imageFile) async {
    // final image = await compressImage(photoId, imageFile);

    if (url.isNotEmpty) {
      // Updating user profile image
      final exp = RegExp(r'userCoverPhoto_(.*).jpg');
      photoId = exp.firstMatch(url)![1]!;
    }

    final uploadTask = FirebaseStorage.instance
        .ref()
        .child('images/users/userCoverPhoto_$photoId.jpg')
        .putFile(imageFile);
    final storageSnap = await uploadTask;
    final downloadUrl = await storageSnap.ref.getDownloadURL();
    return downloadUrl;
  }

  // static Future<File> compressImage(String photoId, File image) async {
  //   final tempDir = await getTemporaryDirectory();
  //   final path = tempDir.path;
  //   final File compressedImageFile =
  //       await FlutterImageCompress.compressAndGetFile(
  //     image.absolute.path,
  //     '$path/img_$photoId.jpg',
  //     quality: 70,
  //   );
  //   return compressedImageFile;
  // }

  static Future<String> uploadPost(String photoId, File imageFile) async {
    // final image = await compressImage(photoId, imageFile);
    final uploadTask = FirebaseStorage.instance
        .ref()
        .child('images/posts/post_$photoId.jpg')
        .putFile(imageFile);
    final storageSnap = await uploadTask;
    final downloadUrl = await storageSnap.ref.getDownloadURL();
    return downloadUrl;
  }
}
