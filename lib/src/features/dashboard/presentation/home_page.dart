import 'package:fitness_app/src/common_widgets/button_label.dart';
import 'package:fitness_app/src/common_widgets/custom_dropdown.dart';
import 'package:fitness_app/src/common_widgets/list_waterintake_widget.dart';
import 'package:fitness_app/src/common_widgets/water_progressbar.dart';
import 'package:fitness_app/src/common_widgets/workout_card.dart';
import 'package:fitness_app/src/styles.dart';
import "package:flutter/material.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:fitness_app/src/common_widgets/clippers/clippers.dart';

import '../../../constants/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // final color = Colors.blue;

  final List<String> items = [
    '6am-8am',
    '9am-11am',
    '11am-2pm',
    '2pm-4pm',
    '4pm-now'
  ];
  final List<String> mlTaken = ['600', '500', '1000', '700', '900'];
List<Map<String, dynamic>> workoutUpdates = [
    {
      'workoutTitle': 'Fullbody WorkOut',
      'workoutCaloriesBurn': 120,
      'completionTime': 20,
      'progressBarPercentage':0.25,
       'imagePath':'assets/images/workout_frameone.png'
    },
    {
      'workoutTitle': 'Lowerbody WorkOut',
      'workoutCaloriesBurn': 200,
      'completionTime': 30,
      'progressBarPercentage':0.40,
      'imagePath':'assets/images/lowebody-workout 1.png',

    },
    {
      'workoutTitle': 'Ab WorkOut',
      'workoutCaloriesBurn': 180,
      'completionTime': 20,
      'progressBarPercentage':0.35,
      'imagePath':'assets/images/workout_frame3.png'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: AppStyles.marginLeftRight),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40.h,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome back, ',
                    style: AppStyles.semiRegular.copyWith(
                        fontSize: 12.sp, color: AppStyles.greyVariant),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    'Stefani Wong',
                    style: AppStyles.poppinsBold.copyWith(
                      fontSize: 20.sp,
                    ),
                  ),
                ],
              ),
              Container(
                  width: 40.w,
                  height: 40.h,
                  padding: const EdgeInsets.all(11),
                  decoration: BoxDecoration(
                      color: AppStyles.progressBackgroundColors,
                      borderRadius: BorderRadius.circular(8)),
                  child: Center(child: AppStyles.notificationSvg))
            ]),
            SizedBox(
              height: 30.h,
            ),
            Stack(children: [
              Container(
                  width: double.infinity,
                  height: 180.h,
                  padding: const EdgeInsets.only(
                    top: 20,
                    left: 20,
                  ),
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        stops: [0.0, 1.0],
                        colors: [
                          AppStyles.primaryColorGradientTwo,
                          AppStyles.primaryColorGradientOne
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.circular(22.r)),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'BMI (Body Mass Index)',
                          style: AppStyles.poppinsSemiBold.copyWith(
                              fontSize: 14.sp, color: AppStyles.whiteColor),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          'You have a normal weight',
                          style: AppStyles.semiRegular.copyWith(
                              fontSize: 14.sp, color: AppStyles.whiteColor),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.zero,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50))),
                          child: Ink(
                            decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  stops: [0.0, 1.0],
                                  colors: [
                                    AppStyles.secondaryColorGradientThree,
                                    AppStyles.secondaryColorGradientOne
                                  ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                                borderRadius: BorderRadius.circular(50)),
                            child: Container(
                              width: 95.w,
                              height: 40.h,
                              alignment: Alignment.center,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 21, vertical: 10),
                                child: Text(
                                  'View More',
                                  style: AppStyles.poppinsBold.copyWith(
                                      fontSize: 10.sp,
                                      color: AppStyles.whiteColor),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ])),
              Positioned(
                top: 12,
                left: -19,
                right: -10,
                bottom: -18,
                child: Container(
                  width: 344.w,
                  height: 152.h,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/Dots.png'),
                          fit: BoxFit.cover)),
                ),
              )
            ]),
            SizedBox(
              height: 30.h,
            ),
            Container(
              width: double.infinity,
              height: 57.h,
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    stops: [0.0, 1.0],
                    colors: [
                      AppStyles.primaryColorGradientTwo,
                      AppStyles.primaryColorGradientOne
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(16.r),
                  color: AppStyles.whiteColor.withOpacity(0.2)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Today Target',
                      style: AppStyles.poppinsMedium.copyWith(
                        fontSize: 14.sp,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50))),
                      child: Ink(
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              stops: [0.0, 1.0],
                              colors: [
                                AppStyles.primaryColorGradientTwo,
                                AppStyles.primaryColorGradientOne
                              ],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                            borderRadius: BorderRadius.circular(50)),
                        child: Container(
                          width: 68.w,
                          height: 35.h,
                          alignment: Alignment.center,
                          child: Text(
                            'Check',
                            style: AppStyles.poppinsBold.copyWith(
                                fontSize: 10.sp, color: AppStyles.whiteColor),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30.h),
            Text(
              'Activity Status',
              style: AppStyles.poppinsSemiBold.copyWith(
                fontSize: 16.sp,
              ),
            ),
            SizedBox(height: 15.h),
            Container(
              width: double.infinity,
              height: 150.h,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  stops: [0.0, 1.0],
                  colors: [
                    AppStyles.primaryColorGradientTwo,
                    AppStyles.primaryColorGradientOne
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.circular(20.r),
                color: AppStyles.whiteColor.withOpacity(0.2),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20),
                    child: Row(
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Heart Rate',
                                style: AppStyles.poppinsMedium.copyWith(
                                  fontSize: 12.sp,
                                ),
                              ),
                              GradientText(
                                '78 BPM',
                                style: AppStyles.poppinsSemiBold.copyWith(
                                  fontSize: 14.sp,
                                ),
                                colors: const [
                                  AppStyles.primaryColorGradientTwo,
                                  AppStyles.primaryColorGradientOne
                                ],
                              ),
                            ]),
                        const Padding(
                          padding: EdgeInsets.only(left: 45),
                          child: ButtonLabel(),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 200,
                        height: 62.h,
                        child: Sparkline(
                          data: dataOne,
                          lineWidth: 1.5,
                          lineGradient: const LinearGradient(
                            stops: [0.0, 1.0],
                            colors: [
                              AppStyles.primaryColorGradientTwo,
                              AppStyles.primaryColorGradientOne
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          pointsMode: PointsMode.last,
                          pointSize: 8.0,
                          pointColor: Colors.white,
                          fillMode: FillMode.below,
                          fillColor: AppStyles.whiteColor.withOpacity(0.5),
                          fillGradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            stops: [0.0, 1.0],
                            colors: [Color(0XFF93A7FE), Color(0X00FFFFFF)],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 200,
                        height: 62.h,
                        child: Sparkline(
                          data: dataTwo,
                          lineWidth: 1.5,
                          lineColor: AppStyles.whiteColor.withOpacity(0.2),
                          lineGradient: const LinearGradient(
                            stops: [0.0, 1.0],
                            colors: [
                              AppStyles.primaryColorGradientTwo,
                              AppStyles.primaryColorGradientOne
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.h),
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Expanded(
                child: Container(

                    // width: 150,
                    height: 325,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppStyles.whiteColor,
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(0, 10),
                            color: AppStyles.boxShadowOne.withOpacity(0.05),
                            blurRadius: 40.r,
                          )
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 20),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const WaterIntakeTracker(
                              maxWaterIntake: 30,
                            ),
                            const SizedBox(width: 15),
                            Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Water intake',
                                    style: AppStyles.poppinsMedium.copyWith(
                                      fontSize: 12.sp,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  GradientText(
                                    '4 litres',
                                    style: AppStyles.poppinsSemiBold.copyWith(
                                      fontSize: 14.sp,
                                    ),
                                    colors: const [
                                      AppStyles.primaryColorGradientTwo,
                                      AppStyles.primaryColorGradientOne
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    'Realtime updates',
                                    style: AppStyles.semiRegular.copyWith(
                                      fontSize: 10.sp,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  Expanded(
                                    child: SingleChildScrollView(
                                      physics:
                                          const AlwaysScrollableScrollPhysics(),
                                      child: ListWidget(
                                          items: items, mlTaken: mlTaken),
                                    ),
                                  )
                                ])
                          ]),
                    )),
              ),
              const SizedBox(width: 15),
              Expanded(
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          width: 150,
                          height: 150,
                          //  padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: AppStyles.whiteColor,
                              boxShadow: [
                                BoxShadow(
                                  offset: const Offset(0, 10),
                                  color:
                                      AppStyles.boxShadowTwo.withOpacity(0.07),
                                  blurRadius: 40.r,
                                )
                              ]),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 5),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Text(
                                    'Sleep',
                                    style: AppStyles.poppinsMedium.copyWith(
                                      fontSize: 12.sp,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: GradientText(
                                    '8h 20m',
                                    style: AppStyles.poppinsSemiBold.copyWith(
                                      fontSize: 14.sp,
                                    ),
                                    colors: const [
                                      AppStyles.primaryColorGradientTwo,
                                      AppStyles.primaryColorGradientOne
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: Image.asset(
                                      'assets/images/Sleep-Graph.png',
                                      width:
                                          MediaQuery.of(context).size.width.w,
                                      height: 78.h,
                                    )),
                              ])),
                      const SizedBox(height: 15),
                      Container(
                          width: 150,
                          height: 160,
                          // padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: AppStyles.whiteColor,
                              boxShadow: [
                                BoxShadow(
                                  offset: const Offset(0, 10),
                                  color:
                                      AppStyles.boxShadowTwo.withOpacity(0.07),
                                  blurRadius: 40.r,
                                )
                              ]),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 20, top: 2),
                                  child: Text(
                                    'Calories',
                                    style: AppStyles.poppinsMedium.copyWith(
                                      fontSize: 12.sp,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: GradientText(
                                    '760 kCal',
                                    style: AppStyles.poppinsSemiBold.copyWith(
                                      fontSize: 14.sp,
                                    ),
                                    colors: const [
                                      AppStyles.primaryColorGradientTwo,
                                      AppStyles.primaryColorGradientOne
                                    ],
                                  ),
                                ),
                                //const SizedBox(height: 5),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 41),
                                  child: CircularPercentIndicator(
                                    radius: 50,
                                    lineWidth: 16.0,
                                    reverse: true,
                                    percent: 0.50,
                                    circularStrokeCap: CircularStrokeCap.round,
                                    backgroundColor:
                                        AppStyles.progressBackgroundColors,
                                    linearGradient: const LinearGradient(
                                      stops: [0.0, 1.0],
                                      colors: [
                                        AppStyles.secondaryColorGradientOne,
                                        AppStyles.secondaryGradient
                                      ],
                                    ),
                                    center: Container(
                                      width: 60,
                                      height: 60,
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 12, horizontal: 6),
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        gradient: LinearGradient(
                                          stops: [0.0, 1.0],
                                          colors: [
                                            AppStyles.primaryColorGradientTwo,
                                            AppStyles.primaryColorGradientOne
                                          ],
                                          begin: Alignment.centerLeft,
                                          end: Alignment.centerRight,
                                        ),
                                      ),
                                      child: Text(
                                        '230kCal left',
                                        style: AppStyles.semiRegular.copyWith(
                                            fontSize: 9.sp,
                                            color: AppStyles.whiteColor),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    // progressColor: Colors.red,
                                  ),
                                )
                              ])),
                    ]),
              )
            ]),
            const SizedBox(height: 30),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                'Workout Progress',
                style: AppStyles.poppinsSemiBold.copyWith(
                  fontSize: 16.sp,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  right: 15,
                ),
                child: CustomDropDownButton(),
              )
            ]),
            const SizedBox(height: 172),
            const SizedBox(height: 30),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                'Latest Workout',
                style: AppStyles.poppinsSemiBold.copyWith(
                  fontSize: 16.sp,
                ),
              ),
              Text(
                'See more',
                style: AppStyles.poppinsMedium
                    .copyWith(fontSize: 12.sp, color: AppStyles.greyVariant),
              ),
            ]),
            const SizedBox(height: 18),
           
             

            Column(
    children: workoutUpdates.map((card) {
      return Padding(
      padding:const EdgeInsets.only(bottom:15),
      child:WorkOutCard(
                  workoutTitle: card['workoutTitle'] as String,
                  workoutCaloriesBurn: card['workoutCaloriesBurn'] as int,
                  completionTime:card['completionTime'] as int,
                  progressBarPercentage: card['progressBarPercentage'] as double,
                  imagePath:card['imagePath'] as String
                 )
      );
    }).toList(),
  )


             
          ],
        ),
      ),
    ));
  }
}
