// widgets/social_buttons_row.dart
import 'package:flutter/material.dart';
import 'package:social/core/constants/image_paths.dart';
import 'package:social/features/auth/view/widgets/social_button.dart';

class SocialButtonsRow extends StatelessWidget {
  final double width;

  const SocialButtonsRow({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SocialButton(
            onPressed: () {},
            iconPath: ImagePaths.appleIcon,
          ),
          SocialButton(
            onPressed: () {},
            iconPath: ImagePaths.googleIcon,
          ),
          SocialButton(
            onPressed: () {},
            iconPath: ImagePaths.facebookIcon,
          ),
        ],
      ),
    );
  }
}
