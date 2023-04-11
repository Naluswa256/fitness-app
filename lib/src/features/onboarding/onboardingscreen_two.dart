import "package:fitness_app/src/common_widgets/roundedprogress_button.dart";
import "package:flutter/material.dart";
import "package:fitness_app/src/features/onboarding/onboarding_template.dart";


class OnBoardingScreenTwo extends StatelessWidget {
  const OnBoardingScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    const   double percentageCount = 0.50;
    const String imagePath = 'assets/images/frame_1.png';
    const String title = 'Get Burn';
    const String description =
        "Let’s keep burning, to achive yours goals, it hurts only temporarily, if you give up now you will be in pain forever";
    
    return const Scaffold(
        body: OnBoardingTemplate(imagePath: imagePath,title: title,percentageCount: percentageCount,description: description,));
  }
}
