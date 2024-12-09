import 'package:easycalc/core/colors/app_colors.dart';
import 'package:easycalc/presentation/bloc/calculator_bloc/calculator_bloc.dart';
import 'package:easycalc/presentation/bloc/calculator_bloc/calculator_event.dart';
import 'package:easycalc/presentation/bloc/calculator_bloc/calculator_state.dart';
import 'package:easycalc/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  @override
  void initState() {
    super.initState();
    calculatorBloc = CalculatorBloc();
  }

  late CalculatorBloc calculatorBloc;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appGhostWhiteColor,
      body: BlocProvider(
        create: (_) => calculatorBloc,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 34.w, vertical: 40.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  BlocBuilder<CalculatorBloc, CalculatorState>(
                    builder: (context, state) {
                      return Text(
                        state.expression.toString(),
                        style: TextStyle(
                          fontSize: 40.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      );
                    },
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        width: 226.w,
                        height: 384.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomTextButton(
                                  buttonLabel: 'e',
                                  onTap: () {},
                                ),
                                CustomTextButton(
                                  onTap: () {},
                                  buttonLabel: 'Ac',
                                  buttonTextSize: 32.sp,
                                  buttonLabelColor: AppColors.appOldSilverColor,
                                  buttonWidth: 62.w,
                                  buttonHeight: 62.h,
                                ),
                                BlocBuilder<CalculatorBloc, CalculatorState>(
                                  builder: (context, state) {
                                    return CustomTextButton(
                                      onTap: () {
                                        context.read<CalculatorBloc>().add(OnNumberPressed(inputDigit: '7'));
                                      },
                                      buttonLabel: '7',
                                      buttonTextSize: 32.sp,
                                      buttonLabelColor: AppColors.appPictonBlueColor,
                                      buttonWidth: 62.w,
                                      buttonHeight: 60.h,
                                    );
                                  },
                                ),
                                BlocBuilder<CalculatorBloc, CalculatorState>(
                                  builder: (context, state) {
                                    return CustomTextButton(
                                      onTap: () {
                                        context.read<CalculatorBloc>().add(OnNumberPressed(inputDigit: '4'));
                                      },
                                      buttonLabel: '4',
                                      buttonTextSize: 32.sp,
                                      buttonLabelColor: AppColors.appPictonBlueColor,
                                      buttonWidth: 62.w,
                                      buttonHeight: 60.h,
                                    );
                                  },
                                ),
                                CustomTextButton(
                                  onTap: () {},
                                  buttonLabel: '1',
                                  buttonTextSize: 32.sp,
                                  buttonLabelColor: AppColors.appPictonBlueColor,
                                  buttonWidth: 62.w,
                                  buttonHeight: 60.h,
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomTextButton(
                                  buttonLabel: 'μ',
                                  onTap: () {},
                                ),
                                CustomTextButton(
                                  onTap: () {},
                                  buttonLabel: 'r',
                                  buttonTextSize: 32.sp,
                                  buttonLabelColor: AppColors.appOldSilverColor,
                                  buttonWidth: 62.w,
                                  buttonHeight: 62.h,
                                ),
                                CustomTextButton(
                                  onTap: () {},
                                  buttonLabel: '8',
                                  buttonTextSize: 32.sp,
                                  buttonLabelColor: AppColors.appPictonBlueColor,
                                  buttonWidth: 62.w,
                                  buttonHeight: 60.h,
                                ),
                                CustomTextButton(
                                  onTap: () {},
                                  buttonLabel: '5',
                                  buttonTextSize: 32.sp,
                                  buttonLabelColor: AppColors.appPictonBlueColor,
                                  buttonWidth: 62.w,
                                  buttonHeight: 60.h,
                                ),
                                CustomTextButton(
                                  onTap: () {},
                                  buttonLabel: '2',
                                  buttonTextSize: 32.sp,
                                  buttonLabelColor: AppColors.appPictonBlueColor,
                                  buttonWidth: 62.w,
                                  buttonHeight: 60.h,
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomTextButton(
                                  buttonLabel: 'sin',
                                  onTap: () {},
                                ),
                                CustomTextButton(
                                  onTap: () {},
                                  buttonLabel: '/',
                                  buttonTextSize: 32.sp,
                                  buttonWidth: 62.w,
                                  buttonHeight: 62.h,
                                  buttonLabelColor: AppColors.appDodgerBlue,
                                  buttonBackground: AppColors.appFreshAirColor,
                                ),
                                CustomTextButton(
                                  onTap: () {},
                                  buttonLabel: '9',
                                  buttonTextSize: 32.sp,
                                  buttonWidth: 62.w,
                                  buttonHeight: 60.h,
                                  buttonLabelColor: AppColors.appDodgerBlue,
                                  buttonBackground: AppColors.appWhiteColor,
                                ),
                                CustomTextButton(
                                  onTap: () {},
                                  buttonLabel: '6',
                                  buttonTextSize: 32.sp,
                                  buttonLabelColor: AppColors.appDodgerBlue,
                                  buttonBackground: AppColors.appWhiteColor,
                                  buttonWidth: 62.w,
                                  buttonHeight: 60.h,
                                ),
                                CustomTextButton(
                                  onTap: () {},
                                  buttonLabel: '3',
                                  buttonTextSize: 32.sp,
                                  buttonLabelColor: AppColors.appDodgerBlue,
                                  buttonBackground: AppColors.appWhiteColor,
                                  buttonWidth: 62.w,
                                  buttonHeight: 60.h,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20.h),
                      SizedBox(
                        width: 226.w,
                        height: 62.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomTextButton(
                              buttonLabel: '0',
                              onTap: () {},
                              buttonHeight: 62.h,
                              buttonWidth: 144.w,
                              buttonTextSize: 32.sp,
                              buttonLabelColor: AppColors.appPictonBlueColor,
                            ),
                            CustomTextButton(
                              buttonLabel: '.',
                              onTap: () {},
                              buttonHeight: 62.h,
                              buttonWidth: 62.w,
                              buttonTextSize: 32.sp,
                              buttonLabelColor: AppColors.appPictonBlueColor,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 62.w,
                    height: 466.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomTextButton(
                          buttonLabel: 'deg',
                          onTap: () {},
                        ),
                        BlocBuilder<CalculatorBloc, CalculatorState>(
                          builder: (context, state) {
                            return CustomTextButton(
                              onTap: () {
                                context.read<CalculatorBloc>().add(const OnOperatorPressed(inputOperator: '*'));
                              },
                              buttonLabel: '✲',
                              buttonTextSize: 32.sp,
                              buttonLabelColor: AppColors.appDodgerBlue,
                              buttonBackground: AppColors.appFreshAirColor,
                              buttonWidth: 62.w,
                              buttonHeight: 62.h,
                            );
                          },
                        ),
                        CustomTextButton(
                          onTap: () {},
                          buttonLabel: '-',
                          buttonTextSize: 32.sp,
                          buttonLabelColor: AppColors.appDodgerBlue,
                          buttonBackground: AppColors.appFreshAirColor,
                          buttonWidth: 62.w,
                          buttonHeight: 60.h,
                        ),
                        CustomTextButton(
                          onTap: () {},
                          buttonLabel: '+',
                          buttonTextSize: 32.sp,
                          buttonWidth: 62.w,
                          buttonHeight: 96.h,
                          buttonLabelColor: AppColors.appDodgerBlue,
                          buttonBackground: AppColors.appFreshAirColor,
                        ),
                        CustomTextButton(
                          onTap: () {},
                          buttonLabel: '=',
                          buttonTextSize: 32.sp,
                          buttonLabelColor: AppColors.appCleanAirColor,
                          buttonWidth: 62.w,
                          buttonHeight: 96.h,
                          buttonBackground: AppColors.appSpiroDiscoBall,
                          boxShadow: [
                            BoxShadow(
                              offset: const Offset(-7, 7),
                              color: AppColors.appSpiroDiscoBall.withOpacity(0.8),
                              blurRadius: 10,
                              spreadRadius: 1,
                              blurStyle: BlurStyle.normal,
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
