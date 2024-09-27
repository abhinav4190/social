import 'package:flutter/material.dart';
import 'package:social/core/theme/app_palette.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key,
    required this.onPressed,
    required this.iconPath,
  });

  final VoidCallback onPressed;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        side: BorderSide(
          color: AppPalette.greyColor.withOpacity(0.2),
          width: 1.5,
        ),
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(18),
      ),
      child: Image.asset(
        iconPath,
        fit: BoxFit.contain,
        width: 25,
      ),
    );
  }
}
