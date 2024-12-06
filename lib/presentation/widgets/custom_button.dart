import 'package:easycalc/core/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    this.buttonHeight,
    this.buttonWidth,
    this.onTap,
    this.buttonBackground,
    required this.buttonLabel,
    this.buttonLabelColor,
    this.buttonTextSize,
  });

  final double? buttonHeight;
  final double? buttonWidth;
  final Color? buttonBackground;
  final Color? buttonLabelColor;
  final double? buttonTextSize;
  final String buttonLabel;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ?? () {},
      child: Container(
        width: buttonWidth ?? 62.w,
        height: buttonHeight ?? 40.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: buttonBackground ?? AppColors.appWhiteColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Text(
          buttonLabel,
          style: TextStyle(
            fontSize: buttonTextSize ?? 20.sp,
            fontWeight: FontWeight.w500,
            color: buttonLabelColor ?? AppColors.appMayaBlueColor,
          ),
        ),
      ),
    );
  }
}
