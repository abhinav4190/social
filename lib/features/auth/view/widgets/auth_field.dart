import 'package:flutter/material.dart';
import 'package:social/core/theme/app_palette.dart';

class AuthField extends StatelessWidget {
  const AuthField({
    super.key,
    required this.label,
    required this.hintText,
    required this.controller,
    this.isObscure = false,
    this.suffixIcon,
  });

  final String label;
  final String hintText;
  final TextEditingController controller;
  final bool isObscure;
  final Icon? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 13,
          ),
        ),
        const SizedBox(height: 5),
        SizedBox(
          height: 52,
          child: TextFormField(
            controller: controller,
            obscureText: isObscure,
            obscuringCharacter: '*',
            decoration: InputDecoration(
              hintText: hintText,
              suffixIcon: suffixIcon,
            ),
            cursorColor: AppPalette.greyColor,
            style: const TextStyle(
              fontSize: 14,
              color: AppPalette.greyColor,
            ),
          ),
        ),
      ],
    );
  }
}