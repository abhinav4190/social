import 'package:flutter/material.dart';

/// A model class for onboarding items.
class OnboardingItemsModel {
  final String imagePath;
  final RichText title;
  final Text description;

  OnboardingItemsModel({
    required this.imagePath,
    required this.title,
    required this.description,
  });
}
