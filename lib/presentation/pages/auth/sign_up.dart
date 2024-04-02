import 'package:flutter/material.dart';
import 'package:test_elif/presentation/theme/app_colors.dart';
import 'package:test_elif/presentation/theme/app_fonts.dart';
import 'package:test_elif/presentation/widgets/consent_text/consent_text.dart';
import 'package:test_elif/presentation/widgets/my_buttons/app_button.dart';
import 'package:test_elif/presentation/widgets/my_text_filed/my_text_field.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

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
                      'Регистрация',
                      style: AppFonts.w500f38.copyWith(
                        color: AppColors.textColor,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      'Введите электронный адрес или номер телефона и придумайте пароль.',
                      style: AppFonts.w400f16.copyWith(
                        color: AppColors.textColor,
                      ),
                    ),
                    const SizedBox(height: 16),
                    MyTextField(
                      obscureText: false,
                      hintText: 'Эл.адрес или номер телефона',
                      controller: _email,
                    ),
                    const SizedBox(height: 6),
                    MyTextField(
                      obscureText: true,
                      hintText: 'Придумайте пароль',
                      controller: _password,
                    ),
                    const SizedBox(height: 10),
                    const ConsentText()
                  ],
                ),
              ),
              const Spacer(),
              AppButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/verification_page');
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
