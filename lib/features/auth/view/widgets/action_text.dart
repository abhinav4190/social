import 'package:flutter/material.dart';
import 'package:social/core/theme/app_palette.dart';

class ActionText extends StatelessWidget {
  final String text;
  final double fontSize;

  const ActionText({
    super.key,
    required this.text,
    this.fontSize = 15,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        color: AppPalette.primary,
        fontWeight: FontWeight.w500,
        decoration: TextDecoration.underline,
        decorationColor: AppPalette.primary,
      ),
    );
  }
}