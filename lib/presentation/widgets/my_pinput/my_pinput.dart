import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:test_elif/presentation/theme/app_colors.dart';
import 'package:test_elif/presentation/theme/app_fonts.dart';

class MyPinput extends StatefulWidget {
  const MyPinput({
    super.key,
  });

  @override
  State<MyPinput> createState() => _MyPinputState();
}

class _MyPinputState extends State<MyPinput> {

  final defaultPinTheme = PinTheme(
    width: 80,
    height: 70,
    textStyle: AppFonts.w400f30.copyWith(color: AppColors.textColor),
    decoration: BoxDecoration(
      color: AppColors.bgGrey,
      borderRadius: BorderRadius.circular(10),
    ),
  );

  final focusedPinTheme = PinTheme(
    width: 80,
    height: 70,
    textStyle: AppFonts.w400f30.copyWith(color: AppColors.textColor),
    decoration: BoxDecoration(
      border: Border.all(color: AppColors.main),
      borderRadius: BorderRadius.circular(10),
      color: Colors.white,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Pinput(
        defaultPinTheme: defaultPinTheme,
        focusedPinTheme: focusedPinTheme,
        length: 4,
        onChanged: (val) {},
      ),
    );
  }
}
