import 'package:flutter/material.dart';
import 'package:social/core/theme/app_theme.dart';
import 'package:social/init_dependencies.dart';
import 'package:social/router.dart';

void main() async {
  // Ensure Flutter bindings are initialized
  WidgetsFlutterBinding.ensureInitialized();
  
  // Set up shared preferences
  await setupSharedPreferences();
  
  // Run the app
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false, // Disable debug banner
      theme: AppTheme.lightThemeMode, // Apply the light theme
      routerConfig: AppRouter.router, // Set up router configuration
    );
  }
}