import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:ride_hailing_app/view/screens/texi_order_section/promo_ride_screen.dart';
import 'package:ride_hailing_app/view/widgtes/common_button.dart';


class PromoRideDetailScreen extends StatefulWidget {
  const PromoRideDetailScreen({super.key});

  @override
  State<PromoRideDetailScreen> createState() => _Login1State();
}

class _Login1State extends State<PromoRideDetailScreen> {

  TextEditingController secpasswordController = TextEditingController();
  TextEditingController secConfirmPasswordController = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: mediaQuery.width*0.03.w,vertical: mediaQuery.height*0.01.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child:Row(
                    children: [
                       IconButton(
                    alignment: Alignment.topLeft,
                    icon: Icon(Icons.arrow_back,color: Colors.grey,),
                    onPressed: (){
                      Get.back();
                    },
                  ),
                  Text('Special offers',style: TextStyle(fontSize: 15,color: Colors.grey),)
                    ],
                  )
                ),
               
              Container(
                height:mediaQuery.height*0.26.h,
                width: mediaQuery.width.w,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/ride1.png'))
                ),
              ),
                 SizedBox(height: mediaQuery.height*0.01,),
              Text('Special Year End Promotion 50% Off Your Taxi Booking',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
             SizedBox(height: mediaQuery.height*0.01,),
          Text( textAlign: TextAlign.start,"""Unlock a world of savings and adventure with Busyle! 
          For a limited time, we’re thrilled to offer you an exclusive 15% discount on your next flight.""",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w400,color: Colors.grey),),
             
               SizedBox(height: mediaQuery.height*0.02,),
             Container(
              height: mediaQuery.height*0.07.h,
              width: mediaQuery.width*0.95.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
          BoxShadow(
            blurRadius: 1,
            spreadRadius: 0,
            offset: Offset(0, 0)
          )
                ]
          
              ),
          
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
          Text('BGYH89',style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w600),),
          Image.asset('assets/images/ri1.png')
                ],
              ),
             ),
              SizedBox(height: mediaQuery.height*0.02,),
                 Container(
              height: mediaQuery.height*0.12.h,
              width: mediaQuery.width*0.95.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
          BoxShadow(
            blurRadius: 1,
            spreadRadius: 0,
            offset: Offset(0, 0)
          )
                ]
          
              ),
          
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Icon(Icons.circle_outlined,color: Colors.grey,),
                Text('Valid until',style: TextStyle(color: Colors.grey,),)
              ],
            ),
            Text('Dec 31, 2024',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),)
          ],
                ),
                VerticalDivider(),
                 Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Icon(Icons.circle_outlined,color: Colors.grey,),
                Text('Min Transaction',style: TextStyle(color: Colors.grey,),)
              ],
            ),
            Text('Rp55.000',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),)
          ],
                ),
                ],
              ),
             ),
             SizedBox(height: mediaQuery.height*0.02.h,),
             Align(
              alignment: Alignment.centerLeft,
              child: Text('Terms and Conditions:',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),)),
           SizedBox(height: mediaQuery.height*0.01.h,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/images/text.png'),
              )
          
             
              
              ],
            ),
          ),
        ),
      ),
      bottomSheet: Container(
        height: mediaQuery.height*0.1.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: CommonButton(text: 'Claim Discount', onPressed: (){
            Get.to(()=>PromoRideScreen());
          }),
        ),
      ),
    );
  }
}