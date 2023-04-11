import "package:fitness_app/src/common_widgets/roundedprogress_button.dart";
import "package:flutter/material.dart";

import "package:fitness_app/src/features/onboarding/onboarding_template.dart";
class OnBoardingScreenThree extends StatelessWidget {
  const OnBoardingScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    const   double percentageCount = 0.75;
    const String imagePath = 'assets/images/frame_2.png';
    const String title = 'Eat Well';
    const String description =
        "Let's start a healthy lifestyle with us, we can determine your diet every day. healthy eating is fun";
    
    return const Scaffold(
        body: OnBoardingTemplate(imagePath: imagePath,title: title,percentageCount: percentageCount,description: description,));
  }
}
