import "package:flutter/material.dart";
import "package:fitness_app/src/styles.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:percent_indicator/percent_indicator.dart";
import 'package:outline_gradient_button/outline_gradient_button.dart';

class WorkOutCard extends StatefulWidget {
  final String workoutTitle;
  final int workoutCaloriesBurn;
  final int completionTime;
  final double progressBarPercentage;
  final String imagePath;
  const WorkOutCard(
      {super.key,
      required this.workoutTitle,
      required this.workoutCaloriesBurn,
      required this.completionTime,
      required this.progressBarPercentage,
      required this.imagePath});

  @override
  State<WorkOutCard> createState() => _WorkOutCardState();
}

class _WorkOutCardState extends State<WorkOutCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            width: double.infinity,
            padding: const EdgeInsets.only(
              left: 15,
            ),
            height: 100,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(16)),
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
                        left: 25,
                        top: 30,
                        child: Image.asset(widget.imagePath, height: 55))
                  ],
                ),
              ),
              const SizedBox(width: 10),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 10),
                child: Column(
                    //mainAxisSize:MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.workoutTitle,
                        style: AppStyles.poppinsMedium.copyWith(
                            fontSize: 12.sp, color: AppStyles.blackColor),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        '${widget.workoutCaloriesBurn} Calories Burn | ${widget.completionTime}minutes',
                        style: AppStyles.poppinsMedium.copyWith(
                            fontSize: 10.sp, color: AppStyles.textColor),
                      ),
                      const SizedBox(height: 9),
                      Stack(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.45,
                            height: 15,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.horizontal(left: Radius.circular(30), right:Radius.circular(30)),
                              color: AppStyles.progressBackgroundColors,
                            ),
                          ),
                          LinearPercentIndicator(
                            padding: EdgeInsets.zero,
                            lineHeight: 15,
                            width: MediaQuery.of(context).size.width * 0.45,
                            animationDuration: 2000,
                            percent: widget.progressBarPercentage,
                            backgroundColor: Colors.transparent,
                            linearGradient: const LinearGradient(
                              stops: [0.0, 1.0],
                              colors: [
                                AppStyles.primaryColorGradientOne,
                                AppStyles.secondaryColorGradientOne,
                              ],
                            ),
                          ),
                        ],
                      )
                    ]),
              ),
            ])),
        Positioned(
          right: 15,
          top: 28,
          child: OutlineGradientButton(
            gradient: const LinearGradient(colors: [
              AppStyles.secondaryColorGradientOne,
              AppStyles.secondaryColorGradientThree
            ], stops: [
              0.0,
              1.0
            ]
                // begin: Alignment(-1, -1),
                // end: Alignment(2, 2),
                ),
            strokeWidth: 1,
            padding: const EdgeInsets.all(5),
            radius: const Radius.circular(20),
            child: SizedBox(
              width: 24,
              height: 24,
              child: AppStyles.arrowRightGradientSvg,
            ),
          ),
        ),
      ],
    );
  }
}
