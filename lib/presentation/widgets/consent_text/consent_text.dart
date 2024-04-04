import 'package:flutter/material.dart';
import 'package:test_elif/presentation/theme/app_colors.dart';
import 'package:test_elif/presentation/theme/app_fonts.dart';

class ConsentText extends StatefulWidget {
  const ConsentText({super.key});

  @override
  State<ConsentText> createState() => _ConsentTextState();
}

class _ConsentTextState extends State<ConsentText> {
  bool _toggle = false;
  void toggleClick() {
    setState(() {
      _toggle = !_toggle;
    });
  }

  @override
  Widget build(BuildContext context) {
    final mainColor = Theme.of(context).primaryColor;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 26,
          height: 26,
          padding: const EdgeInsets.all(2),
          decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: mainColor,
              ),
              shape: BoxShape.circle),
          child: InkWell(
            onTap: toggleClick,
            child: _toggle
                ? Container(
                    width: 26,
                    height: 26,
                    decoration: BoxDecoration(
                        color: mainColor, shape: BoxShape.circle),
                  )
                : null,
          ),
        ),
        const SizedBox(width: 6),
        RichText(
          text: TextSpan(
            text: 'Я даю согласие на',
            style: AppFonts.w400f16.copyWith(
              color: AppColors.textColor,
            ),
            children: <InlineSpan>[
              const WidgetSpan(
                child: SizedBox(
                  width: 3,
                ),
              ),
              TextSpan(
                text: 'рассылку уведомлений.',
                style: AppFonts.w400f16.copyWith(
                  color: mainColor,
                  decoration: TextDecoration.underline,
                  decorationColor: mainColor,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
