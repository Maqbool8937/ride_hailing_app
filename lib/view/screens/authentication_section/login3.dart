import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:ride_hailing_app/controllers/auth_controller.dart';
import 'package:ride_hailing_app/controllers/utils/app_colors.dart';
import 'package:ride_hailing_app/view/screens/authentication_section/login&signin_section/signin2.dart';
import 'package:ride_hailing_app/view/screens/home_section/home_screen.dart';
import 'package:ride_hailing_app/view/widgtes/common_button.dart';
import 'package:ride_hailing_app/view/widgtes/common_textfield_widget.dart';

class Login3 extends StatefulWidget {
  String email;
  Login3({super.key, required this.email});

  @override
  State<Login3> createState() => _Login1State();
}

class _Login1State extends State<Login3> {
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> key = GlobalKey();
  AuthController authController = Get.find();
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
                    validation: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter a password";
                      } else if (value.length < 6) {
                        return "Password must be at least 6 characters long";
                      }
                      return null;
                    },
                    labelText: 'Passwords',
                    prefixIcon: Icon(
                      Icons.lock_clock_outlined,
                    ),
                    controller: passwordController,
                  ),
                  SizedBox(
                    height: mediaQuery.height * 0.04,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: mediaQuery.width * 0.02.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.check_box_outline_blank_outlined,
                              color: Colors.grey,
                              size: 20,
                            ),
                            SizedBox(
                              width: mediaQuery.width * 0.02,
                            ),
                            Text(
                              'Remember me',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey),
                            )
                          ],
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Forgot Passwords?',
                              style: TextStyle(color: AppColors.primaryColor),
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: mediaQuery.height * 0.04,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: mediaQuery.width * 0.02.w),
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: mediaQuery.height * 0.3,
                  ),
                  Obx(() {
                    return CommonButton(
                        isLoading: authController.loginLoading.value,
                        text: 'Login',
                        onPressed: () {
                          if (key.currentState!.validate()) {
                            authController.loginController(email: widget.email, password: passwordController.text).then(
                              (value) {
                                if (value == true) {
                                  print('Login sucessfully');
                                  Get.to(HomeScreen());
                                }
                              },
                            );
                          }
                        });
                  }),
                  SizedBox(
                    height: mediaQuery.height * 0.04,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(color: Colors.grey),
                      ),
                      TextButton(
                          onPressed: () {
                            Get.to(Signin2());
                          },
                          child: Text(
                            'Sign Up',
                            style: TextStyle(color: AppColors.primaryColor),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
