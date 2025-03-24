import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../controllers/utils/app_colors.dart';

class CommonButton extends StatelessWidget {
  final String text;
  final bool isVisible;
  final VoidCallback onPressed;
  bool isLoading;

  CommonButton({Key? key, required this.text, this.isVisible = false, required this.onPressed, this.isLoading = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size mediaQuerySize = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: mediaQuerySize.height * 0.07.h,
        width: mediaQuerySize.width.w,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          // color: isVisible? AppColors.blackColor:Color(0xffD9D9D9),
          borderRadius: BorderRadius.circular(20),
        ),
        child: isLoading
            ? Padding(
                padding: const EdgeInsets.all(7),
                child: SpinKitThreeInOut(
                  color: Colors.white,
                  size: 35,
                ),
              )
            : Center(
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
