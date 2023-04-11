import "package:fitness_app/src/common_widgets/roundedprogress_button.dart";
import "package:flutter/material.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';
import "package:fitness_app/src/styles.dart";

class SuccessFulRegistration extends StatelessWidget {

  const SuccessFulRegistration(
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/success_image.png', width:MediaQuery.of(context).size.width.w, 
          height:MediaQuery.of(context).size.height*0.35,),
          SizedBox(height: 44.h),
          Padding(
            padding: EdgeInsets.only(left: AppStyles.marginLeftRight),
            child: Text(
              'Welcome, Stefani ',
              style: AppStyles.poppinsBold.copyWith(
                fontSize: 20.sp,
              ),
            ),
          ),
          SizedBox(height: 15.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppStyles.marginLeftRight),
            child: Text(
              'You are all set now, let’s reach your\n          goals together with us',
              style: AppStyles.semiRegular.copyWith(
                fontSize: 12.sp,
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.30),
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
                decoration: BoxDecoration(
                  boxShadow:[
    
                    BoxShadow(
    
                      color:AppStyles.buttonShadowColor,
                      offset:const Offset(0, 10),
                      blurRadius:22.r,
                      
                    )
                  ]
                ),
                child:  Text(
                  'Go To Home',
                  style:AppStyles.poppinsBold
                     .copyWith(fontSize: 16.sp, color: AppStyles.whiteColor)
                 ,
                ),
              ),
            ),
          ), ),  
        ],
      )),
    );
  }
}
