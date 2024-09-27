import 'package:flutter/material.dart';
import 'package:social/core/theme/app_palette.dart';

class ActionText extends StatelessWidget {
  final String text;

  const ActionText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 15,
        color: AppPalette.primary,
        fontWeight: FontWeight.w500,
        decoration: TextDecoration.underline,
        decorationColor: AppPalette.primary,
      ),
    );
  }
}
