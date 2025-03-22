import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:ride_hailing_app/view/screens/authentication_section/login1.dart';

class OnboardingController extends GetxController {
  final PageController pageController = PageController();
  var currentIndex = 0.obs; // Using .obs for reactivity

  final List<Map<String, String>> onboardingData = [
    {
      "image": "assets/images/intro1.png",
      "title": "Your Travel Adventure \nBegins Here",
      "subtitle": "Experience seamless taxi booking, exclusive deals worldwide, and personalized travel options—all in one place.",
    },
    {
      "image": "assets/images/intro2.png",
      "title": "Your Taxi Search Made \nEffortless",
      "subtitle": "Search and find the best taxi driver from around the world. Set your own time and choose your car size preferences.",
    },
    {
      "image": "assets/images/intro3.png",
      "title": "Seamless Flight Booking \nat Your Fingertips",
      "subtitle": "With Busyle, you can secure your dream trip in just a few taps. Enjoy streamlined booking, real-time updates, & secure payment.",
    },
  ];

  void nextPage() {
    if (currentIndex.value < onboardingData.length - 1) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      Get.off(() => Login1()); // Navigate to LoginScreen when last page is reached
    }
  }

  void skip() {
     Get.off(() => Login1()); // 
   // Get.off(() => LoginScreen()); // Skip directly to login screen
  }
}
