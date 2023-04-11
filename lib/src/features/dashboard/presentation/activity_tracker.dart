import "package:fitness_app/src/common_widgets/activity_trackercard.dart";
import "package:fitness_app/src/common_widgets/barchart.dart";
import "package:fitness_app/src/styles.dart";
import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:simple_gradient_text/simple_gradient_text.dart";

import "../../../common_widgets/app_bar.dart";
import "../../../common_widgets/custom_dropdown.dart";

class ActivityTracker extends StatelessWidget {
  const ActivityTracker({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: AppStyles.marginLeftRight),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(height: 44),
              const MyAppBar(screenName: 'Activity Tracker'),
              const SizedBox(height: 30),
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
                  child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Today Target',
                                    style: AppStyles.poppinsSemiBold.copyWith(
                                      fontSize: 14.sp,
                                    ),
                                  ),
                                  GestureDetector(
                                    child: Container(
                                      width: 24.w,
                                      height: 24.h,
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
                                          borderRadius:
                                              BorderRadius.circular(8.r)),
                                      child: const Icon(Icons.add,
                                          color: AppStyles.whiteColor,
                                          size: 14),
                                    ),
                                  )
                                ]),
                            const SizedBox(height: 15),
                            Row(
                              children: [
                                Expanded(
                                    child: Container(
                                  // width: double.infinity,
                                  height: 60.h,
                                  padding: const EdgeInsets.only(
                                      left: 11, top:10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12.r),
                                    color: AppStyles.whiteColor,
                                  ),
                                  child: Row(
                                    children: [
                                       SizedBox(
                                        height: 34,
                                        width: 25,
                                        child:Image.asset('assets/images/glass 1.png'),
                                      ),
                                      const SizedBox(width: 8),
                                      Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            GradientText(
                                              '8L',
                                              style: AppStyles.poppinsMedium
                                                  .copyWith(
                                                fontSize: 14.sp,
                                              ),
                                              colors: const [
                                                AppStyles
                                                    .primaryColorGradientTwo,
                                                AppStyles
                                                    .primaryColorGradientOne
                                              ],
                                            ),
                                            const SizedBox(height: 2),
                                            Text(
                                              'water intake',
                                              style: AppStyles.semiRegular
                                                  .copyWith(
                                                fontSize: 12.sp,
                                              ),
                                            ),
                                          ])
                                    ],
                                  ),
                                )),
                                const SizedBox(width: 15),
                                Expanded(
                                    child: Container(
                                  // width: double.infinity,
                                  height: 60.h,
                                  padding: const EdgeInsets.only(
                                      left: 11, top:10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12.r),
                                    color: AppStyles.whiteColor,
                                  ),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        height: 34,
                                        width: 25,
                                        child:Image.asset('assets/images/boots 1.png')
                                      ),
                                      const SizedBox(width: 8),
                                      Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            GradientText(
                                              '2400',
                                              style: AppStyles.poppinsMedium
                                                  .copyWith(
                                                fontSize: 14.sp,
                                              ),
                                              colors: const [
                                                AppStyles
                                                    .primaryColorGradientTwo,
                                                AppStyles
                                                    .primaryColorGradientOne
                                              ],
                                            ),
                                            const SizedBox(height: 1),
                                            Text(
                                              'Foot steps',
                                              style: AppStyles.semiRegular
                                                  .copyWith(
                                                fontSize: 12.sp,
                                              ),
                                            ),
                                          ])
                                    ],
                                  ),
                                )),
                              ],
                            )
                          ]))),
              const SizedBox(height: 30),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  'Acitivity Progress',
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
              const SizedBox(height: 15),
              Container(
                width: double.infinity,
                height: 200.h,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: AppStyles.whiteColor,
                  boxShadow: [
                                BoxShadow(
                                  offset: const Offset(0, 10),
                                  color:
                                      AppStyles.boxShadowActivity.withOpacity(0.07),
                                  blurRadius: 40.r,
                                )
                              ]
                ),
                child:const Padding(
                  padding: EdgeInsets.only(top:20, bottom:20),
                  child: BarChartSample1(),
                )
              ),
              const SizedBox(height: 30),
               Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                'Latest Activity',
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
             const SizedBox(height: 30),
             const ActivitytrackerCard(activityTitle: 'Drinking 300ml Water',activityTime:3,imagePath:'assets/images/drink.png'),
             const SizedBox(height:15),
              const ActivitytrackerCard(activityTitle: 'Eat snack (Fitbar)',activityTime:3,imagePath:'assets/images/snack.png'),
              
            ])),
      ),
    );
  }
}
