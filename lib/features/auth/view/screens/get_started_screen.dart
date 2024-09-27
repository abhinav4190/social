import 'package:flutter/material.dart';
import 'package:social/core/theme/app_palette.dart';
import 'package:social/core/widgets/custom_button.dart';

class GetStartedScreen extends StatelessWidget {
  static const routeName = '/get-started';
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: constraints.maxWidth * 0.06)
              .copyWith(top: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.png',
                width: constraints.maxWidth * 0.35,
              ),
              SizedBox(
                height: constraints.maxHeight * 0.06,
              ),
              Flexible(
                  child: Image.asset(
                'assets/images/auth_banner.png',
              )),
              SizedBox(
                height: constraints.maxHeight * 0.04,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                    text: 'Your Premier ',
                    style: TextStyle(
                      fontSize: 26,
                      color: AppPalette.blackColor,
                      fontWeight: FontWeight.w700,
                    ),
                    children: [
                      TextSpan(
                        text: 'Social Connection App',
                        style: TextStyle(
                          color: AppPalette.primary,
                        ),
                      )
                    ]),
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
              CustomButton(onPressed: () {}, buttonText: 'Let\'s Get Started'),
              SizedBox(
                height: constraints.maxHeight * 0.03,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Sign In',
                    style: TextStyle(
                      fontSize: 15,
                      color: AppPalette.primary,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline,
                      decorationColor: AppPalette.primary,
                    ),
                  ),
                ],
              ),
            
               
            ],
          ),
        ),
      );
    }));
  }
}
