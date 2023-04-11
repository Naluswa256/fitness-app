

import "package:fitness_app/src/features/authentication/presentation/profile_register.dart";
import "package:fitness_app/src/features/authentication/presentation/signup_form.dart";
import "package:fitness_app/src/features/dashboard/presentation/activity_tracker.dart";
import "package:fitness_app/src/features/dashboard/presentation/dashboard.dart";
import "package:fitness_app/src/features/dashboard/presentation/widget_screens/notifications_screen.dart";
import "package:fitness_app/src/features/onboarding/oboardingscreen_one.dart";
import "package:fitness_app/src/features/onboarding/onboardingscreen_3.dart";
import "package:fitness_app/src/features/onboarding/onboardingscreen_two.dart";
import "package:fitness_app/src/features/onboarding/splash_page.dart";
import "package:flutter/material.dart";

import 'package:flutter_screenutil/flutter_screenutil.dart';

import "features/authentication/presentation/login_form.dart";
import "features/authentication/presentation/success_registration.dart";
import "features/onboarding/onboardingscreen_4.dart";

//import "features/onboarding/onboardingscreen_4.dart";

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override  
  Widget build(BuildContext context) {
    
    return ScreenUtilInit(
      designSize: const  Size(375, 812),
      builder: (context , child)=>
       MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner:false, 
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home: const DashboardScreen(),
    ), 
    
    );
    
  }
}