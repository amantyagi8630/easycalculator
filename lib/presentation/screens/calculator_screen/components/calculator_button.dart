import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CalculatorButton extends StatelessWidget {
  final String label;
  final Color color;
  final Color textColor;
  final double fontSize;
  final double width;
  final double height;
  final FontWeight fontWeight;

  const CalculatorButton({
    super.key,
    required this.label,
    this.color = const Color(0xff303136),
    this.textColor = const Color(0xff29A8FF),
    this.fontSize = 32.0,
    this.width = 62.0,
    this.height = 62.0,
    this.fontWeight = FontWeight.w500,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width.w,
      height: height.w,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16.w),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: fontSize.sp,
          color: textColor,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
