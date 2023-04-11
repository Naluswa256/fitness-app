import "package:flutter/material.dart";
import "package:fitness_app/src/styles.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: AppStyles.marginLeftRight),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(height:44),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Container(
                    width: 32.w,
                    height: 32.h,
                    padding: const EdgeInsets.all(11),
                    decoration: BoxDecoration(
                        color: AppStyles.progressBackgroundColors,
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(child: AppStyles.arrowLeft)),
                    Text(
                    'Notification',
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
              ])
            ])),
      ),
    );
  }
}
