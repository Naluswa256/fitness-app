import 'package:fitness_app/src/styles.dart';
import "package:flutter/material.dart";
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class ListWidget extends StatelessWidget {
  final List<String> items;
  final List<String> mlTaken;

  const ListWidget({super.key, required this.items, required this.mlTaken});

  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisSize: MainAxisSize.min,
      children: [
        for (int i = 0; i < items.length; i++)
         
            Row(
               crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                 
                    Container(
                      width: 6,
                      height: 6,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppStyles.whiteColor.withOpacity(0.5),
                        gradient: const LinearGradient(
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
                   if(i<items.length-1)
                    Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 5),
                      child: DottedLine(
                        direction: Axis.vertical,
                        lineLength: 30,
                        lineThickness: 0.5,
                        dashGapLength: 3,
                        dashColor: AppStyles.whiteColor.withOpacity(0.5),
                        dashLength: 3,
                        dashGradient: const [
                          AppStyles.secondaryColorGradientThree,
                          AppStyles.secondaryColorGradientOne
                        ],
                      ),
                    ),
                   
                    
                  ],
                ),
                const SizedBox(width: 8),
                Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                         
                        Text(
                          items[i],
                          style: AppStyles.semiRegular.copyWith(
                              fontSize: 8.sp, color: AppStyles.greyVariant),
                        ),
                        const SizedBox(height: 5),
                        
                        GradientText(
                          '${mlTaken[i]}ml',
                          style:
                              AppStyles.poppinsSemiBold.copyWith(fontSize: 8.sp),
                          colors: const [
                            AppStyles.secondaryColorGradientThree,
                            AppStyles.secondaryColorGradientOne
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
      ],
    );
  }
}
