import "package:flutter/material.dart";
import "package:fitness_app/src/styles.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileRegisterPage extends StatefulWidget {
  const ProfileRegisterPage({super.key});

  @override
  State<ProfileRegisterPage> createState() => _ProfileRegisterPageState();
}

class _ProfileRegisterPageState extends State<ProfileRegisterPage> {
  bool? _isChecked = false;
  bool _isHidden = false;

  final TextEditingController _dateOfBirthController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _dateOfBirthController.dispose();
    _weightController.dispose();
    _heightController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
              /*
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height *0.35,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/Vector-Section.png'),
                  fit: BoxFit.cover)),
        ),
        */
        Image.asset('assets/images/Vector-Section.png', width:MediaQuery.of(context).size.width.w, 
        height:MediaQuery.of(context).size.height*0.35,),
        SizedBox(height: 30.h),
        Text(
          'Lets Complete your profile',
          style: AppStyles.poppinsBold.copyWith(
            fontSize: 20.sp,
          ),
        ),
        SizedBox(height: 5.h),
        Text(
          'It will help us to know more about you!',
          style: AppStyles.semiRegular.copyWith(
            fontSize: 14.sp,
          ),
        ),
        SizedBox(height: 30.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppStyles.marginLeftRight),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Container(
              width:double.infinity,
              height:50.h,
              margin:const EdgeInsets.only(bottom:15),
             // padding:const EdgeInsets.symmetric(vertical:15),
              decoration:BoxDecoration(
                color:AppStyles.textInputFieldBackground,
                borderRadius:BorderRadius.circular(14)
              ),
             child:DropdownButtonFormField(
              icon:Padding(
                    padding: const EdgeInsets.only(
                      
                      right: 15,
                    ),
                    child: AppStyles.dropDownSvg,
                  ),
         decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
         prefixIcon: Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                      right: 10,
                    ),
                    child: AppStyles.twoUsersSvg,
                  ),
         prefixIconConstraints: BoxConstraints(
                    minWidth: 12.w,
                    minHeight: 15.h,
                  ),
         ),
         
         hint: Text('Choose Gender',style:AppStyles.semiRegular
                      .copyWith(color: AppStyles.greyVariant, fontSize: 12.sp),),
         items: <String>['Male', 'Female'].map((String value) {
         return DropdownMenuItem(
         value: value,
         child: Text(value, style:AppStyles.semiRegular
                      .copyWith(color: AppStyles.greyVariant, fontSize: 12.sp),),
       );
      }).toList(),
     onChanged: (_) {},
),
            ),
            TextField(
                controller: _dateOfBirthController,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                      right: 10,
                    ),
                    child: AppStyles.calendarSvg,
                  ),
                  prefixIconConstraints: BoxConstraints(
                    minWidth: 12.w,
                    minHeight: 15.h,
                  ),
                  // contentPadding: EdgeInsets.symmetric(vertical: 15.h, horizontal:20.w),
                  hintText: 'Date of Birth',
                  hintStyle: AppStyles.semiRegular
                      .copyWith(color: AppStyles.greyVariant, fontSize: 12.sp),
                  filled: true,
                  fillColor: AppStyles.textInputFieldBackground,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(14.r)),
                )),
            SizedBox(height: 15.h),
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width:252.w,
                  child: TextField(
                      controller: _weightController,
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(
                            left: 15,
                            right: 10,
                          ),
                          child: AppStyles.weightSvg,
                        ),
                        prefixIconConstraints: BoxConstraints(
                          minWidth: 12.w,
                          minHeight: 15.h,
                        ),
                        //contentPadding: EdgeInsets.symmetric(vertical: 15.h, horizontal:15.w),
                        hintText: 'Your weight',
                        hintStyle: AppStyles.semiRegular
                            .copyWith(color: AppStyles.greyVariant, fontSize: 12.sp),
                        filled: true,
                        fillColor: AppStyles.textInputFieldBackground,
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(14.r)),
                      )),
                ),
                   // SizedBox(width:15.w),
                    Container(
                      width:48.w,
                      height:48.h,
                      decoration:BoxDecoration(
                       gradient: const LinearGradient(
                    stops: [0.0, 1.0],
                    colors: [
                   AppStyles.secondaryColorGradientThree,
                      AppStyles.secondaryColorGradientOne
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                         borderRadius: BorderRadius.circular(14)
                      ),
                      child:Center(child: Text('KG', style:AppStyles.semiRegular.copyWith(color:Colors.white, fontSize:12.sp ),))
                    )
              ],
            ),
            SizedBox(height: 15.h),
             Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width:252.w,
                  child: TextField(
                controller: _heightController,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                      right: 10,
                    ),
                    child: AppStyles.heightSvg,
                  ),
                  prefixIconConstraints: BoxConstraints(
                    minWidth: 12.w,
                    minHeight: 15.h,
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
                  hintText: 'Your height',
                  hintStyle: AppStyles.semiRegular
                      .copyWith(color: AppStyles.greyVariant, fontSize: 12.sp),
                  filled: true,
                  fillColor: AppStyles.textInputFieldBackground,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(14.r)),
                )),
                ),
                   // SizedBox(width:15.w),
                    Container(
                      width:48.w,
                      height:48.h,
                      decoration:BoxDecoration(
                       gradient: const LinearGradient(
                    stops: [0.0, 1.0],
                    colors: [
                   AppStyles.secondaryColorGradientThree,
                      AppStyles.secondaryColorGradientOne
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                         borderRadius: BorderRadius.circular(14)
                      ),
                      child:Center(child: Text('CM', style:AppStyles.semiRegular.copyWith(color:Colors.white, fontSize:12.sp ),))
                    )
              ],
            ),
            
          ]),
        ),
        SizedBox(height: 30.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppStyles.marginLeftRight),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(99))),
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
                  borderRadius: BorderRadius.circular(99)),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: AppStyles.buttonShadowColor,
                    offset: const Offset(0, 10),
                    blurRadius: 22.r,
                  )
                ]),
                child: Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children:[
                     Text(
                    'Next',
                    style: AppStyles.poppinsBold
                        .copyWith(fontSize: 16.sp, color: AppStyles.whiteColor),
                  ),
                  SizedBox(width:3.w),
                  AppStyles.arrowRightSvg
                  ]
                ),
              ),
            ),
          ),
        ),
      ])),
    );
  }
}


