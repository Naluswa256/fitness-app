import "package:flutter/material.dart";
import "package:fitness_app/src/styles.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';



class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {

  bool _isHidden = false;

 
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        SizedBox(height: 40.h),
        Text(
          'Hey there',
          style: AppStyles.semiRegular.copyWith(
            fontSize: 16.sp,
          ),
        ),
        SizedBox(height: 5.h),
        Text(
          'Welcome Back',
          style: AppStyles.poppinsBold.copyWith(
            fontSize: 20.sp,
          ),
        ),
        SizedBox(height: 30.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppStyles.marginLeftRight),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            
          
            TextField(
                controller: _emailController,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                      right: 10,
                    ),
                    child: AppStyles.emailSvg,
                  ),
                  prefixIconConstraints: BoxConstraints(
                    minWidth: 12.w,
                    minHeight: 15.h,
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
                  hintText: 'Email',
                  hintStyle: AppStyles.semiRegular
                      .copyWith(color: AppStyles.greyVariant, fontSize: 12.sp),
                  filled: true,
                  fillColor: AppStyles.textInputFieldBackground,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(14.r)),
                )),
            SizedBox(height: 15.h),
            TextField(
                controller: _passwordController,
                obscureText: _isHidden,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  suffixIcon: InkWell(
                    onTap: _togglePasswordView,
                    child: _isHidden
                        ? Padding(padding:const EdgeInsets.only(right:15),child: AppStyles.visibilityShowSvg,)
                        : Padding(padding:const EdgeInsets.only(right:15), child: AppStyles.visibilityHideSvg),
                  ),
                  suffixIconConstraints: BoxConstraints(
                    minWidth: 12.w,
                    minHeight: 15.h,
                  ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                      right: 10,
                    ),
                    child: AppStyles.lockSvg,
                  ),
                  prefixIconConstraints: BoxConstraints(
                    minWidth: 12.w,
                    minHeight: 15.h,
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
                  hintText: 'password',
                  hintStyle: AppStyles.semiRegular
                      .copyWith(color: AppStyles.greyVariant, fontSize: 12.sp),
                  filled: true,
                  fillColor: AppStyles.textInputFieldBackground,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(14.r)),
                )),
                
          ]),
        ),
         SizedBox(height: 10.h),
          Text(
          'Forgot Your Password?',
          style: AppStyles.poppinsMedium.copyWith(
            fontSize: 12.sp,
            color:AppStyles.greyVariant,
             decoration: TextDecoration.underline,
          ),
        ),
         SizedBox(height: MediaQuery.of(context).size.height*0.25),
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
              child:Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children:[
                    
                 
                  AppStyles.loginSvg,
                   SizedBox(width:13.w),
                   Text(
                    'Login',
                    style: AppStyles.poppinsBold
                        .copyWith(fontSize: 16.sp, color: AppStyles.whiteColor),
                  ),
                  ]
                ), 
            ),
          ),
        ), ),  
       SizedBox(height:30.h),
       Row(
         children:[
                 Expanded(
            child:  Container(
                margin:  EdgeInsets.only(left: AppStyles.marginLeftRight, right: 10),
                child: const Divider(
                  color: AppStyles.dividerColor,
                  height: 0,
                )),
          ),
       Text(
               'OR',
               style:AppStyles.semiRegular
                  .copyWith(fontSize: 12.sp,)
              ,
             ),
       
             Expanded(
            child:  Container(
                margin:  EdgeInsets.only(left:10 , right: AppStyles.marginLeftRight),
                child: const Divider(
                  color: AppStyles.dividerColor,
                  height: 0,
                )),
          ),
             
       
         ]
       ),
       SizedBox(height:20.h),

       Row(
        mainAxisAlignment:MainAxisAlignment.center,
        children:[
     
           OutlinedButton(
    style: OutlinedButton.styleFrom(
      padding: const EdgeInsets.all(15),
      side: const BorderSide(
        color: AppStyles.dividerColor,
       
      ),
       shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(14)),
    ),
    onPressed: () {},
    child: Image.asset('assets/images/google_logo.png', width:20.w, height:20.h,),
  ),
    SizedBox(width:30.h),
   OutlinedButton(
    style: OutlinedButton.styleFrom(
      padding: const EdgeInsets.all(15),
      side: const BorderSide(
        color: AppStyles.dividerColor
      ),
      shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(14)),
    ),
    onPressed: () {},
    child: Image.asset('assets/images/facebook 1.png', width:20.w, height:20.h,),
  ),

        ]
       ),
         SizedBox(height:30.h),

         Wrap(
          children:[
            Text(
               'Dont have an account yet?',
               style:AppStyles.semiRegular
                  .copyWith(fontSize: 14.sp,)
              ,
             ),
      GestureDetector(
        onTap:(){},
        child: GradientText(
          'Register',
          style: AppStyles.poppinsMedium
                    .copyWith(fontSize: 14.sp,)
                ,
          colors: const [
          AppStyles.secondaryColorGradientOne,
          AppStyles.secondaryColorGradientThree
          ],
      ),
      )
          ]
         )
      ])),
    );
  }

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}



