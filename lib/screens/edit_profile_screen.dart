import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:rowdy/models/student.dart';
import 'package:rowdy/services/firebase_service/firebase_service.dart';
import 'package:rowdy/services/post_upload_service.dart';
import 'package:rowdy/services/user/user_cubit/user_repository.dart';
import 'package:rowdy/widgets/profile_avatar.dart';

import '../widgets/cover_photo.dart';

enum ImageToChange {
  profileImage,
  coverImage,
}

class EditProfileScreen extends StatefulWidget {
  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _bioController = TextEditingController();
  File? coverPhotoFile;
  File? avatarFile;
  bool _isLoading = false;

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _bioController.dispose();
    // avatarFile.delete();
    // coverPhotoFile.delete();
    super.dispose();
  }

  Future<void> _editProfile() async {
    setState(() {
      _isLoading = true;
    });
    final currentUser = context.read<UserRepository>().state.maybeWhen(
          authenticated: (user) => user,
          orElse: () => null,
        );

    if (currentUser != null) {
      var firstName = currentUser.firstName;
      if (_firstNameController.text.isNotEmpty) {
        firstName = _firstNameController.text;
      }

      var lastName = currentUser.lastName;
      if (_lastNameController.text.isNotEmpty) {
        lastName = _lastNameController.text;
      }

      var bio = currentUser.bio;
      if (_bioController.text.isNotEmpty) {
        bio = _bioController.text;
      }

      var avatarUrl = currentUser.avatarUrl;
      if (avatarFile != null) {
        avatarUrl = await StorageService.uploadUserProfileImage(
            currentUser.id, avatarFile!);
      }

      var coverPhotoUrl = currentUser.coverPhotoUrl;
      if (coverPhotoFile != null) {
        coverPhotoUrl = await StorageService.uploadUserCoverPhotoImage(
            currentUser.id, coverPhotoFile!);
      }

      await FirebaseService<FFStudent>().updateItem(currentUser.copyWith(
        firstName: firstName,
        lastName: lastName,
        fullName: '$firstName $lastName',
        bio: bio,
        avatarUrl: avatarUrl,
        coverPhotoUrl: coverPhotoUrl,
      ));
    }

    setState(() {
      _isLoading = false;
    });

    Navigator.of(context).pop();
  }

  Future<void> _showSelectImageDialog(ImageToChange toChange) {
    return Platform.isIOS
        ? _iosBottomSheet(toChange)
        : _androidDialog(toChange);
  }

  Future<void> _iosBottomSheet(ImageToChange toChange) async {
    await showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) {
        return CupertinoActionSheet(
          title: const Text('Add Photo'),
          actions: <Widget>[
            CupertinoActionSheetAction(
              onPressed: () => _handleImage(ImageSource.camera, toChange),
              child: const Text('Take Photo'),
            ),
            CupertinoActionSheetAction(
              onPressed: () => _handleImage(ImageSource.gallery, toChange),
              child: const Text('Choose From Gallery'),
            ),
          ],
          cancelButton: CupertinoActionSheetAction(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
        );
      },
    );
  }

  Future<void> _androidDialog(ImageToChange toChange) async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: const Text('Add Photo'),
          children: <Widget>[
            SimpleDialogOption(
              onPressed: () => _handleImage(ImageSource.camera, toChange),
              child: const Text('Take Photo'),
            ),
            SimpleDialogOption(
              onPressed: () => _handleImage(ImageSource.gallery, toChange),
              child: const Text('Choose From Gallery'),
            ),
            SimpleDialogOption(
              onPressed: () => Navigator.pop(context),
              child: const Text(
                'Cancel',
                style: TextStyle(
                  color: Colors.redAccent,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Future<File?> _cropImage(File imageFile) async {
    final croppedImage = await ImageCropper.cropImage(
      sourcePath: imageFile.path,
      aspectRatio: const CropAspectRatio(ratioX: 1.0, ratioY: 1.0),
    );
    return croppedImage;
  }

  Future<void> _handleImage(ImageSource source, ImageToChange toChange) async {
    Navigator.pop(context);
    FocusScope.of(context).unfocus();
    final picked = await ImagePicker().getImage(source: source);
    var imageFile = (picked != null) ? File(picked.path) : null;
    if (imageFile != null) {
      imageFile = await _cropImage(imageFile);
      setState(() {
        switch (toChange) {
          case ImageToChange.profileImage:
            {
              avatarFile = imageFile;
              break;
            }
          case ImageToChange.coverImage:
            {
              coverPhotoFile = imageFile;
              break;
            }
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Theme.of(context).backgroundColor,
          title: const Text(
            'Edit Profile',
          ),
          actions: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(right: 14),
                child: GestureDetector(
                  onTap: _editProfile,
                  child: Text(
                    'Done',
                    style: TextStyle(
                      color: const Color(0xffce7224),
                      fontSize: 16,
                      fontFamily: 'SFProText',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            if (_isLoading)
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: LinearProgressIndicator(
                  backgroundColor: Colors.blue[200],
                  valueColor: const AlwaysStoppedAnimation(Colors.blue),
                ),
              )
            else
              const SizedBox.shrink(),
            _coverPhoto(),
            _profilePhoto(),
            _textFields(),
          ]),
        ));
  }

  Widget _coverPhoto() {
    final coverPhotoUrl =
        context.select((UserRepository r) => r.state.maybeWhen(
              authenticated: (user) => user.coverPhotoUrl,
              orElse: () => null,
            ));
    return Padding(
      padding: const EdgeInsets.fromLTRB(19, 17, 19, 10),
      child: CoverPhoto(
        onPressed: () => _showSelectImageDialog(ImageToChange.coverImage),
        fileImage: (coverPhotoFile != null) ? FileImage(coverPhotoFile!) : null,
        height: 120,
        width: double.infinity,
        coverPhotoUrl: coverPhotoUrl,
      ),
    );
  }

  Widget _profilePhoto() {
    final avatarUrl = context.select((UserRepository r) => r.state.maybeWhen(
          authenticated: (user) => user.coverPhotoUrl,
          orElse: () => null,
        ));

    return ProfileAvatar(
      onPressed: () => _showSelectImageDialog(ImageToChange.profileImage),
      avatarUrl: avatarUrl,
      fileImage: (avatarFile != null) ? FileImage(avatarFile!) : null,
      radius: 100,
      size: 90,
    );
  }

  Widget _textFields() {
    final firstName = context.select((UserRepository r) => r.state.maybeWhen(
          authenticated: (user) => user.firstName,
          orElse: () => null,
        ));

    final lastName = context.select((UserRepository r) => r.state.maybeWhen(
          authenticated: (user) => user.lastName,
          orElse: () => null,
        ));

    final bio = context.select((UserRepository r) => r.state.maybeWhen(
          authenticated: (user) => user.bio,
          orElse: () => null,
        ));

    return Column(children: [
      const SizedBox(
        height: 20,
      ),
      Container(
        decoration: const BoxDecoration(
            border: Border(
          top: BorderSide(
            color: Color(0xff3d3d3d),
          ),
          bottom: BorderSide(
            color: Color(0xff3d3d3d),
          ),
        )),
        child: TextFormField(
          style: TextStyle(
            color: const Color(0xfff1f1f1),
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
          controller: _firstNameController,
          decoration: InputDecoration(
            filled: false,
            hintStyle: TextStyle(
              color: Colors.grey,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            prefixIcon: Container(
              padding: const EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width * .35,
              child: Text(
                'First Name',
                style: TextStyle(
                  color: const Color(0xfff1f1f1),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            alignLabelWithHint: true,
            floatingLabelBehavior: FloatingLabelBehavior.never,
            hintText: firstName,
            // errorText: (state.error == 'Last name needs to be provided')
            //     ? state.error
            //     : null,
          ),
          autovalidate: false,
          autocorrect: false,
          textCapitalization: TextCapitalization.words,
          // focusNode: _lastNameFocus,
          textInputAction: TextInputAction.done,
          // onFieldSubmitted: (term) {
          //    _fieldFocusChange(context, _lastNameFocus, _emailFocus);
          // },
        ),
      ),
      const SizedBox(
        height: 3,
      ),
      Container(
        decoration: const BoxDecoration(
            border: Border(
          bottom: BorderSide(
            color: Color(0xff3d3d3d),
          ),
        )),
        child: TextFormField(
          style: TextStyle(
            color: const Color(0xfff1f1f1),
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
          controller: _lastNameController,
          decoration: InputDecoration(
            filled: false,
            hintStyle: TextStyle(
              color: Colors.grey,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            prefixIcon: Container(
              padding: const EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width * .35,
              child: Text(
                'Last Name',
                style: TextStyle(
                  color: const Color(0xfff1f1f1),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            alignLabelWithHint: true,
            floatingLabelBehavior: FloatingLabelBehavior.never,
            hintText: lastName,
            // errorText: (state.error == 'Last name needs to be provided')
            //     ? state.error
            //     : null,
          ),
          autovalidate: false,
          autocorrect: false,
          textCapitalization: TextCapitalization.words,
          // focusNode: _lastNameFocus,
          textInputAction: TextInputAction.done,
          // onFieldSubmitted: (term) {
          //    _fieldFocusChange(context, _lastNameFocus, _emailFocus);
          // },
        ),
      ),
      const SizedBox(
        height: 3,
      ),
      Container(
        decoration: const BoxDecoration(
            border: Border(
          bottom: BorderSide(
            color: Color(0xff3d3d3d),
          ),
        )),
        child: TextFormField(
          maxLines: 3,
          style: TextStyle(
            color: const Color(0xfff1f1f1),
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
          controller: _bioController,
          decoration: InputDecoration(
            filled: false,
            hintStyle: TextStyle(
              color: Colors.grey,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            prefixIcon: Container(
              padding: const EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width * .35,
              child: Text(
                'Bio',
                style: TextStyle(
                  color: const Color(0xfff1f1f1),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            alignLabelWithHint: true,
            floatingLabelBehavior: FloatingLabelBehavior.never,
            hintText: bio,
            // errorText: (state.error == 'Last name needs to be provided')
            //     ? state.error
            //     : null,
          ),
          autovalidate: false,
          autocorrect: false,
          textCapitalization: TextCapitalization.sentences,
          // focusNode: _lastNameFocus,
          textInputAction: TextInputAction.done,
          // onFieldSubmitted: (term) {
          //    _fieldFocusChange(context, _lastNameFocus, _emailFocus);
          // },
        ),
      ),
    ]);
  }
}
