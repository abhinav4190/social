import 'package:flutter/material.dart';
import 'package:social/core/theme/app_palette.dart';

class Header extends StatelessWidget {
  const Header({super.key, required this.title, required this.label, required this.spaceHeight});
  final String title;
  final String label;
  final double spaceHeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Text(
          title,
          style: const TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: spaceHeight),
         Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 14,
            color: AppPalette.greyColor,
          ),
        ),
        SizedBox(height: spaceHeight),
      ],
    );
  }
}
