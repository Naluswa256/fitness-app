import "package:flutter/material.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';
import "package:fitness_app/src/styles.dart";
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter_svg/flutter_svg.dart';
class RoundedButton extends StatelessWidget {
  const RoundedButton({super.key,required this.percentageCount});
  final double percentageCount;
    
  @override
  Widget build(BuildContext context) {
    
final Widget svg = SvgPicture.string(
'''<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M8.5 5L15.5 12L8.5 19" stroke="#130F26" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
</svg>
''',
 colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
);
    return CircularPercentIndicator(
      radius: 30.r,
      lineWidth: 2.w,
      percent: percentageCount,
      backgroundColor: AppStyles.progressBackgroundColors,
      backgroundWidth: 0.5.w,
      linearGradient: const LinearGradient(
        stops: [0.0, 1.0],
        colors: [
          AppStyles.primaryColorGradientTwo,
          AppStyles.primaryColorGradientOne
        ],
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
      ),
      center: Padding(
        padding: const EdgeInsets.all(5),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.r))),
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
                borderRadius: BorderRadius.circular(25.r)),
            child: Container(
              width: 50.w,
              height: 50.h,
              alignment: Alignment.center,
              child: svg
            ),
          ),
        ),
      ),
    );
  }
}
