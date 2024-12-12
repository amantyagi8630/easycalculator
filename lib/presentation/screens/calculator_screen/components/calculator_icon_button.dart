import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CalculatorIconButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final Color iconColor;
  final double size;

  const CalculatorIconButton({
    super.key,
    required this.icon,
    this.color = const Color(0xff303136),
    this.iconColor = const Color(0xffA5A5A5),
    this.size = 24.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 62.w,
      height: 62.w,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16.w),
      ),
      child: Icon(
        icon,
        color: iconColor,
        size: size.w,
      ),
    );
  }
}
