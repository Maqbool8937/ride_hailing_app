import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ride_hailing_app/controllers/auth_controller.dart';
import 'package:ride_hailing_app/controllers/utils/app_colors.dart';
import 'package:ride_hailing_app/view/screens/authentication_section/login3.dart';
import 'package:ride_hailing_app/view/widgtes/common_button.dart';
import 'package:ride_hailing_app/view/widgtes/common_textfield_widget.dart';

class Login2 extends StatefulWidget {
  const Login2({super.key});

  @override
  State<Login2> createState() => _Login1State();
}

class _Login1State extends State<Login2> {
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  GlobalKey<FormState> key = GlobalKey();
  AuthController authController = Get.find();
  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: mediaQuery.width * 0.03.w, vertical: mediaQuery.height * 0.01.h),
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
                      return "Please enter an email";
                    } else if (!RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$').hasMatch(value)) {
                      return "Enter a valid email";
                    }
                    return null;
                  },
                  labelText: 'Email',
                  prefixIcon: Icon(
                    Icons.email_outlined,
                  ),
                  controller: emailController,
                ),
                SizedBox(
                  height: mediaQuery.height * 0.04,
                ),
                Center(
                    child: Text(
                  textAlign: TextAlign.center,
                  'Enter the email address you use for your \nBusyle account',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                )),
                SizedBox(
                  height: mediaQuery.height * 0.04,
                ),
                CommonButton(
                    text: 'Next',
                    onPressed: () {
                      if (key.currentState!.validate()) {
                        Get.to(() => Login3(
                              email: emailController.text.trim(),
                            ));
                      }
                    }),
                SizedBox(
                  height: mediaQuery.height * 0.04,
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Help me to find my email.',
                      style: TextStyle(color: AppColors.primaryColor),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
