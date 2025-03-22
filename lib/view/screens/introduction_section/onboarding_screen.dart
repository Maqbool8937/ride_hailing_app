import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ride_hailing_app/controllers/onboardin_controller.dart';
import 'package:ride_hailing_app/controllers/utils/app_colors.dart';

class OnboardingScreen extends StatefulWidget {
  OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final OnboardingController controller = Get.put(OnboardingController());

  @override
  Widget build(BuildContext context) {
    Size mediaQuerySize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.blue,
      body: Stack(
        children: [
          // Image Section
          Positioned(
            top: mediaQuerySize.height * 0.1.h,
            left: 0,
            right: 0,
            child: SizedBox(
              height: mediaQuerySize.height * 0.58,
              child: PageView.builder(
                controller: controller.pageController,
                itemCount: controller.onboardingData.length,
                onPageChanged: (index) {
                  controller.currentIndex.value = index;
                },
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20),
                    child: Image.asset(
                      controller.onboardingData[index]["image"]!,
                      fit: BoxFit.contain,
                      width: double.infinity,
                    ),
                  );
                },
              ),
            ),
          ),

          // White Container Section
          Positioned(
            top: mediaQuerySize.height * 0.5,
            left: 0,
            right: 0,
            child: ClipPath(
              clipper: CurvedContainerClipper(),
              child: Container(
                height: mediaQuerySize.height * 0.5,
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 0.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // Title
                    Obx(() => Text(
                          controller.onboardingData[controller.currentIndex.value]["title"]!,
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        )),
                    SizedBox(height: mediaQuerySize.height * 0.01.h),

                    // Subtitle
                    Obx(() => Text(
                          controller.onboardingData[controller.currentIndex.value]["subtitle"]!,
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.black54,
                          ),
                          textAlign: TextAlign.center,
                        )),
                    SizedBox(height: mediaQuerySize.height * 0.02.h),

                    // Dots Indicator
                    Obx(() => Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            controller.onboardingData.length,
                            (index) => Container(
                              margin: EdgeInsets.symmetric(horizontal: 4.w),
                              width: controller.currentIndex.value == index ? 14.w : 10.w,
                              height: controller.currentIndex.value == index ? 14.w : 10.w,
                              decoration: BoxDecoration(
                                color: controller.currentIndex.value == index
                                    ? Colors.blue
                                    : Colors.black26,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                        )),
                    SizedBox(height: mediaQuerySize.height * 0.02.h),

                    // Buttons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Skip Button
                        GestureDetector(
                          onTap: () => controller.skip(),
                          child: Container(
                            width: mediaQuerySize.width * 0.4.w,
                            height: mediaQuerySize.height * 0.06.h,
                            decoration: BoxDecoration(
                              color: Color(0xFFFDFDFD),
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.black.withOpacity(0.2)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.15),
                                  spreadRadius: 1,
                                  blurRadius: 8,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Center(
                              child: Text(
                                'Skip',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.sp,
                                ),
                              ),
                            ),
                          ),
                        ),

                        // Continue Button
                        GestureDetector(
                          onTap: () => controller.nextPage(),
                          child: Container(
                            width: mediaQuerySize.width * 0.4.w,
                            height: mediaQuerySize.height * 0.06.h,
                            decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.15),
                                  spreadRadius: 1,
                                  blurRadius: 8,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Center(
                              child: Text(
                                'Continue',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.sp,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Custom Clipper for the White Container
class CurvedContainerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double height = size.height;
    double width = size.width;

    path.lineTo(0, height * 0.2);
    path.quadraticBezierTo(width * 0.5, height * 0.4, width, height * 0.2);
    path.lineTo(width, height);
    path.lineTo(0, height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
