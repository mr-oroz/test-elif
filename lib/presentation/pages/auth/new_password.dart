import 'package:flutter/material.dart';
import 'package:test_elif/presentation/theme/app_colors.dart';
import 'package:test_elif/presentation/theme/app_fonts.dart';
import 'package:test_elif/presentation/widgets/my_buttons/app_button.dart';
import 'package:test_elif/presentation/widgets/my_pinputs/my_text_field.dart';

class NewPasswordPage extends StatefulWidget {
  const NewPasswordPage({super.key});

  @override
  State<NewPasswordPage> createState() => _NewPasswordPageState();
}

class _NewPasswordPageState extends State<NewPasswordPage> {
  final TextEditingController _newPassword = TextEditingController();
  final TextEditingController _confirmNewPassword = TextEditingController();

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
                      'Новый пароль',
                      style: AppFonts.w500f38.copyWith(
                        color: AppColors.textColor,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      'Придумайте новый пароль.',
                      style: AppFonts.w400f16.copyWith(
                        color: AppColors.textColor,
                      ),
                    ),
                    const SizedBox(height: 16),
                    MyTextField(
                      obscureText: true,
                      hintText: 'Новый пароль',
                      controller: _newPassword,
                    ),
                    const SizedBox(height: 6),
                    MyTextField(
                      obscureText: true,
                      hintText: 'Повторите пароль',
                      controller: _confirmNewPassword,
                    ),
                  ],
                ),
              ),
              const Spacer(),
              AppButton(
                textStyle: AppFonts.w500f16,
                width: double.infinity,
                height: 47,
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/sign_in_page', (route) => false);
                },
                text: 'Готово',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
