import "package:fitness_app/src/common_widgets/roundedprogress_button.dart";
import "package:flutter/material.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';
import "package:fitness_app/src/styles.dart";

class OnBoardingTemplate extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final double percentageCount;
  const OnBoardingTemplate(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.description, required this.percentageCount});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 446.h,
          decoration:  BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover)),
        ),
        SizedBox(height: 64.h),
        Padding(
          padding: EdgeInsets.only(left: AppStyles.marginLeftRight),
          child: Text(
            title,
            style: AppStyles.poppinsBold.copyWith(
              fontSize: 24.sp,
            ),
          ),
        ),
        SizedBox(height: 15.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppStyles.marginLeftRight),
          child: Text(
            description,
            style: AppStyles.poppinsRegular.copyWith(
              fontSize: 14.sp,
            ),
          ),
        ),
        SizedBox(height: 30.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
                padding: EdgeInsets.only(
                  right: AppStyles.marginLeftRight,
                ),
                child:  RoundedButton(
                  percentageCount: percentageCount,
                ))
          ],
        )
      ],
    ));
  }
}
