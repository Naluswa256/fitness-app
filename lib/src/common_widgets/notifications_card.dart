import "package:flutter/material.dart";
import "package:fitness_app/src/styles.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
// import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:percent_indicator/percent_indicator.dart";
// import 'package:outline_gradient_button/outline_gradient_button.dart';

class NotificationCard extends StatelessWidget {
  final String imagePath;
  final String notificationTime;
  final String notificationTitle;
  const NotificationCard(
      {super.key, required this.imagePath, required this.notificationTitle, required this.notificationTime});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Stack(
        children: [
          CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 40,
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: const LinearGradient(
                    colors: [
                      AppStyles.primaryColorGradientOne,
                      AppStyles.primaryColorGradientTwo
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    stops: [0.0, 1.0],
                    tileMode: TileMode.clamp,
                  ),
                  color: AppStyles.whiteColor.withOpacity(0.3)),
            ),
          ),
          Positioned(
              left: 30, top:20, child: Image.asset(imagePath, height:25))
        ],
      ),
      title: Text(
        notificationTitle,
        style: AppStyles.poppinsMedium
            .copyWith(fontSize: 12.sp, color: AppStyles.blackColor),
      ),
      subtitle: Text(
        'About $notificationTime ago',
        style: AppStyles.semiRegular
            .copyWith(fontSize: 10.sp, color: AppStyles.greyColor),
      ),

      trailing: AppStyles.menu,
    );
  }
}
