import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ride_hailing_app/controllers/utils/app_colors.dart';
import 'package:ride_hailing_app/view/screens/introduction_section/home_intro_screen.dart'; // Replace with your actual next screen

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    
    // Navigate to the next screen after 3 seconds
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeIntroScreen()), // Replace with your next screen
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    Size mediaQuerySize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
        children: [
          SizedBox(height: mediaQuerySize.height * 0.18.h),
          Center(
            child: Image.asset(
              'assets/images/splash_logo.png',
              height: mediaQuerySize.height * 0.3.h,
              width: mediaQuerySize.width * 0.6.w,
            ),
          ),
          Center(
            child: Text(
              'Busyle',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: mediaQuerySize.height * 0.3.h),
          Image.asset(
            'assets/images/mingcute_loading-fill.png',
            height: mediaQuerySize.height * 0.08.h,
            width: mediaQuerySize.width * 0.15.w,
          ),
        ],
      ),
    );
  }
}
