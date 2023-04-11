import "package:flutter/material.dart";
import "package:fitness_app/src/styles.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";


class ActivitytrackerCard extends StatefulWidget {
  final String activityTitle;
  final int activityTime;
  final String imagePath;
  const ActivitytrackerCard(
      {super.key,
      required this.activityTitle,
      required this.activityTime,
      required this.imagePath});

  @override
  State<ActivitytrackerCard> createState() => _ActivitytrackerCardState();
}

class _ActivitytrackerCardState extends State<ActivitytrackerCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            width: double.infinity,
            padding: const EdgeInsets.only(
              left: 15,
            ),
            height: 80,
            decoration:  BoxDecoration(

              boxShadow: [
                                BoxShadow(
                                  offset: const Offset(0, 10),
                                  color:
                                      AppStyles.boxShadowActivity.withOpacity(0.07),
                                  blurRadius: 40.r,
                                )
                              ],
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                color: AppStyles.whiteColor),
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Stack(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 50,
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
                        left: 28,
                       top: 15,
                        child: Image.asset(widget.imagePath,  ))
                  ],
                ),
              ),
              const SizedBox(width: 8),
              Padding(
                padding: const EdgeInsets.symmetric(vertical:10),
                child: Column(
                    //mainAxisSize:MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.activityTitle,
                        style: AppStyles.poppinsMedium.copyWith(
                            fontSize: 12.sp, color: AppStyles.blackColor),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        'About ${widget.activityTime} minutes ago',
                        style: AppStyles.semiRegular.copyWith(
                            fontSize: 10.sp, color: AppStyles.textColor),
                      ),
                      
                    ]),
              ),
            ])),
        Positioned(
          right: 15,
          top: 28,
          child: AppStyles.menu
        ),
      ],
    );
  }
}
