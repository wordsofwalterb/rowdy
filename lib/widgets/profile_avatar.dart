import 'package:flutter/material.dart';

enum AvatarOutline {
  none,
  white,
  dark,
}

/// Displays a cached profile avatar
///
/// If [avatarUrl] is null will build using a default image
/// from the assets folder at [defaultImageSrc]
class ProfileAvatar extends StatelessWidget {
  /// Displays a cached profile avatar
  ///
  /// If [avatarUrl] is null will build using a default image
  /// from the assets folder at [defaultImageSrc]
  const ProfileAvatar({
    this.fileImage,
    this.avatarUrl,
    this.size = 37,
    this.radius = 8,
    this.onPressed,
    this.borderColor = Colors.transparent,
    this.borderWidth = 0,
    this.padding = const EdgeInsets.all(0),
    this.defaultImageSrc = 'assets/images/default4.png',
  });

  /// The url of the avatar
  final String? avatarUrl;

  final EdgeInsets padding;

  /// The size of the avatar
  final double size;

  /// The radius of the border
  final double radius;

  /// The src of the default image
  final String defaultImageSrc;

  /// When happens when the profile image is pressed
  final GestureTapCallback? onPressed;

  final FileImage? fileImage;

  final Color borderColor;
  final double borderWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      child: GestureDetector(
        onTap: onPressed,
        child: Builder(builder: (context) {
          if (fileImage != null) {
            return Container(
              width: size,
              height: size,
              decoration: BoxDecoration(
                border: (borderColor != null)
                    ? Border.all(
                        color: borderColor,
                        width: borderWidth,
                      )
                    : null,
                borderRadius: BorderRadius.circular(radius),
                image: DecorationImage(
                  image: fileImage!,
                  fit: BoxFit.cover,
                ),
              ),
            );
          } else if (avatarUrl != null && avatarUrl != '') {
            return Container(
              width: size,
              height: size,
              decoration: BoxDecoration(
                border: (borderColor != null)
                    ? Border.all(
                        color: borderColor,
                        width: borderWidth,
                      )
                    : null,
                borderRadius: BorderRadius.circular(radius),
                image: DecorationImage(
                  image: NetworkImage(avatarUrl!),
                  fit: BoxFit.cover,
                ),
              ),
            );
            // CachedNetworkImage(
            //   imageUrl: avatarUrl,
            //   imageBuilder: (context, imageProvider) => Container(
            //     width: size,
            //     height: size,
            //     decoration: BoxDecoration(
            //       border: (borderColor != null)
            //           ? Border.all(
            //               color: borderColor,
            //               width: borderWidth,
            //             )
            //           : null,
            //       borderRadius: BorderRadius.circular(radius),
            //       image:
            //           DecorationImage(image: imageProvider, fit: BoxFit.cover),
            //     ),
            //   ),
            //   errorWidget: (context, url, error) => const Icon(Icons.error),
            // );
          }
          // If everything else is false display placeholder
          return Container(
            width: size,
            height: size,
            decoration: BoxDecoration(
              border: (borderColor != null)
                  ? Border.all(
                      color: borderColor,
                      width: borderWidth,
                    )
                  : null,
              borderRadius: BorderRadius.circular(radius),
              image: DecorationImage(
                image: AssetImage(
                  defaultImageSrc,
                ),
                fit: BoxFit.cover,
              ),
            ),
          );
        }),
      ),
    );
  }
}
