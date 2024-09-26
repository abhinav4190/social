import 'package:flutter/material.dart';
import 'package:social/core/theme/app_theme.dart';
import 'package:social/features/onboarding/view/screens/onboarding_screen.dart';

void main() {
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightThemeMode,
      home: OnboardingScreen(),
    );
  }
}