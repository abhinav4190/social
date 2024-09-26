import 'package:flutter/material.dart';
import 'package:social/core/constants/image_paths.dart';
import 'package:social/core/theme/app_palette.dart';
import 'package:social/features/onboarding/models/onboarding_items_model.dart';

/// A class that holds the list of onboarding items.
class OnboardingItems {
  /// The list of onboarding item.
  static List<OnboardingItemsModel> items = [
    OnboardingItemsModel(
      imagePath: ImagePaths.onboardingImage1,
      title: RichText(
        textAlign: TextAlign.center,
        text: const TextSpan(
          text: 'See What ',
          style: TextStyle(
            fontSize: 26,
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
          children: [
            TextSpan(
              text: 'Your Connections ',
              style: TextStyle(color: AppPalette.primary),
            ),
            TextSpan(
              text: 'Are Sharing',
            ),
          ],
        ),
      ),
      description: const Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt.',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 15,
          color: AppPalette.greyColor,
        ),
      ),
    ),
    OnboardingItemsModel(
      imagePath: ImagePaths.onboardingImage2,
      title: RichText(
        textAlign: TextAlign.center,
        text: const TextSpan(
          text: 'Discover the ',
          style: TextStyle(
            fontSize: 26,
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
          children: [
            TextSpan(
              text: 'Best Short Video ',
              style: TextStyle(color: AppPalette.primary),
            ),
            TextSpan(
              text: 'from the Crowd',
            ),
          ],
        ),
      ),
      description: const Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt.',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 15,
          color: AppPalette.greyColor,
        ),
      ),
    ),
    OnboardingItemsModel(
      imagePath: ImagePaths.onboardingImage3,
      title: RichText(
        textAlign: TextAlign.center,
        text: const TextSpan(
          text: 'Explore Profiles ',
          style: TextStyle(
            fontSize: 26,
            color: AppPalette.primary,
            fontWeight: FontWeight.w700,
          ),
          children: [
            TextSpan(
              text: 'to Make Connections',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
      description: const Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt.',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 15,
          color: AppPalette.greyColor,
        ),
      ),
    ),
  ];
}