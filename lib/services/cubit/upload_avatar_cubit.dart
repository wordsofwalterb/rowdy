import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rowdy/services/user/avatar_user_cubit_mixin.dart';
import 'package:rowdy/services/user/user_cubit/user_cubit.dart';

import '../post_upload_repository.dart';

part 'upload_avatar_state.dart';
part 'upload_avatar_cubit.freezed.dart';

class UploadAvatarCubit<C extends UserCubit> extends Cubit<UploadAvatarState> {
  UploadAvatarCubit(this.userCubit) : super(const UploadAvatarState.initial());

  C userCubit;

  Future<void> uploadAvatar(File imageFile, String userId) async {
    emit(const UploadAvatarState.uploading());
    try {
      final avatarUrl =
          StorageService.uploadUserProfileImage(userId, imageFile);

      await avatarUrl
          .then((value) async => await userCubit.updateAvatar(value));
      emit(const UploadAvatarState.uploaded());
    } catch (error) {
      emit(const UploadAvatarState.failure());
    }
  }
}
