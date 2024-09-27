import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:social/core/theme/app_palette.dart';

class OtpField extends StatelessWidget {
   OtpField({
    super.key,
    required this.onCompleted,
  });

  final VoidCallback onCompleted;

  @override
  Widget build(BuildContext context) {
    return Pinput(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      defaultPinTheme: defaultPinTheme,
      preFilledWidget: const Text('-'),
      onCompleted: (pin) => onCompleted(),
    );
  }

  final PinTheme defaultPinTheme = PinTheme(
    width: 60,
    height: 45,
    decoration: BoxDecoration(
      color: AppPalette.greyColor.withOpacity(0.07),
      borderRadius: BorderRadius.circular(10),
    ),
  );
}