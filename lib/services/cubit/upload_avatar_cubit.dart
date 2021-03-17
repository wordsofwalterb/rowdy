import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rowdy/services/mixins/avatar_repo_mixin.dart';

import '../post_upload_repository.dart';

part 'upload_avatar_state.dart';
part 'upload_avatar_cubit.freezed.dart';

class UploadAvatarCubit<R extends AvatarRepoMixin>
    extends Cubit<UploadAvatarState> {
  UploadAvatarCubit(this.repo) : super(const UploadAvatarState.initial());

  R repo;

  Future<void> uploadAvatar(File imageFile, String userId) async {
    emit(const UploadAvatarState.uploading());
    try {
      final avatarUrl =
          StorageService.uploadUserProfileImage(userId, imageFile);

      await avatarUrl.then((value) async => await repo.updateAvatar(value));
      emit(const UploadAvatarState.uploaded());
    } catch (error) {
      emit(const UploadAvatarState.failure());
    }
  }
}
