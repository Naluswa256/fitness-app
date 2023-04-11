
import "package:fitness_app/src/features/onboarding/onboarding_template.dart";
import "package:flutter/material.dart";


class OnBoardingScreenOne extends StatelessWidget {
  const OnBoardingScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    const double percentageCount = 0.25;
    const String imagePath = 'assets/images/Group.png';
    const String title = 'Track Your Goal';
    const String description =
        "Don't worry if you have trouble determining your goals, We can help you determine your goals and track your goals";
    //
    return const Scaffold(body: OnBoardingTemplate(imagePath: imagePath,title: title,percentageCount: percentageCount,description: description,));
  }
}
