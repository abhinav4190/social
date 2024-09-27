import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:social/features/auth/view/auth_screen.dart';
import 'package:social/features/onboarding/models/onboarding_items.dart';
import 'package:social/features/onboarding/models/onboarding_items_model.dart';

class OnboardingViewModel {
  final PageController pageController = PageController();
  final List<OnboardingItemsModel> onboardingItems = OnboardingItems.items;
  final SharedPreferences _sharedPreferences;
  OnboardingViewModel(this._sharedPreferences);

  /// Navigates to the last page of the onboarding.
  void skipToLastPage() {
    pageController.jumpToPage(onboardingItems.length - 1);
  }

  /// Navigates to the next page in the onboarding.
  void skipToNextPage() {
    pageController.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
  }

  /// Marks the onboarding as true -- completed in SharedPreferences and navigate to Auth screen.
  void goToAuth(BuildContext context) async {
    context.goNamed(AuthScreen.routeName);
    await _sharedPreferences.setBool('onboarding_completed', true);
  }

  /// Navigates to the previous page in the onboarding.
  void skipToPreviousPage() {
    pageController.previousPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
  }
}
