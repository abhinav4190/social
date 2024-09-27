import 'package:flutter/material.dart';
import 'package:social/core/theme/app_palette.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;

  const CustomButton(
      {super.key, required this.onPressed, required this.buttonText});
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: AppPalette.primary,
        foregroundColor: AppPalette.whiteColor,
        minimumSize: const Size(double.infinity, 50)
      ),
      child: Text(buttonText, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
    );
  }
}
