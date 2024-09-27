import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:social/features/auth/view/screens/get_started_screen.dart';
import 'package:social/features/onboarding/view/screens/onboarding_screen.dart';
import 'package:social/init_dependencies.dart';

class AppRouter{
 static final router = GoRouter(
  initialLocation: _initialLocation(),
  routes: [
    GoRoute(
      name: OnboardingScreen.routeName,
      path: OnboardingScreen.routeName,
      builder: (_, __) => OnboardingScreen(),
      ),
      GoRoute(
      name: GetStartedScreen.routeName,
      path: GetStartedScreen.routeName,
      builder: (_, __) => const GetStartedScreen(),
      )
 ]);

  // Determine the initial location based on SharedPreferences
  static String _initialLocation() {
    final sharedPreferences = getIt<SharedPreferences>();
    final isOnboardingCompleted = sharedPreferences.getBool('onboarding_completed') ?? false;
    return isOnboardingCompleted ? GetStartedScreen.routeName : OnboardingScreen.routeName;
  }
}