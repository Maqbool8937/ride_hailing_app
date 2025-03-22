import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:ride_hailing_app/controllers/utils/app_colors.dart';
import 'package:ride_hailing_app/view/screens/authentication_section/login&signin_section/signin4.dart';
import 'package:ride_hailing_app/view/widgtes/auth_widget.dart';
import 'package:ride_hailing_app/view/widgtes/common_button.dart';
import 'package:ride_hailing_app/view/widgtes/common_textfield_widget.dart';
import 'package:ride_hailing_app/view/widgtes/country_picker-widget.dart';

class Signin3 extends StatefulWidget {
  const Signin3({super.key});

  @override
  State<Signin3> createState() => _Login1State();
}

class _Login1State extends State<Signin3> {

  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
 
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

                   CustomTextField(labelText: 'Passwords',controller:passwordController ,),
                   SizedBox(height: mediaQuery.height*0.02,),
                                      CustomTextField(labelText: 'Rewrite your passwords',controller:confirmPasswordController,),

            
                                       SizedBox(height: mediaQuery.height*0.25,),
             
             CommonButton(text: 'Next', onPressed: (){
            Get.to(()=>Signin4());
             }),
                                      
                                     
   

            
            ],
          ),
        ),
      ),
    );
  }
}