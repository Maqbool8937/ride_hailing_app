import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:ride_hailing_app/view/screens/introduction_section/splash_screen.dart';
import 'package:ride_hailing_app/view/screens/texi_order_section/complete_order_screen.dart';
import 'package:ride_hailing_app/view/screens/texi_order_section/get_driver_screen.dart';
import 'package:ride_hailing_app/view/screens/texi_order_section/looking_fortexi_screen.dart';
import 'package:ride_hailing_app/view/screens/texi_order_section/order_running_screen.dart';
import 'package:ride_hailing_app/view/screens/texi_order_section/paymen_detail_screen.dart';
import 'package:ride_hailing_app/view/screens/texi_order_section/promo_ride_detail_screen.dart';

import 'package:ride_hailing_app/view/screens/texi_order_section/promo_ride_screen.dart';
import 'package:ride_hailing_app/view/screens/texi_order_section/rides1_screen.dart';
import 'package:ride_hailing_app/view/screens/texi_order_section/rides2_screen.dart';
import 'package:ride_hailing_app/view/screens/texi_order_section/rides3_screen.dart';
import 'package:ride_hailing_app/view/screens/texi_order_section/rides4_screen.dart';
import 'package:ride_hailing_app/view/screens/texi_order_section/select_payment_screen.dart';
import 'package:ride_hailing_app/view/screens/texi_order_section/trip_completed_screen.dart';

void main() async{
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Size mediaQuerySize = MediaQuery.of(context).size;

    return ScreenUtilInit(
      designSize: Size(mediaQuerySize.width, mediaQuerySize.height),
      minTextAdapt: true,
      splitScreenMode: true,
      child: GetMaterialApp(debugShowCheckedModeBanner: false,
    
      // home: PromoRideDetailScreen(),
      home:SplashScreen(),
       ),
    );
  }
}