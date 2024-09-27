import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:social/core/constants/image_paths.dart';
import 'package:social/core/theme/app_palette.dart';
import 'package:social/core/widgets/custom_button.dart';
import 'package:social/features/auth/view/screens/signin_screen.dart';
import 'package:social/features/auth/view/widgets/auth_option_row.dart';

class GetStartedScreen extends StatelessWidget {
  static const routeName = '/get-started';

  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return SafeArea(
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: constraints.maxWidth * 0.06)
                      .copyWith(top: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    ImagePaths.logo,
                    width: constraints.maxWidth * 0.35,
                  ),
                  SizedBox(
                    height: constraints.maxHeight * 0.06,
                  ),
                  Flexible(
                    child: Image.asset(
                      ImagePaths.authBanner,
                    ),
                  ),
                  SizedBox(
                    height: constraints.maxHeight * 0.04,
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: 'Your Premier ',
                      style: Theme.of(context).textTheme.titleLarge,
                      children: const [
                        TextSpan(
                          text: 'Social Connection App',
                          style: TextStyle(
                            color: AppPalette.primary,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: constraints.maxHeight * 0.03,
                  ),
                  const Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      color: AppPalette.greyColor,
                    ),
                  ),
                  SizedBox(
                    height: constraints.maxHeight * 0.03,
                  ),
                  CustomButton(
                    onPressed: () => context.pushNamed(SigninScreen.routeName),
                    buttonText: 'Let\'s Get Started',
                  ),
                  SizedBox(
                    height: constraints.maxHeight * 0.03,
                  ),
                  const AuthOptionRow(
                    promptText: 'Already have an account?',
                    actionText: 'Sign In',
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
