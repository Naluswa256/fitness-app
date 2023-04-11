import "package:flutter/material.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';
import "package:fitness_app/src/styles.dart";

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
              //  mainAxisAlignment:MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
            SizedBox(
              height: 371.h,
            ),
            Center(
              child: SizedBox(
                  height: 35.h,
                  width: 162.w,
                  child: Image.asset('assets/images/Group 10275.png')),
            ),
            SizedBox(
              height: 15.h,
            ),
            Text('Everybody can Train',
                style: AppStyles.poppinsRegular.copyWith(
                  fontSize: 18.sp,
                )),
            SizedBox(
              height: 231.h,
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: AppStyles.marginLeftRight),child:
             ElevatedButton(
          onPressed: () {
            
          },
          style: ElevatedButton.styleFrom(
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(99))),
          child: Ink(
            decoration: BoxDecoration(
                gradient:
                    const LinearGradient( stops:[0.0, 1.0], colors: [ AppStyles.primaryColorGradientTwo,
                  AppStyles.primaryColorGradientOne],begin:Alignment.centerLeft , end:Alignment.centerRight, ),
                borderRadius: BorderRadius.circular(99)),
            child: Container(
              
              width: MediaQuery.of(context).size.width,
              height: 60,
              alignment: Alignment.center,
              child:  Text(
                'Get Started',
                style:AppStyles.poppinsBold
                   .copyWith(fontSize: 16.sp, color: AppStyles.whiteColor)
               ,
              ),
            ),
          ),
        ), ),  
           
      
      
          ])),
    );
  }
}

// GestureDetector(
//               onTap: () {
                
//               },
//               child: Container(
//                   width: MediaQuery.of(context).size.width,
//                   height: 60.h,
//                   alignment: Alignment.center,
//                   margin: EdgeInsets.symmetric(
//                       horizontal: AppStyles.marginLeftRight, vertical: 10.h),
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(99),
//                       gradient: const LinearGradient(
//                           colors: [
//                             AppStyles.primaryColorGradientTwo,
//                             AppStyles.primaryColorGradientOne,
//                           ],
//                           begin: Alignment.centerLeft,
//                           end: Alignment.centerRight,
//                           stops: [0.0, 1.0])),
//                   child: Text(
//                     'Get Started',
//                     style: AppStyles.poppinsBold
//                         .copyWith(fontSize: 16.sp, color: AppStyles.whiteColor),
//                   )),
//             )