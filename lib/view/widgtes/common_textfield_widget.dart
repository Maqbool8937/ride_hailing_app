import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ride_hailing_app/controllers/utils/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final bool obscureText;
  final Widget? prefixIcon;
  final TextInputType keyboardType;
  String? Function(String?)? validation;

  CustomTextField({Key? key, required this.labelText, required this.controller, this.obscureText = false, this.prefixIcon, this.keyboardType = TextInputType.text, this.validation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.07,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.primaryColor),
      ),
      child: TextFormField(
        validator: validation,
        controller: controller,
        obscureText: obscureText,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStyle(color: Colors.grey.shade600),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
          prefixIcon: prefixIcon,
        ),
      ),
    );
  }
}
