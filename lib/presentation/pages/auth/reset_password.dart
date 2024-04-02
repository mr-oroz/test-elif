import 'package:flutter/material.dart';
import 'package:test_elif/presentation/theme/app_colors.dart';
import 'package:test_elif/presentation/theme/app_fonts.dart';
import 'package:test_elif/presentation/widgets/my_buttons/app_button.dart';
import 'package:test_elif/presentation/widgets/my_text_filed/my_text_field.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({super.key});

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  final TextEditingController _phoneNumber = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      'Сброс пароля',
                      style: AppFonts.w500f38.copyWith(
                        color: AppColors.textColor,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      'Чтобы сбросить пароль, введите номер телефона:',
                      style: AppFonts.w400f16.copyWith(
                        color: AppColors.textColor,
                      ),
                    ),
                    const SizedBox(height: 16),
                    MyTextField(
                      obscureText: false,
                      hintText: 'Номер телефона',
                      controller: _phoneNumber,
                    ),
                  ],
                ),
              ),
              const Spacer(),
              AppButton(
                onPressed: () {
                  Navigator.pushNamed(
                      context, '/reset_password_verification_page');
                },
                text: 'Отправить код',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
