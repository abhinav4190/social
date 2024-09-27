import 'package:flutter/material.dart';
import 'package:social/core/widgets/custom_button.dart';
import 'package:social/features/auth/view/widgets/action_text.dart';
import 'package:social/features/auth/view/widgets/auth_field.dart';
import 'package:social/features/auth/view/widgets/auth_option_row.dart';
import 'package:social/features/auth/view/widgets/divider_with_text.dart';
import 'package:social/features/auth/view/widgets/header.dart';
import 'package:social/features/auth/view/widgets/social_buttons_row.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});
  static const routeName = '/signin';

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: constraints.maxWidth * 0.06,
                ).copyWith(top: constraints.maxHeight * 0.06),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Header(
                        spaceHeight: constraints.maxHeight * 0.02,
                        title: 'Sign In',
                        label: 'Hi! Welcome back, you\'ve been missed',
                      ),
                      SizedBox(height: constraints.maxHeight * 0.02),
                      AuthField(
                        controller: _emailController,
                        label: 'Email',
                        hintText: 'example@gmail.com',
                      ),
                      SizedBox(height: constraints.maxHeight * 0.02),
                      AuthField(
                        controller: _passwordController,
                        isObscure: true,
                        suffixIcon: const Icon(Icons.visibility_off_outlined),
                        label: 'Password',
                        hintText: '*************',
                      ),
                      SizedBox(height: constraints.maxHeight * 0.015),
                      const Align(
                        alignment: Alignment.centerRight,
                        child: ActionText(
                          text: 'Forgot Password?',
                        ),
                      ),
                      SizedBox(height: constraints.maxHeight * 0.035),
                      CustomButton(onPressed: () {}, buttonText: 'Sign In'),
                      SizedBox(height: constraints.maxHeight * 0.045),
                      DividerWithText(
                        text: 'Or sign in with',
                        width: constraints.maxWidth * 0.65,
                      ),
                      SizedBox(height: constraints.maxHeight * 0.035),
                      SocialButtonsRow(width: constraints.maxWidth * 0.55),
                      SizedBox(height: constraints.maxHeight * 0.035),
                      const AuthOptionRow(
                        promptText: 'Don\'t have an account?',
                        actionText: 'Sign Up',
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}