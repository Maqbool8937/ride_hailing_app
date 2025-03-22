import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:ride_hailing_app/controllers/utils/app_colors.dart';
import 'package:ride_hailing_app/view/widgtes/auth_widget.dart';
import 'package:ride_hailing_app/view/widgtes/common_button.dart';
import 'package:ride_hailing_app/view/widgtes/common_textfield_widget.dart';
import 'package:ride_hailing_app/view/widgtes/country_picker-widget.dart';
import 'package:ride_hailing_app/view/widgtes/password_field_widget.dart';

class SuccessNotification extends StatefulWidget {
  const SuccessNotification({super.key});

  @override
  State<SuccessNotification> createState() => _Login1State();
}

class _Login1State extends State<SuccessNotification> {

  TextEditingController secpasswordController = TextEditingController();
  TextEditingController secConfirmPasswordController = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: mediaQuery.width*0.02.w,vertical: mediaQuery.height*0.01.h),
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
                Text('Set your passwords',style: TextStyle(fontSize: 15,color: Colors.grey),)
                  ],
                )
              ),
             
                SizedBox(height: mediaQuery.height*0.04,),
            Container(
              height: mediaQuery.height*0.5.h,
              width: mediaQuery.width*0.9.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    //color: Colors.white,
                    blurRadius: 2,
                    spreadRadius: 0,
                    offset: Offset(0, 0)
                  )
                ]
              ),
              child: Column(
               

                children: [
                  SizedBox(height: mediaQuery.height*0.04.h,),
                  Image.asset('assets/images/picon.png',height: 100,width: 100,),
                  SizedBox(height: mediaQuery.height*0.02.h,),
                  Text('Sign up Successful!',style: TextStyle(color: AppColors.primaryColor,fontSize: 20,fontWeight: FontWeight.w500),),
                   SizedBox(height: mediaQuery.height*0.02.h,),
                  Center(child: Text(
                  textAlign: TextAlign.center,
                    'Yay! Your account is all set. Log in and start exploring!',style: TextStyle(color: AppColors.primaryColor,fontSize: 14,fontWeight: FontWeight.w400),)),
                   SizedBox(height: mediaQuery.height*0.04.h,),
                    Image.asset('assets/images/cicon.png')
                ],
              ),
            ),
            
                                       SizedBox(height: mediaQuery.height*0.2,),
             
             CommonButton(text: 'Log in', onPressed: (){
            
             }),
                                      
                                     
   

            
            ],
          ),
        ),
      ),
    );
  }
}