import "package:fitness_app/src/features/onboarding/onboarding_template.dart";
import "package:flutter/material.dart";

class OnBoardingScreenFour extends StatelessWidget {
  const OnBoardingScreenFour({super.key});

  @override
  Widget build(BuildContext context) {
    const   double percentageCount = 1.0;
    const String imagePath = 'assets/images/frame_3.png';
    const String title = 'Improve Quality \nSleep';
    const String description =
        "Improve the quality of your sleep with us, good quality sleep can bring a good mood in the morning";
    return const Scaffold(
        body:OnBoardingTemplate(imagePath: imagePath,title: title,percentageCount: percentageCount,description: description,));
  }
}
