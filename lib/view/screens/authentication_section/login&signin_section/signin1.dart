import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:ride_hailing_app/controllers/utils/app_colors.dart';
import 'package:ride_hailing_app/view/screens/authentication_section/login&signin_section/signin2.dart';
import 'package:ride_hailing_app/view/widgtes/common_button.dart';
import 'package:ride_hailing_app/view/widgtes/common_textfield_widget.dart';
import 'package:ride_hailing_app/view/widgtes/country_picker-widget.dart';

class Signin1 extends StatefulWidget {
  const Signin1({super.key});

  @override
  State<Signin1> createState() => _Login1State();
}

class _Login1State extends State<Signin1> {

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
                Text('Find your account',style: TextStyle(fontSize: 15,color: Colors.black),)
                  ],
                )
              ),
             
                SizedBox(height: mediaQuery.height*0.04,),

    
               CustomTextField(labelText: 'Email',prefixIcon: Icon(Icons.email_outlined,),controller:emailController ,),
             SizedBox(height: mediaQuery.height*0.04,),
                              Center(child: Text(textAlign:TextAlign.center ,'Enter the email address you use for your \nBusyle account',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),)),
              SizedBox(height: mediaQuery.height*0.04,),
             CommonButton(text: 'Next', onPressed: (){
              Get.bottomSheet(Container(
                height: mediaQuery.height*0.4.h,
                width: mediaQuery.width,
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(10)
               ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: mediaQuery.width*0.03.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //SizedBox(height: mediaQuery.height*0.01.h,),
                      Align(alignment: Alignment.topRight,
                      child: IconButton(onPressed: (){
                        Get.back();
                      },icon: Icon(Icons.cancel),),
                      ),
                     SizedBox(height: mediaQuery.height*0.02.h,),
                     Text('Couldn’t find your account',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                      SizedBox(height: mediaQuery.height*0.02.h,),
                     Text('we’re sorry, we couldn’t locate your account. You can try again with another email, or create a new account.',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),

                     SizedBox(height: mediaQuery.height*0.02.h,),
                    GestureDetector(
                      onTap: (){
                  Get.to(()=>Signin2());
                      },
                      child: Center(
                        child: Container(
                          height: mediaQuery.height*0.05.h,
                          width: mediaQuery.width*0.6,
                          decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(10),
                            
                          ),
                          child: Center(
                            child: Text('Try Again',style: TextStyle(color: Colors.white),),
                          ),
                        ),
                      ),
                    ),
                    
                     SizedBox(height: mediaQuery.height*0.02.h,),
                    GestureDetector(
                      onTap: (){
                        Get.to(()=>Signin2());
                      },
                      child: Center(
                        child: Container(
                          height: mediaQuery.height*0.05.h,
                          width: mediaQuery.width*0.6,
                          decoration: BoxDecoration(
                           // color: AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey,width: 1.5)
                            
                          ),
                          child: Center(
                            child: Text('Create account',style: TextStyle(color: AppColors.primaryColor),),
                          ),
                        ),
                      ),
                    )
                    ],
                  ),
                ),
              ));
             }),
              SizedBox(height: mediaQuery.height*0.04,),
              TextButton(onPressed: (){}, child: Text('Help me to find my email.',style: TextStyle(color: AppColors.primaryColor),))
            ],
          ),
        ),
      ),
    );
  }
}