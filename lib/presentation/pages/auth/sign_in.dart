import 'package:flutter/material.dart';
import 'package:test_elif/presentation/theme/app_colors.dart';
import 'package:test_elif/presentation/theme/app_fonts.dart';
import 'package:test_elif/presentation/widgets/my_buttons/app_button.dart';
import 'package:test_elif/presentation/widgets/my_buttons/app_text_button.dart';
import 'package:test_elif/presentation/widgets/my_text_field/my_text_field.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
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
                      'Авторизоваться',
                      style: AppFonts.w500f38.copyWith(
                        color: AppColors.textColor,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      'Что-бы пользоваться сервисом на любом устройстве.',
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                                context, '/reset_password_page');
                          },
                          child: Text(
                            'забыли пароль',
                            style: AppFonts.w400f16.copyWith(
                              color: AppColors.main,
                            ),
                          ),
                        ),
                      ],
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
                  Navigator.pushNamed(context, '/home_page');
                },
                text: 'Войти',
              ),
              const SizedBox(height: 8),
              AppTextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign_up_page');
                  },
                  text: 'Регистрация'),
            ],
          ),
        ),
      ),
    );
  }
}
