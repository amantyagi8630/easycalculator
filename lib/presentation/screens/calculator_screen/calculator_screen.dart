import 'package:flutter/material.dart';
import 'components/calculator_button.dart';
import 'components/calculator_button_row.dart';
import 'components/calculator_icon_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 34.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 380.h),
            const ButtonRow(
              buttons: [
                CalculatorButton(
                  label: 'Ac',
                  color: Color(0xff616161),
                ),
                CalculatorIconButton(
                  icon: Icons.backspace_outlined,
                  color: Color(0xff616161),
                ),
                CalculatorButton(
                  label: '/',
                  color: Color(0xff005DB2),
                  textColor: Color(0xff339DFF),
                  fontWeight: FontWeight.bold,
                ),
                CalculatorButton(
                  label: '✲',
                  color: Color(0xff005DB2),
                  textColor: Color(0xff339DFF),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            const ButtonRow(
              buttons: [
                CalculatorButton(label: '7'),
                CalculatorButton(label: '8'),
                CalculatorButton(label: '9'),
                CalculatorIconButton(
                  icon: Icons.remove,
                  color: Color(0xff005DB2),
                  iconColor: Color(0xff24A5FF),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            /* Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    const ButtonRow(buttons: [
                      CalculatorButton(label: '4'),
                      CalculatorButton(label: '5'),
                      CalculatorButton(label: '6'),
                    ]),
                    SizedBox(height: 20.h),
                    const ButtonRow(
                      buttons: [
                        CalculatorButton(label: '1'),
                        CalculatorButton(label: '2'),
                        CalculatorButton(label: '3'),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    /* Row(
                      children: [
                        Expanded(
                          child: CalculatorButton(
                            label: '0',
                            width: 144.w,
                          ),
                        ),
                        SizedBox(width: 20.w),
                        const CalculatorButton(label: '.'),
                      ],
                    ), */
                  ],
                ),
                SizedBox(width: 20.w),
                Column(
                  children: [
                    CalculatorButton(
                      label: '+',
                      height: 96.w,
                    ),
                    SizedBox(height: 34.h),
                    CalculatorButton(
                      label: '=',
                      color: const Color(0xff1991FF),
                      textColor: const Color(0xffB2DAFF),
                      height: 96.w,
                    ),
                  ],
                ),
              ],
            ), */
          ],
        ),
      ),
    );
  }
}
