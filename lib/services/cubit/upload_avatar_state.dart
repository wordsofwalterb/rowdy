part of 'upload_avatar_cubit.dart';

@freezed
abstract class UploadAvatarState with _$UploadAvatarState {
  const factory UploadAvatarState.initial() = _Initial;
  const factory UploadAvatarState.uploading() = _Uploading;
  const factory UploadAvatarState.uploaded() = _Uploaded;
  const factory UploadAvatarState.failure() = _Failure;
}
