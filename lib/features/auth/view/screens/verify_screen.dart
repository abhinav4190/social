import 'package:flutter/material.dart';
import 'package:social/core/theme/app_palette.dart';
import 'package:social/core/widgets/custom_button.dart';
import 'package:social/features/auth/view/widgets/action_text.dart';
import 'package:social/features/auth/view/widgets/otp_field.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({super.key});
  static const routeName = '/verify';

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  final TextEditingController _codeController = TextEditingController();

  @override
  void dispose() {
    _codeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: TextButton(
              style: TextButton.styleFrom(
                shape: const CircleBorder(),
                side: BorderSide(color: AppPalette.greyColor.withOpacity(0.2)),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
          ),
        ),
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
                      const Text(
                        'Verify Code',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Text(
                        'Enter the code we have just sent to email',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          color: AppPalette.greyColor,
                        ),
                      ),
                      const Text(
                        'example@gmail.com',
                        style: TextStyle(
                          fontSize: 15,
                          color: AppPalette.primary,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: constraints.maxHeight * 0.05),
                      SizedBox(
                        width: constraints.maxWidth * 0.7,
                        child: OtpField(
                          onCompleted: () {},
                        ),
                      ),
                      SizedBox(height: constraints.maxHeight * 0.045),
                      const Text(
                        'Didn\'t receive OTP?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          color: AppPalette.greyColor,
                        ),
                      ),
                      const ActionText(
                        text: 'Resend Code',
                        fontSize: 14,
                      ),
                      SizedBox(height: constraints.maxHeight * 0.04),
                      CustomButton(
                        onPressed: () {}, 
                        buttonText: 'Verify',
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