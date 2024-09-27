import 'package:flutter/material.dart';
import 'package:social/core/theme/app_theme.dart';
import 'package:social/init_dependencies.dart';
import 'package:social/router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupsharedPreferences();
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightThemeMode,
      routerConfig: AppRouter.router,
    );
  }
}
