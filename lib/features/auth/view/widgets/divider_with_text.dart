// widgets/divider_with_text.dart
import 'package:flutter/material.dart';
import 'package:social/core/theme/app_palette.dart';

class DividerWithText extends StatelessWidget {
  final String text;
  final double width;
  const DividerWithText({super.key, required this.text, required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
       width: width,
      child: Row(
        children: [
          Expanded(
            child: Divider(
              thickness: 1.5,
              color: AppPalette.greyColor.withOpacity(0.5),
            ),
          ),
          const SizedBox(width: 8),
          Text(
            text,
            style: const TextStyle(
              fontSize: 14,
              color: AppPalette.greyColor,
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Divider(
              thickness: 1.5,
              color: AppPalette.greyColor.withOpacity(0.5),
            ),
          ),
        ],
      ),
    );
  }
}
