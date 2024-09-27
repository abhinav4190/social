import 'package:flutter/material.dart';
import 'package:social/features/auth/view/widgets/action_text.dart';

class AuthOptionRow extends StatelessWidget {
  const AuthOptionRow({super.key, required this.promptText, required this.actionText});
  final String promptText;
  final String actionText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Text(
          promptText,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
        ),
        const SizedBox(width: 5),
        GestureDetector(
          onTap: () {
            // Navigate to Sign In screen
          },
          child:  ActionText(text: actionText)
        ),
      ],
    );
  }
}
