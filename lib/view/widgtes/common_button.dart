import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../controllers/utils/app_colors.dart';

class CommonButton extends StatelessWidget {
  final String text;
  final bool isVisible;
  final VoidCallback onPressed;

  const CommonButton({
    Key? key,
    required this.text,
    this.isVisible=false,
    required this.onPressed, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size mediaQuerySize = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onPressed, 
      child: Container(
        height: mediaQuerySize.height * 0.07.h,
        width: mediaQuerySize.width * 0.9.w,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          // color: isVisible? AppColors.blackColor:Color(0xffD9D9D9),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.sp, 
            ),
          ),
        ),
      ),
    );
  }
}
