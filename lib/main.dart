import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ride_hailing_app/controllers/auth_controller.dart';
import 'package:ride_hailing_app/view/screens/authentication_section/login&signin_section/login2.dart';


void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.put(AuthController());
    Size mediaQuerySize = MediaQuery.of(context).size;

    return ScreenUtilInit(designSize: Size(
      mediaQuerySize.width, mediaQuerySize.height), minTextAdapt: true, splitScreenMode: true,
       child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
         home: Login2(),
         ));
  }
}
