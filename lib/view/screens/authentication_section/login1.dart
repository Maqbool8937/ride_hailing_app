import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:ride_hailing_app/controllers/utils/app_colors.dart';
import 'package:ride_hailing_app/view/screens/authentication_section/login&signin_section/login2.dart';
import 'package:ride_hailing_app/view/widgtes/common_button.dart';
import 'package:ride_hailing_app/view/widgtes/common_textfield_widget.dart';
import 'package:ride_hailing_app/view/widgtes/country_picker-widget.dart';

class Login1 extends StatefulWidget {
  const Login1({super.key});

  @override 
  State<Login1> createState() => _Login1State();
}

class _Login1State extends State<Login1> {

  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
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
                child: IconButton(
                  alignment: Alignment.topLeft,
                  icon: Icon(Icons.arrow_back),
                  onPressed: (){
                    Get.back();
                  },
                ),
              ),
              SizedBox(height: mediaQuery.height*0.02,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: mediaQuery.width*0.04.w),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text('Welcome to Busyle',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600),)),
              ),
              SizedBox(height: mediaQuery.height*0.02,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: mediaQuery.width*0.04.w),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text('To sign up or log in, enter your number.',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),)),
              ),
             
                SizedBox(height: mediaQuery.height*0.04,),

    CustomTextField(
      labelText: "Phone Number",
      controller: phoneController,
      keyboardType: TextInputType.phone,
      prefixIcon: CountryPickerWidget(controller: phoneController), // Uses the country picker widget
    ),
             SizedBox(height: mediaQuery.height*0.04,),
             CommonButton(text: 'Next', onPressed: (){
                Get.to(()=>Login2());
             }),
              SizedBox(height: mediaQuery.height*0.04,),
              TextButton(onPressed: (){
                // Get.to(()=>Login2());
              }, child: Text('New phone number? Find account',style: TextStyle(color: AppColors.primaryColor),))
            ],
          ),
        ),
      ),
    );
  }
}