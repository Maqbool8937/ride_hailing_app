import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:ride_hailing_app/view/screens/authentication_section/login&signin_section/signin3.dart';
import 'package:ride_hailing_app/view/widgtes/auth_widget.dart';
import 'package:ride_hailing_app/view/widgtes/common_button.dart';
import 'package:ride_hailing_app/view/widgtes/common_textfield_widget.dart';
import 'package:ride_hailing_app/view/widgtes/country_picker-widget.dart';

class Signin2 extends StatefulWidget {
  const Signin2({super.key});

  @override
  State<Signin2> createState() => _Login1State();
}

class _Login1State extends State<Signin2> {
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController firstNamController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  GlobalKey<FormState> key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: mediaQuery.width * 0.02.w, vertical: mediaQuery.height * 0.01.h),
          child: Form(
            key: key,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Row(
                        children: [
                          IconButton(
                            alignment: Alignment.topLeft,
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.grey,
                            ),
                            onPressed: () {
                              Get.back();
                            },
                          ),
                          Text(
                            'Find your account',
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                          )
                        ],
                      )),

                  SizedBox(
                    height: mediaQuery.height * 0.04,
                  ),

                  CustomTextField(
                    labelText: 'Nick name',
                    controller: firstNamController,
                    validation: (value) {
                      if (value!.isEmpty) {
                        return "Please fill this field";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: mediaQuery.height * 0.02,
                  ),
                  CustomTextField(
                    validation: (value) {
                      if (value!.isEmpty) {
                        return "Please fill this field";
                      }
                      return null;
                    },
                    labelText: 'Last name',
                    controller: lastNameController,
                  ),

                  SizedBox(
                    height: mediaQuery.height * 0.02,
                  ),
                  CustomTextField(
                    labelText: 'Email',
                    prefixIcon: Icon(
                      Icons.email_outlined,
                    ),
                    validation: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter an email";
                      } else if (!RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$').hasMatch(value)) {
                        return "Enter a valid email";
                      }
                      return null;
                    },
                    controller: emailController,
                  ),
                  SizedBox(
                    height: mediaQuery.height * 0.02,
                  ),
                  CustomTextField(
                    validation: (value) {
                      if (value!.isEmpty) {
                        return "Please fill this field";
                      }
                      return null;
                    },
                    keyboardType: TextInputType.phone,
                    labelText: 'Phone number',
                    controller: phoneController,
                    prefixIcon: CountryPickerWidget(controller: phoneController),
                  ),
                  SizedBox(
                    height: mediaQuery.height * 0.1,
                  ),

                  CommonButton(
                      text: 'Next',
                      onPressed: () {
                        if (key.currentState!.validate()) {
                          Get.to(() => Signin3(
                                email: emailController.text,
                                firstName: firstNamController.text.trim(),
                                lastName: lastNameController.text.trim(),
                                phoneNumber: phoneController.text.trim(),
                              ));
                        }
                      }),
                  SizedBox(
                    height: mediaQuery.height * 0.02,
                  ),
                  AuthWidget(
                    imagePath: 'assets/images/google3.png',
                    onTap: () {},
                    text: 'Sign in with Google',
                  ),
                  SizedBox(
                    height: mediaQuery.height * 0.02,
                  ),
                  AuthWidget(
                    imagePath: 'assets/images/appl_img.png',
                    onTap: () {},
                    text: 'Sign in with apple',
                  ),
                  SizedBox(
                    height: mediaQuery.height * 0.02,
                  ),
                  AuthWidget(
                    imagePath: 'assets/images/fb.png',
                    onTap: () {},
                    text: 'Sign in with Facebook',
                  )
                  //  Container(
                  //   height: mediaQuery.height*0.06.h,
                  //   width: mediaQuery.width*0.9.w,
                  //   decoration: BoxDecoration(
                  //     color: Color(0xffE3E4E8),
                  //     borderRadius: BorderRadius.circular(20),
                  //   ),
                  //   child: Row(
                  //     children: [
                  //       Image.asset('assets/images/google3.png'),
                  //       Text('Sign in with Google')
                  //     ],
                  //   ),
                  //  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
