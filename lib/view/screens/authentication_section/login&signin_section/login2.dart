import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:ride_hailing_app/controllers/utils/app_colors.dart';
import 'package:ride_hailing_app/view/screens/authentication_section/login3.dart';
import 'package:ride_hailing_app/view/widgtes/common_button.dart';
import 'package:ride_hailing_app/view/widgtes/common_textfield_widget.dart';
import 'package:ride_hailing_app/view/widgtes/country_picker-widget.dart';

class Login2 extends StatefulWidget {
  const Login2({super.key});

  @override
  State<Login2> createState() => _Login1State();
}

class _Login1State extends State<Login2> {

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

    
               CustomTextField(labelText: 'Email',prefixIcon: Icon(Icons.email_outlined,),controller:emailController ,),
             SizedBox(height: mediaQuery.height*0.04,),
                              Center(child: Text(textAlign:TextAlign.center ,'Enter the email address you use for your \nBusyle account',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),)),
              SizedBox(height: mediaQuery.height*0.04,),
             CommonButton(text: 'Next', onPressed: (){
                    Get.to(()=>Login3());
             }),
              SizedBox(height: mediaQuery.height*0.04,),
              TextButton(onPressed: (){
               
              }, child: Text('Help me to find my email.',style: TextStyle(color: AppColors.primaryColor),))
            ],
          ),
        ),
      ),
    );
  }
}