import 'package:flutter/material.dart';
import 'package:test_elif/presentation/theme/app_colors.dart';
import 'package:test_elif/presentation/theme/app_fonts.dart';
import 'package:test_elif/presentation/widgets/my_buttons/app_button.dart';
import 'package:test_elif/presentation/widgets/my_pinputs/my_text_field.dart';

class DataProfilePage extends StatefulWidget {
  const DataProfilePage({super.key});

  @override
  State<DataProfilePage> createState() => _DataProfilePageState();
}

class _DataProfilePageState extends State<DataProfilePage> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _username = TextEditingController();
  final TextEditingController _city = TextEditingController();

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
                      'Данные профиля',
                      style: AppFonts.w500f38.copyWith(
                        color: AppColors.textColor,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      'Заполните личные данные, чтобы иметь доступ к своим заказам и результатам в приложении',
                      style: AppFonts.w400f16.copyWith(
                        color: AppColors.textColor,
                      ),
                    ),
                    const SizedBox(height: 16),
                    MyTextField(
                      obscureText: false,
                      hintText: 'Ваше Ф.И.О.',
                      controller: _name,
                    ),
                    const SizedBox(height: 6),
                    MyTextField(
                      obscureText: false,
                      hintText: 'Придумайте имя пользователя',
                      controller: _username,
                    ),
                    const SizedBox(height: 6),
                    MyTextField(
                      obscureText: false,
                      hintText: 'Ваш город',
                      controller: _city,
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
                text: 'Сохранить',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
