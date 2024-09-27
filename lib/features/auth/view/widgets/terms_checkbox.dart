import 'package:flutter/material.dart';
import 'package:social/core/theme/app_palette.dart';
import 'package:social/features/auth/view/widgets/auth_option_row.dart';

class TermsCheckbox extends StatelessWidget {
  final bool isChecked;
  final ValueChanged<bool?> onChanged;

  const TermsCheckbox({
    super.key,
    required this.isChecked,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 24,
          width: 24,
          child: Checkbox(
            value: isChecked,
            activeColor: AppPalette.primary,
            onChanged: onChanged,
          ),
        ),
        const SizedBox(width: 6),
        const AuthOptionRow(
          promptText: 'Agree with',
          actionText: 'Terms & Conditions', // Fixed spelling
        ),
      ],
    );
  }
}