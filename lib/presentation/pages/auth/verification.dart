import 'package:flutter/material.dart';
import 'package:test_elif/presentation/theme/app_colors.dart';
import 'package:test_elif/presentation/theme/app_fonts.dart';
import 'package:test_elif/presentation/widgets/my_buttons/app_button.dart';
import 'package:test_elif/presentation/widgets/my_pinputs/my_pinput.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({super.key});

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Flexible(
                flex: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Регистрация',
                      style: AppFonts.w500f38.copyWith(
                        color: AppColors.textColor,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      'Мы отправили SMS с кодом на Ваш телефон или в эл.почту введите его.',
                      style: AppFonts.w400f16.copyWith(
                        color: AppColors.textColor,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const MyPinput(),
                    const SizedBox(height: 8),
                    Center(
                      child: Text(
                        'Отправить повторно через 00:55',
                        style: AppFonts.w400f14.copyWith(color: AppColors.grey),
                      ),
                    )
                  ],
                ),
              ),
              const Spacer(),
              AppButton(
                textStyle: AppFonts.w500f16,
                width: double.infinity,
                height: 47,
                onPressed: () {
                  Navigator.pushNamed(context, '/data_profile_page');
                },
                text: 'Продолжить',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
