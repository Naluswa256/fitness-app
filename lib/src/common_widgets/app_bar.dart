import "package:flutter/material.dart";
import "package:fitness_app/src/styles.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";

class MyAppBar extends StatelessWidget {
  final String screenName;
  const MyAppBar({super.key, required this.screenName});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Container(
          width: 32.w,
          height: 32.h,
          padding: const EdgeInsets.all(11),
          decoration: BoxDecoration(
              color: AppStyles.progressBackgroundColors,
              borderRadius: BorderRadius.circular(8)),
          child: Center(child: AppStyles.arrowLeft)),
      Text(
        screenName,
        style: AppStyles.poppinsBold.copyWith(
          fontSize: 16.sp,
        ),
      ),
      Container(
          width: 32.w,
          height: 32.h,
          padding: const EdgeInsets.all(11),
          decoration: BoxDecoration(
              color: AppStyles.progressBackgroundColors,
              borderRadius: BorderRadius.circular(8)),
          child: Center(child: AppStyles.dotMenu)),
    ]);
  }
}
