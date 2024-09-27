import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:social/core/widgets/custom_button.dart';
import 'package:social/features/auth/view/screens/signin_screen.dart';
import 'package:social/features/auth/view/widgets/auth_field.dart';
import 'package:social/features/auth/view/widgets/auth_option_row.dart';
import 'package:social/features/auth/view/widgets/divider_with_text.dart';
import 'package:social/features/auth/view/widgets/header.dart';
import 'package:social/features/auth/view/widgets/social_buttons_row.dart';
import 'package:social/features/auth/view/widgets/terms_checkbox.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});
  static const routeName = '/signup';

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isChecked = false;

  @override
  void dispose() {
    _nameController.dispose();
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
                        title: 'Create Account',
                        label:
                            'Fill your information below or register\nwith your social account.',
                      ),
                      AuthField(
                        controller: _nameController,
                        label: 'Name',
                        hintText: 'Ex. John Doe',
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
                      TermsCheckbox(
                        isChecked: _isChecked,
                        onChanged: (bool? newValue) {
                          setState(() {
                            _isChecked = newValue ?? false;
                          });
                        },
                      ),
                      SizedBox(height: constraints.maxHeight * 0.035),
                      CustomButton(
                        onPressed: () => context.goNamed(SigninScreen.routeName),
                        buttonText: 'Sign Up',
                      ),
                      SizedBox(height: constraints.maxHeight * 0.045),
                      DividerWithText(
                        text: 'Or sign up with',
                        width: constraints.maxWidth * 0.65,
                      ),
                      SizedBox(height: constraints.maxHeight * 0.035),
                      SocialButtonsRow(width: constraints.maxWidth * 0.55),
                      SizedBox(height: constraints.maxHeight * 0.035),
                      const AuthOptionRow(
                        promptText: 'Already have an account?',
                        actionText: 'Sign In',
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