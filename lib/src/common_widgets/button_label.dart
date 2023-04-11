import 'package:fitness_app/src/common_widgets/clippers/clippers.dart';
import "package:flutter/material.dart";
import 'package:fitness_app/src/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonLabel extends StatelessWidget {
  const ButtonLabel({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 80.w,
          height: 35.h,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.r),
              gradient: const LinearGradient(
                stops: [0.0, 1.0],
                colors: [
                  AppStyles.secondaryColorGradientThree,
                  AppStyles.secondaryColorGradientOne
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              boxShadow: [
                BoxShadow(
                    color: AppStyles.pinkShadowColor,
                    offset: const Offset(0, 10),
                    blurRadius: 22.r),
              ]),
          child: Center(
            child: Text(
              '3mins ago',
              style: AppStyles.poppinsMedium
                  .copyWith(fontSize: 10.sp, color: AppStyles.whiteColor),
            ),
          ),
        ),
        ClipPath(
          clipper: VShapeClipper(),
          child: Container(
            height: 10,
            width: 10,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                stops: [0.0, 1.0],
                colors: [
                  AppStyles.secondaryColorGradientThree,
                  AppStyles.secondaryColorGradientOne
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
