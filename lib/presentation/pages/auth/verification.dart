import 'package:flutter/material.dart';
import 'package:test_elif/presentation/theme/app_colors.dart';
import 'package:test_elif/presentation/theme/app_fonts.dart';
import 'package:test_elif/presentation/widgets/my_buttons/app_button.dart';
import 'package:test_elif/presentation/widgets/single_digit_input_field/single_digit_input_field.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({super.key});

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  List<TextEditingController> controllers = [];
  List<FocusNode> focusNodes = [];
  final int inputFieldsCount = 4;

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < inputFieldsCount; i++) {
      controllers.add(TextEditingController());
      focusNodes.add(FocusNode());
    }
  }

  @override
  void dispose() {
    for (int i = 0; i < inputFieldsCount; i++) {
      controllers[i].dispose();
      focusNodes[i].dispose();
    }
    super.dispose();
  }

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
                      'Мы отправили SMS с кодом на Ваш телефон или в эл.почту введите его.',
                      style: AppFonts.w400f16.copyWith(
                        color: AppColors.textColor,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                        inputFieldsCount,
                        (index) => SingleDigitInputField(
                          controller: controllers[index],
                          focusNode: focusNodes[index],
                          nextFocusNode: index + 1 < inputFieldsCount
                              ? focusNodes[index + 1]
                              : null,
                          previousFocusNode:
                              index - 1 >= 0 ? focusNodes[index - 1] : null,
                        ),
                      ),
                    ),
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
