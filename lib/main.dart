// import 'package:easycalc/core/app_theme/app_theme.dart';
import 'package:easycalc/core/colors/app_colors.dart';
import 'package:easycalc/presentation/screens/calculator_screen/calculator_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Easy Calculator',
          theme: ThemeData(scaffoldBackgroundColor: AppColors.appBlackColor),
          // theme: AppTheme.appLightTheme,
          // darkTheme: AppTheme.appDarkTheme,
          // themeMode: mode,
          home: CalculatorScreen(),
        );
      },
    );
  }
}
