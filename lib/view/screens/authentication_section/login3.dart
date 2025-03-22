import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:ride_hailing_app/controllers/utils/app_colors.dart';
import 'package:ride_hailing_app/view/screens/authentication_section/login&signin_section/signin1.dart';
import 'package:ride_hailing_app/view/widgtes/common_button.dart';
import 'package:ride_hailing_app/view/widgtes/common_textfield_widget.dart';
import 'package:ride_hailing_app/view/widgtes/country_picker-widget.dart';

class Login3 extends StatefulWidget {
  const Login3({super.key});

  @override
  State<Login3> createState() => _Login1State();
}

class _Login1State extends State<Login3> {

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
                child:Row(
                  children: [
                     IconButton(
                  alignment: Alignment.topLeft,
                  icon: Icon(Icons.arrow_back,color: Colors.grey,),
                  onPressed: (){
                    Get.back();
                  },
                ),
                Text('Find your account',style: TextStyle(fontSize: 15,color: Colors.grey),)
                  ],
                )
              ),
             
                SizedBox(height: mediaQuery.height*0.04,),

    
               CustomTextField(labelText: 'Passwords',prefixIcon: Icon(Icons.lock_clock_outlined,),controller:emailController ,),
             SizedBox(height: mediaQuery.height*0.04,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: mediaQuery.width*0.02.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Row(children: [
                Icon(Icons.check_box_outline_blank_outlined,color: Colors.grey,size: 20,),
                SizedBox(width: mediaQuery.width*0.02,),
                Text('Remember me',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.grey),)
               ],),
               TextButton(onPressed: (){}, child: Text('Forgot Passwords?',style: TextStyle(color: AppColors.primaryColor),))
                ],
              ),
            ),

              SizedBox(height: mediaQuery.height*0.04,),
              Padding(
              padding: EdgeInsets.symmetric(horizontal: mediaQuery.width*0.02.w),
                child: Divider(color: Colors.grey,),
              ),
              SizedBox(height: mediaQuery.height*0.3,),
             CommonButton(text: 'Next', onPressed: (){
  Get.to(()=>Signin1());
             }),
              SizedBox(height: mediaQuery.height*0.04,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?",style: TextStyle(color: Colors.grey),),
                  TextButton(onPressed: (){
                  
                  }, child: Text('Sign Up',style: TextStyle(color: AppColors.primaryColor),))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}