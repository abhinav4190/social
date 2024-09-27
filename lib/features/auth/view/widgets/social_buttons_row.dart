import 'package:flutter/material.dart';
import 'package:social/core/constants/image_paths.dart';
import 'package:social/features/auth/view/widgets/social_button.dart';

class SocialButtonsRow extends StatelessWidget {
  final double width;

  const SocialButtonsRow({
    super.key,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SocialButton(
            onPressed: () {
              // Action for Apple button
            },
            iconPath: ImagePaths.appleIcon,
          ),
          SocialButton(
            onPressed: () {
              // Action for Google button
            },
            iconPath: ImagePaths.googleIcon,
          ),
          SocialButton(
            onPressed: () {
              // Action for Facebook button
            },
            iconPath: ImagePaths.facebookIcon,
          ),
        ],
      ),
    );
  }
}