import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:ride_hailing_app/controllers/utils/app_colors.dart';
import 'package:ride_hailing_app/view/screens/main_screen.dart';
import 'package:ride_hailing_app/view/widgtes/auth_widget.dart';
import 'package:ride_hailing_app/view/widgtes/common_button.dart';
import 'package:ride_hailing_app/view/widgtes/common_textfield_widget.dart';
import 'package:ride_hailing_app/view/widgtes/country_picker-widget.dart';
import 'package:ride_hailing_app/view/widgtes/password_field_widget.dart';

class Signin4 extends StatefulWidget {
  const Signin4({super.key});

  @override
  State<Signin4> createState() => _Login1State();
}

class _Login1State extends State<Signin4> {

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
              PasswordFieldWidget(
                controller:secpasswordController ,
                labelText: 'Password',
                 isPassword: true,
                // prefixIcon: Icon(Icons.visibility),
              ),

                  // CustomTextField(labelText: 'Passwords',controller:passwordController ,),
                   SizedBox(height: mediaQuery.height*0.02,),
                    PasswordFieldWidget(
                controller:secConfirmPasswordController ,
                labelText: 'Confirm your passwords',
                 isPassword: true,
                // prefixIcon: Icon(Icons.visibility),
              ),
            
                                       SizedBox(height: mediaQuery.height*0.25,),
             
             CommonButton(text: 'Create account', onPressed: (){
            Get.to(()=>MainScreen());
             }),
                                      
                                     
   

            
            ],
          ),
        ),
      ),
    );
  }
}