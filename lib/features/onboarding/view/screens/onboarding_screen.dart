import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:social/core/theme/app_palette.dart';
import 'package:social/features/onboarding/view/widgets/custom_clipper.dart';
import 'package:social/features/onboarding/viewmodel/onboarding_view_model.dart';
import 'package:social/init_dependencies.dart';

class OnboardingScreen extends StatelessWidget {
  static const routeName = '/onboarding-screen';
  OnboardingScreen({super.key});

  final sharedPreferences = getIt<SharedPreferences>();

  @override
  Widget build(BuildContext context) {
    final viewModel = OnboardingViewModel(sharedPreferences);
    final pageController = viewModel.pageController;
    final onboardingItems = viewModel.onboardingItems;

    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return PageView.builder(
            controller: pageController,
            itemCount: onboardingItems.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  ClipPath(
                    clipper: CustomClipperPath(),
                    child: Container(
                      height: constraints.maxHeight * 0.7,
                      width: double.infinity,
                      color: const Color(0xFF797979).withOpacity(0.12),
                      child: SafeArea(
                        bottom: false,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            index != onboardingItems.length - 1
                              ? Align(
                                  alignment: Alignment.topRight,
                                  child: TextButton(
                                    onPressed: () => viewModel.skipToLastPage(),
                                    child: const Text(
                                      'Skip',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: AppPalette.primary,
                                      ),
                                    ),
                                  ),
                                )
                              : const SizedBox(),
                            Flexible(
                              child: SizedBox(
                                height: constraints.maxHeight * 0.56,
                                child: Image.asset(
                                  onboardingItems[index].imagePath,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: constraints.maxWidth * 0.06).copyWith(top: 5),
                    child: SafeArea(
                      top: false,
                      child: Column(
                        children: [
                          onboardingItems[index].title,
                          SizedBox(height: constraints.maxHeight * 0.03),
                          onboardingItems[index].description,
                          SizedBox(height: constraints.maxHeight * 0.04),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              index != 0
                                ? OutlinedButton(
                                    onPressed: () => viewModel.skipToPreviousPage(),
                                    style: TextButton.styleFrom(
                                      side: const BorderSide(color: AppPalette.primary),
                                      shape: const CircleBorder(),
                                      minimumSize: const Size(50, 50),
                                      foregroundColor: AppPalette.primary,
                                    ),
                                    child: const Icon(Icons.arrow_back),
                                  )
                                : const SizedBox(width: 50),
                              SmoothPageIndicator(
                                controller: pageController,
                                count: onboardingItems.length,
                                effect: WormEffect(
                                  dotHeight: 12,
                                  dotWidth: 12,
                                  activeDotColor: AppPalette.primary,
                                  dotColor: AppPalette.primary.withOpacity(0.5),
                                  type: WormType.thinUnderground,
                                ),
                              ),
                              TextButton(
                                onPressed: () => index != onboardingItems.length - 1
                                  ? viewModel.skipToNextPage()
                                  : viewModel.goToAuth(context),
                                style: TextButton.styleFrom(
                                  foregroundColor: AppPalette.whiteColor,
                                  backgroundColor: AppPalette.primary,
                                  minimumSize: const Size(50, 50),
                                ),
                                child: const Icon(Icons.arrow_forward),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}