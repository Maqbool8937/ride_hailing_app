import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:ride_hailing_app/controllers/auth_controller.dart';
import 'package:ride_hailing_app/controllers/utils/app_colors.dart';
import 'package:ride_hailing_app/view/screens/authentication_section/login&signin_section/login2.dart';
import 'package:ride_hailing_app/view/screens/authentication_section/login&signin_section/signin4.dart';
import 'package:ride_hailing_app/view/widgtes/auth_widget.dart';
import 'package:ride_hailing_app/view/widgtes/common_button.dart';
import 'package:ride_hailing_app/view/widgtes/common_textfield_widget.dart';
import 'package:ride_hailing_app/view/widgtes/country_picker-widget.dart';

class Signin3 extends StatefulWidget {
  String firstName;
  String lastName;
  String email;
  String phoneNumber;

  Signin3({super.key, required this.email, required this.firstName, required this.lastName, required this.phoneNumber});

  @override
  State<Signin3> createState() => _Login1State();
}

class _Login1State extends State<Signin3> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  GlobalKey<FormState> key = GlobalKey();
  AuthController authController = Get.find();
  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: mediaQuery.width * 0.02.w, vertical: mediaQuery.height * 0.01.h),
          child: SingleChildScrollView(
            child: Form(
              key: key,
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
                            'Set your passwords',
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                          )
                        ],
                      )),
                  SizedBox(
                    height: mediaQuery.height * 0.04,
                  ),
                  CustomTextField(
                    validation: (value) {
                      if (value!.isEmpty) {
                        return "Please fill this field";
                      }
                      return null;
                    },
                    labelText: 'Passwords',
                    controller: passwordController,
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
                    labelText: 'Rewrite your passwords',
                    controller: confirmPasswordController,
                  ),
                  SizedBox(
                    height: mediaQuery.height * 0.25,
                  ),
                  Obx(() {
                    return CommonButton(
                        isLoading: authController.signUpLoading.value,
                        text: 'Signup',
                        onPressed: () {
                          if (key.currentState!.validate()) {
                            authController
                                .signUpUserController(email: widget.email, firstName: widget.firstName, lastName: widget.lastName, userEmail: widget.email, password: passwordController.text.trim(), confirmPassword: confirmPasswordController.text.trim(), phoneNumber: widget.phoneNumber)
                                .then(
                              (value) {
                                if (value == true) {
                                  Get.to(() => Login2());
                                }
                              },
                            );
                          }
                        });
                  }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
