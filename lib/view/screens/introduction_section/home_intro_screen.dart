import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:ride_hailing_app/view/screens/introduction_section/onboarding_screen.dart';
import 'package:ride_hailing_app/view/widgtes/common_button.dart';

class HomeIntroScreen extends StatelessWidget {
  const HomeIntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size mediaQuerySize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          /// Background Image (Full-Screen)
          Positioned.fill(
            child: Image.asset(
              'assets/images/home_icon.png',
              width: mediaQuerySize.width,
              height: mediaQuerySize.height,
              fit: BoxFit.cover, // Covers entire screen
            ),
          ),

          /// Language Dropdown (Top Center with Globe Icon)
          Positioned(
            top: mediaQuerySize.height * 0.05,
            left: 0,
            right: 0,
            child: Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.language, color: Colors.white, size: 14.sp), // 🌍 Globe Icon
                  SizedBox(width: 5.w),
                  DropdownButton<String>(
                    value: 'English',
                    dropdownColor: Colors.black87,
                    underline: SizedBox(), // Removes the default underline
                    icon: Icon(Icons.arrow_drop_down, color: Colors.white, size: 16.sp),
                    items: ['English', 'French', 'Spanish'].map((String language) {
                      return DropdownMenuItem<String>(
                        value: language,
                        child: Text(
                          language,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      // Handle language change
                    },
                  ),
                ],
              ),
            ),
          ),

          /// Bottom Content
          Positioned(
            bottom: mediaQuerySize.height * 0.05.h,
            left: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Less Busy, More Business',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    'Let’s start your journey with Busyle',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 15.h),
                  CommonButton(
                    text: 'Get Started',
                    onPressed: () {
                      Get.to(()=>OnboardingScreen());
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
