import 'package:flutter/material.dart';
import 'package:test_elif/presentation/theme/app_colors.dart';
import 'package:test_elif/presentation/theme/app_fonts.dart';

class SubscribeButton extends StatefulWidget {
  const SubscribeButton({super.key});

  @override
  State<SubscribeButton> createState() => _SubscribeButtonState();
}

class _SubscribeButtonState extends State<SubscribeButton> {
  bool _isSubscribe = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSubscribe = !_isSubscribe;
        });
      },
      child: Container(
        height: 32,
        width: 112,
        decoration: BoxDecoration(
          color: _isSubscribe ? Colors.white : Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(10),
          border: _isSubscribe ? Border.all(color: AppColors.grey) : null,
        ),
        child: Center(
          child: Text(
            _isSubscribe ? 'Вы подписаны' : 'Подписаться',
            style: AppFonts.w400f16.copyWith(
              color: _isSubscribe ? AppColors.grey : Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
